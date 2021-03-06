//
// Created by pan on 5/17/15.
//

#ifndef FLIGHT_RESOURCE_H
#define FLIGHT_RESOURCE_H

// load resource

#include <SFML/Graphics/Texture.hpp>
#include <SFML/Graphics/Rect.hpp>
#include <SFML/Audio/SoundBuffer.hpp>

struct {
    {% for i,j in resource -%}
    sf::Texture p_{{i}};
    {% endfor -%}
    sf::Texture p_game_over;
    {% for i,j in sounds -%}
    sf::SoundBuffer s_{{i}};
    {% endfor -%}
} resources;

void loadResource(){
    {% for i,j in resource -%}
    resources.p_{{i}}.loadFromFile("{{pic}}", sf::IntRect({{j.xy[0]}}, {{j.xy[1]}}, {{j.size[0]}}, {{j.size[1]}}));
    {% endfor -%}
    resources.p_game_over.loadFromFile("/home/pan/ClionProjects/Flight/resources/image/gameover.png");
    {% for i,j in sounds -%}
    resources.s_{{i}}.loadFromFile("{{j}}");
    {% endfor -%}
}


#endif //FLIGHT_RESOURCE_H
