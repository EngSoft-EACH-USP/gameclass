
module SessionHelper
  # Verifica se tem alguém logado no sistema.
  def is_logged?
    if session[:logged]
      true
    else
      false
    end
  end

  # Usuário atual que está logado. Caso ninguém esteja logado, nil.
  def current_user
    if is_logged?
      User.find_by id: session[:user_id]
    else
      nil
    end
  end

  # Verifica se o usuário atual é um dos tipos fornecidos
  def has_permission?(*kinds)
    user = current_user
    if user.nil?
      false
    else
      kinds.include? user.kind.to_sym
    end
  end

  # Associa um usuário à sessão, caso ninguém esteja.
  def connect(user)
    unless is_logged?
      session[:logged] = true
      session[:user_id] = user.id
    end
  end

  # Desloga quem estiver logado na sessão.
  def disconnect_user
    session[:logged] = false
    session[:user_id] = nil
  end
end
