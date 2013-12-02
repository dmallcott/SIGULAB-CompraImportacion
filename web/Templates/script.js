/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function() {
    $('.menu').click(function() {
        $('.sub-nav').toggle();
    });
    $('.parent2').click(function() {
        $('.sub-nav2').toggleClass('visible');
    });
    $('.parent3').click(function() {
        $('.sub-nav3').toggleClass('visible');
    });
});