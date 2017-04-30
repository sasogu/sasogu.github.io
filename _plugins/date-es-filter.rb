module DateEsFilter
    def date_es(input)
        date = input.to_s.split(" ")[0].split("-")

        day = date[2]
        month = date[1]
        year = date[0]

        month = case month.to_i
        when 1
            "de gener"
        when 2
            "de febrer"
        when 3
            "de març"
        when 4
            "d'abril"
        when 5
            "de maig"
        when 6
            "de juny"
        when 7
            "de juliol"
        when 8
            "d'agost"
        when 9
            "de setembre"
        when 10
            "d'octubre"
        when 11
            "de novembre"
        when 12
            "de desembre"
        end

        "<time datetime=\"#{input}\">#{day} #{month} del #{year}</time>"
    end
end

Liquid::Template.register_filter(DateEsFilter)
