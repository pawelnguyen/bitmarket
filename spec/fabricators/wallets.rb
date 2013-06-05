Fabricator(:bitcoins, from: 'Fund') {
  fund_type Fund::BITCOINS
  balance 100
}

Fabricator(:wallet) {
  funds { [Fabricate.build(:bitcoins)] }
}
