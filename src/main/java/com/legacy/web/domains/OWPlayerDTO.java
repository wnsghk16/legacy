package com.legacy.web.domains;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class OWPlayerDTO {
	private int owplayerNo;
	private String id, playerimg, player, name, hometown, teamimg, team, role;
}
