class WalletFactory
  def self.default
    Wallet.new do |wallet|
      wallet.build_bitcoins(fund_type: Fund::BITCOINS)
    end
  end
end
