# agilelab-test

## Anagram Tester
Can find it in the anagram.rb

## Anonymous Chat
```
  # I will split 2 roles : users and admin, so we need to create 2 tables admin and user to handle it.
  Rails.application.routes.draw do
    resources :users do
      resources :rooms only: [:create] do
        member do
          post: 'rooms' to: users#create_room
        end
      end
      resources :message only: [:create]
    end

    resources :admins do
      resources :rooms only: [:delete] do
        member do
         put: 'seen' to: admins#seen_room
         delete: 'delete' to: admins#delete_room
        end
      end

      resources :messages do
        post: 'send' to: admins#send_message
      end
    end
  end
```

## Bug Fixing
  Step 1: What exactly is the problem?
- If Im talking to someone or email with them, I listen and read carefully what he/she describes this issue. When they are done, ask them some yes/no questions or can be answered quantifiably ( How many times did it happen?). It makes clearly and reduce ambiguous responses.
- The key word is to find out the "who, what and happen" of the problem and staking the impact areas of this issue. Does it affect to one or many people? Are they use the old PC or operator? ...
- When you understand the issue, try repeating your understanding the problem so that your are both one the same mind as to what's wrong. Avoid to use complex technical. Ideally, this will help remove confusion related to the issue.
- Now you already have have a basic understanding of what the issue related, you can look into the technical details that figure out the solutions.

 Step 2: Gather more details
 In many instances, what was reported as general issue is actually something very particular. Best way to find it is asking them those pertinent questions such as:
- Error messages: If the user reports one or you’re present to check for one, they can point you in the right direction as to why a failure occurred.
- Event logs: Do they exist, and if so, what exactly do they say? In addition to error messages, logs often provide a timestamp so you can answer the question of when exactly events happened.
- Monitoring: you can a third-party that can offer more clues or predict issues before they occur? such as: AWS Cloud Watch and you can jump to it in order to monitor.

Step 3: Reproduce the problem, develop hypothesis of root cause
-  Reproducing an issue simply means verifying you can recreate the same error the user reported.
- Once you encounter the same error(s), you can more easily develop theories as to the root cause based on what you observe, then start taking steps to fix the issue.
- At this phase, a deep understanding of how computers work will prove… useful. 

Step 4: Attempt a fix based on findings
- The evidence you’ve already gathered should have narrowed down possible root causes and positioned you to fix the issue.
- If you can fix it and did not have the experiences with this problem, you should work around and discuss with somebody who resolved this one and take more advise from them.

- No matter what the underlying tech problems are the process outlined above works well for gathering info, identifying possible causes of the issue, and getting to a solution no matter what issue you’re dealing with. But you’ll still have to make judgment calls depending on each unique case. And to be avoid proactive in avoiding future crises.

## Taking over an old project

- Ask for Documentation: It’s imperative that you ask for comprehensive code documents related to the project. What did you have or lack of something? You have to stress the importance of this information as it can be the difference between seamlessly navigating through modules or spending countless hours trying to decipher what is already been done.

- Meeting with client: It will make business of project clearly and figure out the deeply business.

- Meeting with developer team: Make sure the business fit with code handled and find out the technical issues. If the old project have the previous issues, gather and try to get more solutions from team member.

- Set up the Guidelines: With the code documentation, it’s also important that you’re provided with the environment setup guidelines. This can even come in the form of a single README file as long as the explanation is clear and sufficient for setting up the development environment on a new machine.

Additionally, make sure that you also get a list of dependencies from the former team to get the code up and running.

- Conduct a Code walk around with the Previous Team: It can save you a lot of time and reduce headaches if you request code walk around sessions with the previous team. For example, you can ask the project lead to walk you through the entire codebase and point out the sections that will require your close attention.


- Request Support from the Previous Team: For the first two to four weeks, you will need some support from the previous development team. So make sure that they can have someone available to answer your questions as they come up.

If you follow the steps listed above, taking over an existing software project can be a painless experience


