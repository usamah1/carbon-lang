// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE
// RUN: %{carbon-run-parser}
// CHECK:STDOUT: [
// CHECK:STDOUT: {node_index: 64, kind: 'FunctionDefinition', text: '}', subtree_size: 65, children: [
// CHECK:STDOUT:   {node_index: 12, kind: 'FunctionDefinitionStart', text: '{', subtree_size: 13, children: [
// CHECK:STDOUT:     {node_index: 0, kind: 'FunctionIntroducer', text: 'fn'},
// CHECK:STDOUT:     {node_index: 1, kind: 'DeclaredName', text: 'F'},
// CHECK:STDOUT:     {node_index: 11, kind: 'ParameterList', text: '(', subtree_size: 10, children: [
// CHECK:STDOUT:       {node_index: 5, kind: 'PatternBinding', text: ':', subtree_size: 4, children: [
// CHECK:STDOUT:         {node_index: 2, kind: 'DeclaredName', text: 'p'},
// CHECK:STDOUT:         {node_index: 4, kind: 'PostfixOperator', text: '*', subtree_size: 2, children: [
// CHECK:STDOUT:           {node_index: 3, kind: 'Literal', text: 'i32'}]}]},
// CHECK:STDOUT:       {node_index: 6, kind: 'ParameterListComma', text: ','},
// CHECK:STDOUT:       {node_index: 9, kind: 'PatternBinding', text: ':', subtree_size: 3, children: [
// CHECK:STDOUT:         {node_index: 7, kind: 'DeclaredName', text: 'n'},
// CHECK:STDOUT:         {node_index: 8, kind: 'Literal', text: 'i32'}]},
// CHECK:STDOUT:       {node_index: 10, kind: 'ParameterListEnd', text: ')'}]}]},
// CHECK:STDOUT:   {node_index: 20, kind: 'VariableDeclaration', text: 'var', subtree_size: 8, children: [
// CHECK:STDOUT:     {node_index: 16, kind: 'PatternBinding', text: ':', subtree_size: 4, children: [
// CHECK:STDOUT:       {node_index: 13, kind: 'DeclaredName', text: 'q'},
// CHECK:STDOUT:       {node_index: 15, kind: 'PostfixOperator', text: '*', subtree_size: 2, children: [
// CHECK:STDOUT:         {node_index: 14, kind: 'Literal', text: 'i32'}]}]},
// CHECK:STDOUT:     {node_index: 18, kind: 'VariableInitializer', text: '=', subtree_size: 2, children: [
// CHECK:STDOUT:       {node_index: 17, kind: 'NameReference', text: 'p'}]},
// CHECK:STDOUT:     {node_index: 19, kind: 'DeclarationEnd', text: ';'}]},
// CHECK:STDOUT:   {node_index: 28, kind: 'VariableDeclaration', text: 'var', subtree_size: 8, children: [
// CHECK:STDOUT:     {node_index: 23, kind: 'PatternBinding', text: ':', subtree_size: 3, children: [
// CHECK:STDOUT:       {node_index: 21, kind: 'DeclaredName', text: 't'},
// CHECK:STDOUT:       {node_index: 22, kind: 'NameReference', text: 'Type'}]},
// CHECK:STDOUT:     {node_index: 26, kind: 'VariableInitializer', text: '=', subtree_size: 3, children: [
// CHECK:STDOUT:       {node_index: 25, kind: 'PostfixOperator', text: '*', subtree_size: 2, children: [
// CHECK:STDOUT:         {node_index: 24, kind: 'Literal', text: 'i32'}]}]},
// CHECK:STDOUT:     {node_index: 27, kind: 'DeclarationEnd', text: ';'}]},
// CHECK:STDOUT:   {node_index: 34, kind: 'ExpressionStatement', text: ';', subtree_size: 6, children: [
// CHECK:STDOUT:     {node_index: 33, kind: 'InfixOperator', text: '=', subtree_size: 5, children: [
// CHECK:STDOUT:       {node_index: 29, kind: 'NameReference', text: 't'},
// CHECK:STDOUT:       {node_index: 32, kind: 'PostfixOperator', text: '*', subtree_size: 3, children: [
// CHECK:STDOUT:         {node_index: 31, kind: 'PostfixOperator', text: '*', subtree_size: 2, children: [
// CHECK:STDOUT:           {node_index: 30, kind: 'NameReference', text: 't'}]}]}]}]},
// CHECK:STDOUT:   {node_index: 40, kind: 'ExpressionStatement', text: ';', subtree_size: 6, children: [
// CHECK:STDOUT:     {node_index: 39, kind: 'InfixOperator', text: '=', subtree_size: 5, children: [
// CHECK:STDOUT:       {node_index: 35, kind: 'NameReference', text: 'n'},
// CHECK:STDOUT:       {node_index: 38, kind: 'InfixOperator', text: '*', subtree_size: 3, children: [
// CHECK:STDOUT:         {node_index: 36, kind: 'NameReference', text: 'n'},
// CHECK:STDOUT:         {node_index: 37, kind: 'NameReference', text: 'n'}]}]}]},
// CHECK:STDOUT:   {node_index: 47, kind: 'ExpressionStatement', text: ';', subtree_size: 7, children: [
// CHECK:STDOUT:     {node_index: 46, kind: 'InfixOperator', text: '=', subtree_size: 6, children: [
// CHECK:STDOUT:       {node_index: 41, kind: 'NameReference', text: 'n'},
// CHECK:STDOUT:       {node_index: 45, kind: 'InfixOperator', text: '*', subtree_size: 4, children: [
// CHECK:STDOUT:         {node_index: 42, kind: 'NameReference', text: 'n'},
// CHECK:STDOUT:         {node_index: 44, kind: 'PrefixOperator', text: '*', subtree_size: 2, children: [
// CHECK:STDOUT:           {node_index: 43, kind: 'NameReference', text: 'p'}]}]}]}]},
// CHECK:STDOUT:   {node_index: 53, kind: 'ExpressionStatement', text: ';', subtree_size: 6, children: [
// CHECK:STDOUT:     {node_index: 52, kind: 'InfixOperator', text: '=', subtree_size: 5, children: [
// CHECK:STDOUT:       {node_index: 48, kind: 'NameReference', text: 'n'},
// CHECK:STDOUT:       {node_index: 51, kind: 'InfixOperator', text: '*', subtree_size: 3, children: [
// CHECK:STDOUT:         {node_index: 49, kind: 'NameReference', text: 'n'},
// CHECK:STDOUT:         {node_index: 50, kind: 'NameReference', text: 'n'}]}]}]},
// CHECK:STDOUT:   {node_index: 63, kind: 'ExpressionStatement', text: ';', subtree_size: 10, children: [
// CHECK:STDOUT:     {node_index: 62, kind: 'CallExpression', text: '(', subtree_size: 9, children: [
// CHECK:STDOUT:       {node_index: 54, kind: 'NameReference', text: 'G'},
// CHECK:STDOUT:       {node_index: 56, kind: 'PostfixOperator', text: '*', subtree_size: 2, children: [
// CHECK:STDOUT:         {node_index: 55, kind: 'Literal', text: 'i32'}]},
// CHECK:STDOUT:       {node_index: 57, kind: 'CallExpressionComma', text: ','},
// CHECK:STDOUT:       {node_index: 60, kind: 'InfixOperator', text: '*', subtree_size: 3, children: [
// CHECK:STDOUT:         {node_index: 58, kind: 'NameReference', text: 'n'},
// CHECK:STDOUT:         {node_index: 59, kind: 'NameReference', text: 'n'}]},
// CHECK:STDOUT:       {node_index: 61, kind: 'CallExpressionEnd', text: ')'}]}]}]},
// CHECK:STDOUT: {node_index: 65, kind: 'FileEnd', text: ''},
// CHECK:STDOUT: ]

fn F(p: i32*, n: i32) {
  var q: i32* = p;
  var t: Type = i32*;
  t = t**;
  n = n * n;
  n = n * *p;
  n = n*n;
  G(i32*, n * n);
}
