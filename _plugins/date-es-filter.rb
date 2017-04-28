module DateEsFilter
    def date_es(input)
        date = input.to_s.split(" ")[0].split("-")

        day = date[2]
        month = date[1]
        year = date[0]

        month = case month.to_i
        when 1
            "gener"
        when 2
            "febrer"
        when 3
            "març"
        when 4
            "abril"
        when 5
            "mayo"
        when 6
            "junio"
        when 7
            "julio"
        when 8
            "agosto"
        when 9
            "septiembre"
        when 10
            "octubre"
        when 11
            "noviembre"
        when 12
            "diciembre"
        end

        "<time datetime=\"#{input}\">#{day} de #{month} del #{year}</time>"
    end
end

Liquid::Template.register_filter(DateEsFilter)
