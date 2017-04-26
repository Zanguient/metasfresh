package org.eevolution;

import org.adempiere.util.Services;
import org.eevolution.mrp.api.ILiberoMRPContextFactory;
import org.eevolution.mrp.api.impl.LiberoMRPContextFactory;
import org.eevolution.mrp.api.impl.MRPExecutor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

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
public class LiberoConfiguration
{
	@Bean
	public MRPExecutor mrpExecutor()
	{
		return new MRPExecutor();
	}

	@Bean
	public LiberoMRPContextFactory liberoMRPContextFactory()
	{
		final LiberoMRPContextFactory liberoMRPContextFactory = new LiberoMRPContextFactory();
		Services.registerService(ILiberoMRPContextFactory.class, liberoMRPContextFactory);

		return liberoMRPContextFactory;
	}

}
