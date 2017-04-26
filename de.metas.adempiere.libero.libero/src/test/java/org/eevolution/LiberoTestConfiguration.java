package org.eevolution;

import org.compiere.Adempiere;
import org.compiere.util.Env;
import org.eevolution.mrp.api.impl.MRPExecutor;
import org.eevolution.mrp.api.impl.MockedMRPExecutor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.Profile;

/*
 * #%L
 * de.metas.adempiere.libero.libero
 * %%
 * Copyright (C) 2017 metas GmbH
 * %%
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as
 * published by the Free Software Foundation, either version 2 of the
 * License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public
 * License along with this program. If not, see
 * <http://www.gnu.org/licenses/gpl-2.0.html>.
 * #L%
 */
@Configuration
@Profile("test")
public class LiberoTestConfiguration
{
	@Autowired
	private ApplicationContext applicationContext;

	@Bean
	public Adempiere adempiere()
	{
		final Adempiere adempiere = Env.getSingleAdempiereInstance();
		adempiere.setApplicationContext(applicationContext);

		return adempiere;
	}

	/**
	 * Create a {@link MockedMRPExecutor} if the test profile is active, then prefer this mocked MRP executor.
	 * 
	 * @return
	 */
	@Bean
	@Primary
	public MRPExecutor mrpExecutor()
	{
		return new MockedMRPExecutor();
	}
}
