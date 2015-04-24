require('rspec')
require('word_frequency')

# describe('String#word_frequency') do
#  it("returns a target word from a string input by the user") do
#    expect(("Epicodus is a super awesome way to learn how to become a super coder.").word_frequency("super")).to(eq("super"))
#  end
#end

#describe('String#word_frequency') do
#  it("returns an array of all the words from the user input sentence that match the target word") do
#    expect(("Epicodus is a super awesome way to learn how to become a super coder.").word_frequency("super")).to(eq(["super", "super"]))
#  end
#end

describe('String#word_frequency') do
  it("returns a count of how many times a target word appears in a user's string") do
    expect(("Epicodus is a super awesome way to learn how to become a super coder.").word_frequency("super")).to(eq(2))
  end
end
