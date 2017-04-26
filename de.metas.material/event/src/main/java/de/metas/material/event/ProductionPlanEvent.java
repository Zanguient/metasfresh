package de.metas.material.event;

import java.time.Instant;
import java.util.List;

import org.adempiere.util.lang.impl.TableRecordReference;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NonNull;
import lombok.Singular;

/*
 * #%L
 * metasfresh-material-event
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
@Data
@AllArgsConstructor
final @Builder public class ProductionPlanEvent implements MaterialEvent
{
	public static final String TYPE = "ProductionPlanEvent";

	@NonNull
	private final Instant when;

	@NonNull
	private final TableRecordReference reference;
	
	@NonNull
	@Singular
	private final List<MaterialDescriptor> productionOutputs;

	@NonNull
	@Singular
	private final List<MaterialDescriptor> productionInputs;

}
