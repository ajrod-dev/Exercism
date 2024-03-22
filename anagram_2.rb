def is_anagram(word1, word2):
    """
    Check if two words are anagrams of each other.
    """
    return sorted(word1.lower()) == sorted(word2.lower())

def find_anagrams(target, candidates):
    """
    Find the anagrams of the target word in the list of candidates.
    """
    anagram_set = []
    for candidate in candidates:
        if is_anagram(target, candidate) and target.lower() != candidate.lower():
            anagram_set.append(candidate)
    return anagram_set

# Example usage:
target_word = "stone"
candidate_words = ["stone", "tones", "banana", "tons", "notes", "Seton"]
anagrams = find_anagrams(target_word, candidate_words)
print("Anagram set:", anagrams)
