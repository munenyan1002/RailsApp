class PeopleController < ApplicationController
  def index
    @msg = 'Person data.'
    @data = Person.all
  end

  def show
    @msg = "Indexed data."
    @data = Person.find(params[:id])
  end

  def add
    @msg = 'add new data.'
    @person = Person.new
  end
 

  def create
    if request.post? then
      Person.create(person_params)
    end
    redirect_to '/people'
  end

  def edit
    @msg = "edit data.[id = " + params[:id] + "]"
    @person = Person.find(params[:id])
  end

  def update
    #送られたIDを元にデータベースから更新するデータをモデルのオブジェクトとして取り出す。
    obj = Person.find(params[:id])
    #オブジェクトの値を更新する
    obj.update(person_params)
    #リダイレクトで「/people」に戻る
    redirect_to '/people'
  end

  def delete
    obj = Person.find(params[:id])
    obj.destroy
    redirect_to '/people'
  end

  private
  def person_params
    params.require(:person).permit(:name, :age, :mail)
  end

end
