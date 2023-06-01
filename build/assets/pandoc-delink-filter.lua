-- Pandoc filter to remove hyperlinks from Pandoc output for the GigaScience DOCX submission.
-- https://github.com/greenelab/connectivity-search-manuscript/issues/49

function isInternalLink (target)
    return target:sub(1,1) == "#"
end


function isInReferences (attr)
    -- BROKEN: this does not seem to return true when in the references section
    -- WORKAROUND: run this filter before the citeproc filter.
    return attr and attr.includes and attr.includes:find("refs") ~= nil
end


function Link(el)
    -- Only remove in DOCX.
    if not FORMAT:match 'docx' then
        return el
    -- Don't remove internal cross-references (including citation links) or links in References.
elseif isInternalLink(el.target) or isInReferences(el.attr) then
        return el
    else
        -- For all other links, replace link with its content
        return el.content
    end
end