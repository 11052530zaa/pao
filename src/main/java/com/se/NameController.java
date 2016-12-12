package com.se;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/names")
@Controller
@RooWebScaffold(path = "names", formBackingObject = Name.class)
public class NameController {
}
