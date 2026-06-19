function Pandoc(doc)
  local blocks = pandoc.List()
  local prev_hp = false

  for _, block in ipairs(doc.blocks) do
    if block.attributes and block.attributes.type == "home-project" then
      content = '<a class="home-project" href="projects.html#' .. block.attributes.anchor .. '">'
      if prev_hp then
        content = "</a>" .. content
      end

      blocks:insert(pandoc.RawBlock("html", content))
      blocks:extend(block.content)
      prev_hp = true
    else
      if prev_hp then
        blocks:insert(pandoc.RawBlock("html", "</a>"))
      end

      blocks:insert(block)
      prev_hp = false
    end
  end

  return pandoc.Pandoc(blocks, doc.meta)
end
