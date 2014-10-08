" vim: set et fdm=marker ft=vim sts=2 sw=2 ts=2 :


scriptencoding utf-8


let s:save_cpo = &cpo
set cpo&vim


function! tweetvim#action#mstrans#define()
  return { 'description' : 'echo tweet, translated by Microsoft Translator' }
endfunction


function! tweetvim#action#mstrans#execute(tweet)
  echo mstrans#translate(a:tweet.text)
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo

