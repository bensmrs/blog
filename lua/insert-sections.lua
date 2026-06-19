function Pandoc(doc)
  local blocks = pandoc.List()
  local in_section = false

  for _, block in ipairs(doc.blocks) do
    if block.t == "Header" and block.level == 1 then
      if in_section then
        blocks:insert(pandoc.RawBlock("html", "</section>"))
      end

      section = "<section"
      if #block.classes > 0 then
        section = section .. ' class="' .. table.concat(block.classes, " ") .. '"'
      end

      section = section .. ">"
      blocks:insert(pandoc.RawBlock("html", section))
      in_section = true
      block.classes = {}
    end

    if block.text and block.text:match("^<!%-%-%s*(.-)%s*%-%->$") == "section:close" then
      blocks:insert(pandoc.RawBlock("html", "</section>"))
      in_section = false
    else
      blocks:insert(block)
    end
  end

  if in_section then
    blocks:insert(pandoc.RawBlock("html", "</section>"))
  end

  return pandoc.Pandoc(blocks, doc.meta)
end
