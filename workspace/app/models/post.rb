class Post < ActiveRecord::Base
    # 비밀번호 6자리 이상, 어떤 아이디는 회원가입할 수 없다. 내용이 없으면 글을 쓸 수 없다. 등의 조건을 적을 수 있다.
    # has_many의 값으로 reply는 복수가 와야됨. rails는 이를 구분한다.
    has_and_belongs_to_many :tags
    has_many :replies
    belongs_to :user
    belongs_to :report
end
