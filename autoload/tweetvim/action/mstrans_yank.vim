" vim: set et fdm=marker ft=vim sts=2 sw=2 ts=2 : 


scriptencoding utf-8


let s:save_cpo = &cpo
set cpo&vim


function! tweetvim#action#mstrans_yank#define()
  return { 'description' : 'echo and yank tweet, translated by Microsoft Translator' }
endfunction


function! tweetvim#action#mstrans_yank#execute(tweet)
  let text = mstrans#translate(a:tweet.text)
  let @" = text
  echo text
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo

