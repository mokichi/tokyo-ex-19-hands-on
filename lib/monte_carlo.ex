defmodule MonteCarlo do
  @moduledoc """
  円周率をモンテカルロ法で計算する

  1. 正方形(1.0, 1.0)内に点をランダムに生成
  2. 「生成した点」と「原点(0.0, 0.0)」の距離が1以下なら1ポイント、1より大きければ0ポイントを与える
  3. 1.2.をN回繰り返し、合計のポイントを計算
  4. 合計ポイントを4倍し、Nで割った値が円周率の近似値となる
  """

  @default_n 1_000_000

  @doc "NXを使わずに計算"
  def calc_normal(n \\ @default_n) do
    total_points =
      1..n
      |> Enum.map(fn _ ->
        x = :rand.uniform
        y = :rand.uniform
        if x * x + y * y < 1.0, do: 1, else: 0
      end)
      |> Enum.sum()
    total_points * 4 / n
  end
end