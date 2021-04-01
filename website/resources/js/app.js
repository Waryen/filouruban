require('./bootstrap');
import React from 'react'
import ReactDOM from 'react-dom'

// Importation descomposants
import ArticleList from './components/public/article-list'
import Newsletter from './components/public/newsletter'

// CONST
const url = `${document.querySelector('#url').getAttribute('content')}`
const api = 'UJKhBNU2kN5qsdopJKVcm4ZFCurkRRWX7uPFlgehdGd0H8alzdoy6yVf2DUh9sPiYrHztFSUx6oijfWhXw0G4nk40RtKUBrDPOmk'
let auth
if(document.querySelector('#auth')) {
    const prepareAuth = document.querySelector('#auth').getAttribute('content')
    if(prepareAuth) {
        auth = prepareAuth
    }
}




// Rendu des composants

if(document.getElementById('react-article-list')) {
    ReactDOM.render(
        <ArticleList url={url} api={api}></ArticleList>,
        document.getElementById('react-article-list')
    )
}

if(document.getElementById('react-newsletter')) {
    ReactDOM.render(
        <Newsletter url={url} api={api}></Newsletter>,
        document.getElementById('react-newsletter')
    )
}