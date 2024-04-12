import 'package:flutter/material.dart';

String getSource(String id) {
  return """
    query getSource(\$id:ID!){
      source(id:\$id) {
        name
        tag
        category
        password
        description
        isHidden
        user {
          id
          username
        }
      } 
    }
  """;
}

String login() {
  return '''
          mutation login(\$username:String!,\$password:String!){
            login(username:\$username,password:\$password){
              token
              payload
              refreshToken  
            }  
          }
  ''';
}

String register() {
  return '''
          mutation Register(\$password:String!,\$username:String!){
            register(password:\$password , username:\$username){
              refreshToken
              token
            }
          }
  ''';
}

String createSource() {
  return '''
          mutation createSource(\$name: String!, \$password: String!, \$tag: String!, \$description: String!) {
              createSource(
                   name: \$name
                   password: \$password
                   tag: \$tag
                   description: \$description
                 ) {
                   source {
                      id
                      name
                      category
                      user {
                        id
                        username
                      }
                   }
                 }
          }
  ''';
}

String editSource() {
  return '''
          mutation EditSource(
            \$id: ID!,
            \$name: String!,
            \$password: String!,
            \$tag: String!,
            \$description: String!
          ) {
            editSource(
              id: \$id,
              name: \$name,
              password: \$password,
              tag: \$tag,
              description: \$description
            ) {
              id
              name
              category
              user {
                id
                username
              }
            }
          }
  ''';
}

String deleteSource() {
  return '''
          mutation DeleteSource(\$id: ID!) {
            deleteSource(id: \$id) {
              id
            }
          }
  ''';
}

