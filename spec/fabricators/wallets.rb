Fabricator(:bitcoins, from: 'Fund') {
  fund_type Fund::BITCOINS
}

Fabricator(:wallet) {
  funds {[
          Fabricate.build(:bitcoins)

         ]}
}
