function Div(el)
  if el.attributes.type ~= "photo" then
    return el
  end

  local blocks = pandoc.List()
  prelude = '<div class="photo"><img src="pic/' .. el.attributes.image .. '" alt="' .. el.attributes.location .. ', ' .. el.attributes.date .. '"><div class="about'
  if el.attributes.narrow then
    prelude = prelude .. " narrow"
  end

  prelude = prelude .. '"><span class="date">' .. el.attributes.date .. '</span><span class="location">' .. el.attributes.location .. '</span>'
  blocks:insert(pandoc.RawBlock("html", prelude))
  blocks:extend(el.content)
  postlude = '<footer class="' .. el.attributes.rig
  if el.attributes.rnarrow then
    postlude = postlude .. " narrow"
  end

  postlude = postlude .. '"></footer><a class="download'
  if el.attributes.dnarrow then
    postlude = postlude .. " narrow"
  end

  postlude = postlude .. '" href="pic/' .. el.attributes.image .. '"></a></div></div>'
  blocks:insert(pandoc.RawBlock("html", postlude))
  return blocks
end
