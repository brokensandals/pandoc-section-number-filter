local current_by_level = {0, 0, 0, 0}

function Header(hdr)
  for i=hdr.level+1,#current_by_level do
    current_by_level[i] = 0
  end
  current_by_level[hdr.level] = current_by_level[hdr.level] + 1
  secnum = ""
  for i=1,hdr.level do
    secnum = secnum .. tostring(current_by_level[i]) .. "."
  end
  table.insert(hdr.content, 1, secnum .. " ")
  return hdr
end
