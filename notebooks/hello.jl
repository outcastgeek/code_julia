### A Pluto.jl notebook ###
# v0.12.21

using Markdown
using InteractiveUtils

# ╔═╡ e1afd90c-7594-11eb-2738-2551799bdcea
using VegaLite, DataFrames, Query, VegaDatasets

# ╔═╡ 476b4810-7595-11eb-3c93-618fe1364786
cars = dataset("cars")

# ╔═╡ 54b2b76c-7595-11eb-36b1-cdb5851dfb07
cars |> @select(:Acceleration, :Name) |> collect

# ╔═╡ 82514288-7595-11eb-0268-e3e5cfb72ddc
function foo(data, origin)
    df = data |> @filter(_.Origin==origin) |> DataFrame
    
    return df |> @vlplot(:point, :Acceleration, :Miles_per_Gallon)
end

# ╔═╡ 8707c7d4-7595-11eb-27b2-dd31906a13b9
p = foo(cars, "USA")

# ╔═╡ 992e8ff6-7595-11eb-0a6e-596def39ca9d
p |> save("foo.png")

# ╔═╡ a93d61b0-7595-11eb-0982-3d302e8e7e7d


# ╔═╡ Cell order:
# ╠═e1afd90c-7594-11eb-2738-2551799bdcea
# ╠═476b4810-7595-11eb-3c93-618fe1364786
# ╠═54b2b76c-7595-11eb-36b1-cdb5851dfb07
# ╠═82514288-7595-11eb-0268-e3e5cfb72ddc
# ╠═8707c7d4-7595-11eb-27b2-dd31906a13b9
# ╠═992e8ff6-7595-11eb-0a6e-596def39ca9d
# ╠═a93d61b0-7595-11eb-0982-3d302e8e7e7d
