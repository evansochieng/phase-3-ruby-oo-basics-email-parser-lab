# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require "pry"

# EmailAddressParser
class EmailAddressParser
    #initialize unformatted emails as an array
    def initialize(emails)
        @emails = emails
    end

    #parse the method
    def parse
        # Criteria for split: ", " for csv | " " for white space
        formatedEmails = @emails.split(/, | /)
        #binding.pry

        #return only unique emails
        formatedEmails.uniq
    end
end

# Try it out
email_addresses = "john@doe.com person@somewhere.org"
parser = EmailAddressParser.new(email_addresses)

# parser.parse
EmailAddressParser.new("avi@test.com, avi@test.com").parse