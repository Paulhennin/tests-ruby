def translate(str)
    # voyelles
    vowels = ["a", "e", "i", "o", "u"]

    # Cas spéciaux a prendre en compte
    two_letter_consonants = ["ch", "sh", "qu", "th", "br"]
    three_letter_consonants = ["thr", "sch", "squ"]

    # séparer chaques mots de la phrase donnée
    words = str.split(" ")

    #Tableau ou on envoie le résultat
    result = [];

    words.each do |word|
        # If pour les mots qui commnencent par une voyelle
        if vowels.include? word[0]
            result.push word << 'ay'

        # Else pour les mots qui commencent par une consonne
        else
            # test pour cas spéciaux de consonnes
            if three_letter_consonants.include? word[0] + word[1] + word[2]
                # déplacer les 3 première lettres
                first_three_letters = word.slice!(0,3)

                # ajouter ay
                result.push word << first_three_letters << 'ay'

                #on fait pareil avec les cas particulier de 2 lettres
            elsif  two_letter_consonants.include? word[0] + word[1]
                first_two_letters = word.slice!(0,2)
                result.push word << first_two_letters << 'ay'

                #et ici pour la première lettre en consonne
            else
                first_letter = word.slice!(0)
                result.push word << first_letter << 'ay'
            end
        end
    end
    # on remet chaque mots ensemble sous la forme d'une seule chaine.
    return result.join(" ")
end
