defmodule InflectionsEs do
    use Application

    def start(_type, _args) do
        es = Inflector.new()

            |> Inflector.plural(Regex.compile!("$", "i"), "s")
            |> Inflector.plural(Regex.compile!("([^aeéiou])$", "i"), "\\1es")
            |> Inflector.plural(Regex.compile!("([aeiou]s)$", "i"), "\\1")
            |> Inflector.plural(Regex.compile!("z$", "i"), "ces")
            |> Inflector.plural(Regex.compile!("á([sn])$", "i"), "a\\1es")
            |> Inflector.plural(Regex.compile!("é([sn])$", "i"), "e\\1es")
            |> Inflector.plural(Regex.compile!("í([sn])$", "i"), "i\\1es")
            |> Inflector.plural(Regex.compile!("ó([sn])$", "i"), "o\\1es")
            |> Inflector.plural(Regex.compile!("ú([sn])$", "i"), "u\\1es")

            |> Inflector.singular(Regex.compile!("s$", "i"), "")
            |> Inflector.singular(Regex.compile!("es$", "i"), "")

            |> Inflector.irregular("el", "los")

        Inflections.set(:es, es)

        {:ok, self}
    end
end
