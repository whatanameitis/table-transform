package ru.karpunin.tabletransform.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {

    @GetMapping("api/cock")
    String getCock(){
        return "Cock";
    }
}
