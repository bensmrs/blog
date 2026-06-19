function Div(el)
  if el.attributes.type ~= "cvitem" then
    return el
  end

  local blocks = pandoc.List()

  prelude = '<div class="cvitem'
  if el.attributes.twocols then
    prelude = prelude .. " twocols"
  end

  if el.attributes.height or el.attributes.medheight or el.attributes.smallheight then
    prelude = prelude .. '" style="'
    if el.attributes.height then
      prelude = prelude .. "--height:" .. el.attributes.height .. "px;"
    end

    if el.attributes.medheight then
      prelude = prelude .. "--med-height:" .. el.attributes.medheight .. "px;"
    end

    if el.attributes.smallheight then
      prelude = prelude .. "--small-height:" .. el.attributes.smallheight .. "px;"
    end
  end

  prelude = prelude .. '"><img src="img/' .. el.attributes.image .. '"><div class="position"><span class="company">' .. el.attributes.company .. "</span>"
  if el.attributes.subcompany then
    prelude = prelude .. '<span class="subcompany">' .. el.attributes.subcompany .. "</span>"
  end

  prelude = prelude .. '<span class="title">' .. el.attributes.title .. '</span></div><div class="situation"><span class="location'
  if el.attributes.mask then
    prelude = prelude .. " mask"
  end

  prelude = prelude .. '">' .. el.attributes.location .. '</span><div class="period">' .. el.attributes.period .. "</div></div>"
  blocks:insert(pandoc.RawBlock("html", prelude))
  blocks:extend(el.content)
  blocks:insert(pandoc.RawBlock("html", "</div>"))
  return blocks
end
