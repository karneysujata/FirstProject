package mySpringDemo.validation;

import java.lang.annotation.Retention;
import java.lang.annotation.Target;
import java.lang.annotation.ElementType;
import java.lang.annotation.RetentionPolicy;

import javax.validation.Constraint;
import javax.validation.Payload;

@Constraint(validatedBy=CourseCodeConstraintValidator.class)
@Target({ ElementType.METHOD , ElementType.FIELD} )
@Retention(RetentionPolicy.RUNTIME)

public @interface CourseCode {
	
	public String value() default "SUN";
	
	public String message() default " Course must start with SUN";
	
	public Class<?>[] groups() default {};
	
	public Class<? extends Payload>[] payload() default {};
	
	

}
