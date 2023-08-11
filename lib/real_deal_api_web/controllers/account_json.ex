defmodule RealDealApiWeb.AccountJSON do
  alias RealDealApi.Accounts.Account
  alias RealDealApiWeb.UserJSON

  @doc """
  Renders a list of accounts.
  """
  def index(%{accounts: accounts}) do
    %{data: for(account <- accounts, do: data(account))}
  end

  @doc """
  Renders a single account.
  """
  def show(%{account: account}) do
    %{data: full_account(account)}
  end

  defp data(%Account{} = account) do
    %{
      id: account.id,
      email: account.email,
      hashed_password: account.hashed_password
    }
  end

  defp full_account(%Account{} = account) do
    %{
      id: account.id,
      email: account.email,
      user: UserJSON.data(%{user: account.user})
    }
  end

  def account(%{account: account, token: token}) do
    %{
      id: account.id,
      email: account.email,
      token: token
    }
  end
end
