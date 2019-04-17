=begin

The following list contains the names of individuals who are pioneers in the field of computing or that have had a significant influence on the field. The names are in an encrypted form, though, using a simple (and incredibly weak) form of encryption called Rot13.

Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unvog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu
Write a program that deciphers and prints each of these names .

=end

class Decrypt
  CIPHER = ('a'..'z').to_a.freeze
  
  attr_reader :encrypted, :decrypted
  
  def initialize(encrypted)
    @encrypted = encrypted
    @decrypted = []
  end
  
  def decrypt
    encrypted.each_with_index do |name, ind|
      decrypted[ind] = ''
      name.each_char do |char|
        if CIPHER.include?(char.downcase)
          decrypted[ind] += CIPHER[(CIPHER.index(char.downcase) + 13) % 26]
        else
          decrypted[ind] += char
        end
      end
    end
  end
  
  def print_decrypted
    decrypted.each { |name| puts name }
  end
end

names = []

names << "Nqn Ybirynpr"
names << "Tenpr Ubccre"
names << "Nqryr Tbyqfgvar"
names << "Nyna Ghevat"
names << "Puneyrf Onoontr"
names << "Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv"
names << "Wbua Ngnanfbss"
names << "Ybvf Unvog"
names << "Pynhqr Funaaba"
names << "Fgrir Wbof"
names << "Ovyy Tngrf"
names << "Gvz Orearef-Yrr"
names << "Fgrir Jbmavnx"
names << "Xbaenq Mhfr"
names << "Fve Nagbal Ubner"
names << "Zneiva Zvafxl"
names << "Lhxvuveb Zngfhzbgb"
names << "Unllvz Fybavzfxv"
names << "Tregehqr Oynapu"
  
pioneers = Decrypt.new(names)

pioneers.decrypt
pioneers.print_decrypted