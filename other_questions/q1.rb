require 'Set'

def gen_card()
    card = Array.new(5) { Array.new(5) }
    card.each_with_index do |row, i|
        row.each_index do |j|
            card[i][j] = rand(100)
        end
    end
    card
end

def gen_n_cards(n)
    result = []
    cols = Set.new()
    while n > 0
        card = gen_card()
        col_elements = []
        i = 0
        while i < 5
          j = 0
            while j < 5
                col_elements.push(card[j][i])
                j += 1
            end
            col_str = col_elements.join(",")
            col_elements = []
            if cols.include?(col_str)
                break
            elsif i == 4 && !cols.include?(col_str)
                cols.add(col_str)
                result.push(card)
                n -= 1
            else
                cols.add(col_str)
            end
            i += 1
        end
    end

    result
end
