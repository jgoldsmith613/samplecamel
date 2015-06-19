package com.rh;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

// This could be an interface if CAMEL-6014 is fixed.

@Path("/tempservice/")
public class TempService {

	@GET
	@Produces("application/json")
	public String getSomething( @PathParam("id") String id ) {
		return null;
	}

}
