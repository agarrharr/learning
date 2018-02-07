runtime! plugin/myPlugin.vim

describe 'vspec'
  before
    new
    put! = 'Welcome to Vimcasts'
  end

  after
    close!
  end

  it 'can read the contents of the buffer'
    Expect getline(1) == "Welcome to Vimcasts"
  end

  it 'feels just like operating Vim!'
    normal gg$
    normal daw
    Expect getline(1) == 'Welcome to'
    Expect getreg('"') == ' Vimcasts'
  end

  it 'can exercise user-defined mappings'
    normal gg$
    normal x
    Expect getline(1) == 'Welcome to'
    Expect getreg('"') == ' Vimcasts'
  end
end
