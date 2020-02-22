{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

module Main where

import Core.Program

version :: Version
version = $(fromPackage)

main :: IO ()
main = do
    context <- configure version None blank
    executeWith context program

program :: Program None ()
program = do
    write "Hello World"
