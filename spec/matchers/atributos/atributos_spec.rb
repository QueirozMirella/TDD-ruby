require 'pessoa'

describe 'Atributos' do

	before(:context) do 
		puts ">>>>>>>>>> ANTES DE TODOS OS TESTES"
	end

	after(:all) do 
		puts ">>>>>>>>>> DEPOIS DE TODOS OS TESTES"
	end

	#before(:each) do 
	#	@pessoa = Pessoa.new
	#end

	#after(:each) do 
	#	@pessoa.nome = "Sem nome!"
	#	puts ">>>> #{@pessoa.inspect}"
	#end

	around(:each) do |teste|
		puts "ANTES"
		@pessoa = Pessoa.new

		teste.run

		@pessoa.nome = "Sem nome!"
		puts "DEPOIS >>>>>>>>>>> #{@pessoa.inspect}"
	end

	it 'have_attributes' do 
		@pessoa.nome = "Jackson"
		@pessoa.idade = 20
		expect(@pessoa).to have_attributes(nome: starting_with("J")), idade: (a_value >= (20))
	end

	it 'have_attributes' do 
		@pessoa.nome = "Jose"
		@pessoa.idade = 25
		expect(@pessoa).to have_attributes(nome: starting_with("J")), idade: (a_value >= (20))
	end
end