
-- 10.03.2016 11:31
-- URL zum Konzept
UPDATE AD_Field SET DisplayLength=100,Updated=TO_TIMESTAMP('2016-03-10 11:31:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=556722
;

-- 10.03.2016 11:32
-- URL zum Konzept
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AllowZoomTo,ColumnName,Created,CreatedBy,DDL_NoForeignKey,EntityType,FieldLength,IsActive,IsAdvancedText,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsCalculated,IsDimension,IsEncrypted,IsGenericZoomKeyColumn,IsGenericZoomOrigin,IsIdentifier,IsKey,IsLazyLoading,IsMandatory,IsParent,IsSelectionColumn,IsStaleable,IsSyncDatabase,IsTranslated,IsUpdateable,IsUseDocSequence,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,554220,275,0,10,540750,'N','Description',TO_TIMESTAMP('2016-03-10 11:32:24','YYYY-MM-DD HH24:MI:SS'),100,'N','de.metas.jax.rs',1000,'Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','Y','N','Beschreibung',0,TO_TIMESTAMP('2016-03-10 11:32:24','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10.03.2016 11:32
-- URL zum Konzept
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=554220 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10.03.2016 11:32
-- URL zum Konzept
UPDATE AD_Table SET AD_Window_ID=540287,Updated=TO_TIMESTAMP('2016-03-10 11:32:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=540750
;

-- 10.03.2016 11:34
-- URL zum Konzept
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,ColumnDisplayLength,Created,CreatedBy,DisplayLength,EntityType,IncludedTabHeight,IsActive,IsCentrallyMaintained,IsDisplayed,IsDisplayedGrid,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SeqNoGrid,SortNo,SpanX,SpanY,Updated,UpdatedBy) VALUES (0,554220,556766,0,540729,0,TO_TIMESTAMP('2016-03-10 11:34:45','YYYY-MM-DD HH24:MI:SS'),100,0,'de.metas.jax.rs',0,'Y','Y','Y','Y','N','N','N','N','N','Beschreibung',80,80,0,1,1,TO_TIMESTAMP('2016-03-10 11:34:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10.03.2016 11:34
-- URL zum Konzept
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=556766 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10.03.2016 11:35
-- URL zum Konzept
UPDATE AD_Field SET SpanY=2,Updated=TO_TIMESTAMP('2016-03-10 11:35:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=556766
;

-- 10.03.2016 11:37
-- URL zum Konzept
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_TIMESTAMP('2016-03-10 11:37:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=554220
;

COMMIT;

-- 10.03.2016 11:37
-- URL zum Konzept
ALTER TABLE AD_JAXRS_Endpoint ADD Description VARCHAR(1000) DEFAULT NULL 
;

-- 10.03.2016 11:37
-- URL zum Konzept
INSERT INTO t_alter_column values('ad_jaxrs_endpoint','Description','VARCHAR(1000)',null,'NULL')
;
