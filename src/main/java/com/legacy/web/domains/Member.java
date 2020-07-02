/**
 * 
 */
package com.legacy.web.domains;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
@Lazy
public class Member {
	private int userNo;
	private String userid,passwd,name,email,birthday,gender,telephone;
}
