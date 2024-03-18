def dna_to_rna(dna_sequence)
  rna_sequence = ""

  dna_sequence.each_char do |nucleotide|
    case nucleotide
    when 'G'
      rna_sequence << 'C'
    when 'C'
      rna_sequence << 'G'
    when 'T'
      rna_sequence << 'A'
    when 'A'
      rna_sequence << 'U'
    end
  end

  return rna_sequence
end

# Example usage:
dna_strand = "GCTA"
rna_strand = dna_to_rna(dna_strand)
puts "RNA complement: #{rna_strand}"
