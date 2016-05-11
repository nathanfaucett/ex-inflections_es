defmodule InflectionsEsTest do
    use ExUnit.Case
    doctest InflectionsEs

    test "should singularize words" do
        inflector = Inflections.get(:es)

        assert Inflector.singularize(inflector, "libros") == "libro"
        assert Inflector.singularize(inflector, "radios") == "radio"
        assert Inflector.singularize(inflector, "señores") == "señor"
        assert Inflector.singularize(inflector, "leyes") == "ley"
    end

    test "should pluralize words" do
        inflector = Inflections.get(:es)

        assert Inflector.pluralize(inflector, "libro") == "libros"
        assert Inflector.pluralize(inflector, "radio") == "radios"
        assert Inflector.pluralize(inflector, "señor") == "señores"
        assert Inflector.pluralize(inflector, "ley") == "leyes"
    end
end
