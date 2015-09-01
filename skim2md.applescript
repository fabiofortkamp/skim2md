set stringToWrite to ""

tell application "Skim"
	
	tell document 1
		
		-- with suggestions from http://jones.kaist.edu/notebook/2012/09/an-academic-notetaking-workflow.html#fn:Link%20to%20skimmer%20post
		set numberOfPages to count its pages
		
		set firstPage to "1" as number
		set lastPage to numberOfPages
		
		set docname to its name
		
		set stringToWrite to "Title: " & docname & "
"
		
		repeat with currentPage from firstPage to lastPage
			
			set notesList to notes of page currentPage
			repeat with thisNote in notesList
				
				set pageNumber to the index of thisNote's page
				
				set noteText to ""
				
				if thisNote's type is highlight note then
					
					repeat with noteParagraph in thisNote's text's paragraphs
						
						set noteText to " > " & noteParagraph & "
"
						
					end repeat
					
				else if thisNote's type is text note or thisNote's type is anchored note then
					
					set noteText to thisNote's text
					
					
					
				end if
				
				set stringToWrite to stringToWrite & "
" & "Page " & pageNumber & ":" & "
" & noteText & "
"
			end repeat
			
		end repeat
		
		
	end tell
end tell
stringToWrite

--TODO
-- * generate metadata - format string?
-- * generate ID
-- * save string to file
-- * where to put it? Service?
