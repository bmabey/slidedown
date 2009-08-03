!SLIDE

# Introducing slidedown

!SLIDE

# Why?

!SLIDE

# Write slides in Markdown

!SLIDE

    # Slide title
    
    !SLIDE
    
    ## A good point
    
    !SLIDE
    
    > This is the coolest thing ever.

!SLIDE

# Syntax Highlighting

!SLIDE

<pre>
  @@@ ruby
      # A rack app
      proc {
        [200, { 'Location' => '/' },
          "You are being redirected to /"
        ]
      }
  @@@
</pre>

!SLIDE

# Becomes...

!SLIDE code

@@@ ruby
    # A rack app
    proc {
      [200, { 'Location' => '/' },
        "You are being redirected to /"
      ]
    }
@@@

!SLIDE

<pre>
  @@@ js
      // Some JavaScript
      function() {
        if (1 == 2) {
          return "This is silly."
        }
      }
  @@@
</pre>

!SLIDE

# Becomes...

!SLIDE code

@@@ js
    // Some JavaScript
    function() {
      if (1 == 2) {
        return "This is silly."
      }
    }
@@@

!SLIDE

# A CSS test...

!SLIDE

@@@ css
    #fizz {
      color: #ffa;
    }

    .foo {
      text-decoration: underline;
    }
@@@

!SLIDE

# An ERb test...

!SLIDE

@@@ rhtml
    <h1>A test</h1>
    <p>
      <%= @foo.bar(:fizz => 'buzz') %>
    </p>
@@@

!SLIDE

# A Cucumber test...

!SLIDE

@@@ cucumber
    Feature: Gherkin Syntax Highlighting

    Scenario: Pretty Colors
      Given I have installed the Cucumber Pygments Lexer by Ben Mabey
      # http://github.com/bmabey/cucumber-pygments-lexer/tree/master
      And I have indented my feature properly to account for slidedown
      When I run slidedown on this slide
      Then I should see pretty syntax highling on my gherkin
@@@
