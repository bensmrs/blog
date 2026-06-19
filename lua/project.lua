function Div(el)
  if el.attributes.type ~= "project" then
    return el
  end

  local blocks = pandoc.List()
  prelude = '<div class="project">'
  if el.attributes.image then
    prelude = prelude .. '<aside><img src="img/' .. el.attributes.image .. '"></aside>'
  end

  prelude = prelude .. '<div class="content"><h2 id="' .. pandoc.structure.unique_identifier(el.attributes.name) .. '"'
  if el.attributes.kernminus then
    prelude = prelude .. ' class="kernminus"'
  end

  prelude = prelude .. ">" .. el.attributes.name .. "</h2>"
  if el.attributes.website then
    prelude = prelude .. '<a class="website" href="https://' .. el.attributes.website .. '">' .. el.attributes.website .. '</a>'
  end

  if el.attributes.github then
    prelude = prelude .. '<a class="website github" href="https://github.com/' .. el.attributes.github .. '">' .. el.attributes.github .. '</a>'
  end

  if el.attributes.github2 then
    prelude = prelude .. '<a class="and website" href="https://github.com/' .. el.attributes.github2 .. '">' .. el.attributes.github2:match("/.*") .. '</a>'
  end

  if el.attributes.github3 then
    prelude = prelude .. '<a class="and website" href="https://github.com/' .. el.attributes.github3 .. '">' .. el.attributes.github3:match("/.*") .. '</a>'
  end

  if el.attributes.github4 then
    prelude = prelude .. '<a class="and website" href="https://github.com/' .. el.attributes.github4 .. '">' .. el.attributes.github4:match("/.*") .. '</a>'
  end

  blocks:insert(pandoc.RawBlock("html", prelude))
  blocks:extend(el.content)
  postlude = '</div></div>'
  if el.attributes.maturity and el.attributes.reliability and el.attributes.fieldtesting then
    postlude = '<div class="grades"><span class="grade">Maturity<span class="' .. el.attributes.maturity:sub(1,1) .. '">' .. el.attributes.maturity .. '</span></span><span class="grade">Reliability<span class="' .. el.attributes.reliability:sub(1,1) .. '">' .. el.attributes.reliability .. '</span></span><span class="grade">Field-testing<span class="' .. el.attributes.fieldtesting:sub(1,1) .. '">' .. el.attributes.fieldtesting .. '</span></span></div>' .. postlude
  end

  blocks:insert(pandoc.RawBlock("html", postlude))
  return blocks
end
