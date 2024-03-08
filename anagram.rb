def find_anagrams(target, candidates)
  # Convert target word to downcase and sort its characters alphabetically
  sorted_target = target.downcase.chars.sort.join

  # Initialize an empty array to store anagrams
  anagrams = []

  # Iterate through each candidate word
  candidates.each do |candidate|
    # Convert candidate word to downcase and sort its characters alphabetically
    sorted_candidate = candidate.downcase.chars.sort.join

    # Check if sorted_candidate is equal to sorted_target
    if sorted_candidate == sorted_target
      # If they are equal, add the candidate word to the anagram set
      anagrams << candidate
    end
  end

  # Return the anagram set
  anagrams
end

# Example usage:
target_word = "stone"
candidate_words = ["stone", "tones", "banana", "tons", "notes", "Seton"]
puts "Anagram set for '#{target_word}': #{find_anagrams(target_word, candidate_words)}"


def find_anagrams(target, candidates)
  sorted_target = target.downcase.chars.sort.join
  anagrams = []

  candidates.each do |candidate|
    sorted_candidate = candidate.downcase.chars.sort.join

    anagrams << candidate if sorted_candidate == sorted_target
  end

  anagrams
end

# Example usage:
target_word = "stone"
candidate_words = ["stone", "tone

