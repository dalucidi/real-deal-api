defmodule RealDealApiWeb.UserJSON do
  alias RealDealApi.Users.User

  @doc """
  Renders a list of users.
  """
  def index(%{users: users}) do
    %{data: for(user <- users, do: data(user))}
  end

  @doc """
  Renders a single user.
  """
  def show(%{user: user}) do
    %{data: data(user)}
  end

  def data(%{user: user}) do
    %{
      id: user.id,
      full_name: user.full_name,
      gender: user.gender,
      biography: user.biography
    }
  end

  def data(%User{} = user) do
    %{
      id: user.id,
      full_name: user.full_name,
      gender: user.gender,
      biography: user.biography
    }
  end

  def user(%{user: user, token: token}) do
    %{
      id: user.id,
      token: token
    }
  end
end
