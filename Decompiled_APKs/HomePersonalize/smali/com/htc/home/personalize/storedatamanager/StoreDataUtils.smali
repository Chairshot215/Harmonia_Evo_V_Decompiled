.class public Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;
.super Ljava/lang/Object;
.source "StoreDataUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HomePersonalize StoreDataUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized checkLangChange(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 138
    const-class v5, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;

    monitor-enter v5

    const/4 v0, 0x1

    .line 139
    .local v0, bChanged:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v2, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 140
    .local v2, locale:Ljava/util/Locale;
    const-string v1, "unknown_lang"

    .line 141
    .local v1, language:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 145
    :goto_0
    invoke-static {p0}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->loadPreviousLang(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, strPreLang:Ljava/lang/String;
    const-string v4, "HomePersonalize StoreDataUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current lang = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", previous lang = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 149
    invoke-static {p0, v1}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->storeLastLang(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    invoke-static {p0}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearAllItemData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :goto_1
    monitor-exit v5

    return v0

    .line 144
    .end local v3           #strPreLang:Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v4, "HomePersonalize StoreDataUtils"

    const-string v6, "invalid locale and set"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    .end local v1           #language:Ljava/lang/String;
    .end local v2           #locale:Ljava/util/Locale;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 152
    .restart local v1       #language:Ljava/lang/String;
    .restart local v2       #locale:Ljava/util/Locale;
    .restart local v3       #strPreLang:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static checkNeedUpdateByTTL(Ljava/lang/String;)Z
    .locals 12
    .parameter "strTTL"

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v5, 0x1

    .line 15
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 17
    :cond_0
    const-string v6, "HomePersonalize StoreDataUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid input strTTL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_1
    :goto_0
    return v5

    .line 21
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 22
    .local v0, currentTime:J
    const-wide/16 v3, 0x0

    .line 24
    .local v3, expireTime:J
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 33
    const-string v6, "HomePersonalize StoreDataUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", expireTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-long v8, v3, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    mul-long v6, v3, v10

    cmp-long v6, v0, v6

    if-gez v6, :cond_1

    .line 35
    const/4 v5, 0x0

    goto :goto_0

    .line 26
    :catch_0
    move-exception v2

    .line 28
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    const-string v6, "HomePersonalize StoreDataUtils"

    const-string v7, "parsing ttl exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static computeCacheExpireTTL(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .parameter "staticAssetCacheTTL"

    .prologue
    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 190
    .local v2, currentTimeMillis:J
    const-string v16, "HomePersonalize StoreDataUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "computeCacheExpireTTL: currentTimeMillis = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 193
    :cond_0
    const-string v16, "HomePersonalize StoreDataUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "computeCacheExpireTTL: invalid staticAssetCacheTTL = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v16, ""

    .line 243
    :goto_0
    return-object v16

    .line 197
    :cond_1
    const-string v16, "d"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 198
    .local v4, dayIndex:I
    const-string v16, "h"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 199
    .local v7, hrIndex:I
    const-string v16, "m"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 200
    .local v9, minIndex:I
    const-string v16, "s"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 202
    .local v11, secIndex:I
    const/4 v5, 0x0

    .line 203
    .local v5, dayValue:I
    const/4 v8, 0x0

    .line 204
    .local v8, hrValue:I
    const/4 v10, 0x0

    .line 205
    .local v10, minValue:I
    const/4 v12, 0x0

    .line 207
    .local v12, secValue:I
    const/4 v13, 0x0

    .line 208
    .local v13, startIndex:I
    if-lez v4, :cond_2

    .line 210
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 214
    :goto_1
    add-int/lit8 v13, v4, 0x1

    .line 216
    :cond_2
    if-lez v7, :cond_3

    .line 218
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 222
    :goto_2
    add-int/lit8 v13, v7, 0x1

    .line 224
    :cond_3
    if-lez v9, :cond_4

    .line 226
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v10

    .line 230
    :goto_3
    add-int/lit8 v13, v9, 0x1

    .line 232
    :cond_4
    if-lez v11, :cond_5

    .line 234
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v12

    .line 240
    :cond_5
    :goto_4
    mul-int/lit8 v16, v5, 0x18

    add-int v16, v16, v8

    mul-int/lit8 v16, v16, 0x3c

    add-int v16, v16, v10

    mul-int/lit8 v16, v16, 0x3c

    add-int v16, v16, v12

    move/from16 v0, v16

    int-to-long v14, v0

    .line 241
    .local v14, totalSumSec:J
    const-string v16, "HomePersonalize StoreDataUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "computeCacheExpireTTL: totalSumSec = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-wide/16 v16, 0x3e8

    div-long v16, v2, v16

    add-long v16, v16, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 211
    .end local v14           #totalSumSec:J
    :catch_0
    move-exception v6

    .line 212
    .local v6, e:Ljava/lang/NumberFormatException;
    const-string v16, "HomePersonalize StoreDataUtils"

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 219
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v6

    .line 220
    .restart local v6       #e:Ljava/lang/NumberFormatException;
    const-string v16, "HomePersonalize StoreDataUtils"

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 227
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v6

    .line 228
    .restart local v6       #e:Ljava/lang/NumberFormatException;
    const-string v16, "HomePersonalize StoreDataUtils"

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 235
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v6

    .line 236
    .restart local v6       #e:Ljava/lang/NumberFormatException;
    const-string v16, "HomePersonalize StoreDataUtils"

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static getIDFromGetMoreTablebyType(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "nType"

    .prologue
    const/4 v1, 0x0

    .line 74
    const-string v3, "HomePersonalize StoreDataUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getValidSubcategoryIDbyType+ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, where:Ljava/lang/String;
    const-string v3, "HomePersonalize StoreDataUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "where = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {p0}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v3

    const-class v4, Lcom/htc/home/personalize/storedatamanager/GetMoreItem;

    invoke-virtual {v3, v4, v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->queryData(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 78
    .local v0, cr:Landroid/database/Cursor;
    const-string v3, "HomePersonalize StoreDataUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-nez v0, :cond_1

    .line 81
    const-string v3, "HomePersonalize StoreDataUtils"

    const-string v4, "can not find cat id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    :goto_0
    return-object v1

    .line 85
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_2

    .line 87
    const-string v3, "HomePersonalize StoreDataUtils"

    const-string v4, "getSubcategoryIDbyType moveToFirst fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 93
    :cond_2
    const-string v3, "id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, strID:Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 96
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_3
    const-string v3, "HomePersonalize StoreDataUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getValidSubcategoryIDbyType- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getUriByFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "strFunc"

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-static {p0}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v2

    const-class v3, Lcom/htc/home/personalize/storedatamanager/SetupItem;

    invoke-virtual {v2, v3, v1}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->queryData(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 104
    .local v0, cr:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 106
    const-string v2, "HomePersonalize StoreDataUtils"

    const-string v3, "getUriByFunction fail cr == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 111
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_1
    :goto_0
    return-object v1

    .line 116
    :cond_2
    const/4 v1, 0x0

    .line 117
    .local v1, strUri:Ljava/lang/String;
    const-string v2, "categorylistURI"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    const-string v2, "categorylistURI"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    :cond_3
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 130
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 120
    :cond_4
    const-string v2, "getmoreURI"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 121
    const-string v2, "getmoreURI"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 122
    :cond_5
    const-string v2, "itemlistURI"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 123
    const-string v2, "itemlistURI"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 124
    :cond_6
    const-string v2, "buyURI"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    const-string v2, "buyURI"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static getValidIDfromGetMoreTable(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "nType"

    .prologue
    const/4 v1, 0x0

    .line 43
    const-string v4, "HomePersonalize StoreDataUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getValidSubcategoryIDbyType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, where:Ljava/lang/String;
    const-string v4, "HomePersonalize StoreDataUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "where = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p0}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v4

    const-class v5, Lcom/htc/home/personalize/storedatamanager/GetMoreItem;

    invoke-virtual {v4, v5, v3}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->queryData(Ljava/lang/Class;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 47
    .local v0, cr:Landroid/database/Cursor;
    const-string v4, "HomePersonalize StoreDataUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object v1

    .line 51
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2

    .line 53
    const-string v4, "HomePersonalize StoreDataUtils"

    const-string v5, "getValidIDfromGetMoreTable moveToFirst fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 55
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 59
    :cond_2
    const/4 v1, 0x0

    .line 60
    .local v1, strID:Ljava/lang/String;
    const-string v4, "ttl"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, strTTL:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/home/personalize/storedatamanager/StoreDataUtils;->checkNeedUpdateByTTL(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 62
    const-string v4, "id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 64
    :cond_3
    invoke-static {p0}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->getInstance(Landroid/content/Context;)Lcom/htc/home/personalize/storedatamanager/StoreDataDB;

    move-result-object v4

    const-class v5, Lcom/htc/home/personalize/storedatamanager/GetMoreItem;

    invoke-virtual {v4, v5, v3}, Lcom/htc/home/personalize/storedatamanager/StoreDataDB;->clearData(Ljava/lang/Class;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static loadPreviousLang(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 160
    const-string v1, "unknown_lang"

    .line 161
    .local v1, strLang:Ljava/lang/String;
    const-string v2, "store_data"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 162
    .local v0, preferences:Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 164
    const-string v2, "HomePersonalize StoreDataUtils"

    const-string v3, "loadPreviousLang. can not get valid preferences"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    const-string v2, "HomePersonalize StoreDataUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadPreviousLang "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-object v1

    .line 166
    :cond_0
    const-string v2, "pref_storedata_lang"

    const-string v3, "unknown_lang"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static storeLastLang(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "strLang"

    .prologue
    .line 174
    const-string v2, "HomePersonalize StoreDataUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "storeLastLang "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v2, "store_data"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 176
    .local v1, preferences:Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 178
    const-string v2, "HomePersonalize StoreDataUtils"

    const-string v3, "storeLastLang. can not get valid preferences"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 182
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_storedata_lang"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
