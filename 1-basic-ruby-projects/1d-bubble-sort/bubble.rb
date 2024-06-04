# Daniel Fletcher
# The Odin Project: Ruby
# Bubble Sort


def bubble_sort(values)
    in_order = false

    until in_order
        in_order = true
        for i in (0...values.size - 1) do
            if values[i] > values[i + 1]
                values[i], values[i + 1] = values[i + 1], values[i]
                in_order = false
            end
        end
    end

    values
end