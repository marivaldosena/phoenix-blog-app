defmodule Phblog.Comment do
  use Phblog.Web, :model

  schema "comments" do
    field :body, :string
    belongs_to :post, Phblog.Post

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:body])
    |> validate_required([:body])
  end
end
