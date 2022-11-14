class ClintsController < ApplicationController
  def index
  phones = params.fetch(:phones, nil)
  @clints = Clint.with_phones(phones).all
  end
end
