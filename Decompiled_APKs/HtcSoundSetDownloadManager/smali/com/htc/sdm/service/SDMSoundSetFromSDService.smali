.class public Lcom/htc/sdm/service/SDMSoundSetFromSDService;
.super Landroid/app/IntentService;
.source "SDMSoundSetFromSDService.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SDM"

.field private static final PREFIX:Ljava/lang/String; = "[SDMSoundSetFromSDService] "


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "SDMSoundSetFromSDService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private GetSoundUri(Lcom/htc/sdm/provider/SoundSetDAO;)Ljava/lang/String;
    .locals 6
    .parameter "soundSet"

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, MediaUri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 315
    .local v1, SoundUri:Ljava/lang/String;
    :try_start_0
    iget-object v4, p1, Lcom/htc/sdm/provider/SoundSetDAO;->file_url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/htc/sdm/util/SDMDBUtil;->findMediaStoreUriBySDMUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 316
    const/16 v3, 0x78

    .line 317
    .local v3, retryCounter:I
    :goto_0
    if-nez v0, :cond_1

    if-lez v3, :cond_1

    .line 321
    const-wide/16 v4, 0x2710

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 322
    iget-object v4, p1, Lcom/htc/sdm/provider/SoundSetDAO;->file_url:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/htc/sdm/util/SDMDBUtil;->findMediaStoreUriBySDMUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 328
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 324
    :catch_0
    move-exception v2

    .line 326
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 337
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v3           #retryCounter:I
    :catch_1
    move-exception v4

    .line 342
    :cond_0
    :goto_2
    return-object v1

    .line 330
    .restart local v3       #retryCounter:I
    :cond_1
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_2
.end method

.method private ParseXML(Ljava/lang/String;)Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .locals 12
    .parameter "xmlFile"

    .prologue
    .line 347
    const/4 v7, 0x0

    .line 348
    .local v7, xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    const/4 v4, 0x0

    .line 349
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 352
    .local v1, fileInput:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 355
    .end local v1           #fileInput:Ljava/io/FileInputStream;
    .local v2, fileInput:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .local v6, sb:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v2, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 358
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v5, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 360
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 369
    .end local v3           #line:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v1, v2

    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v1       #fileInput:Ljava/io/FileInputStream;
    move-object v4, v5

    .line 376
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v4, :cond_0

    .line 380
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 389
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 393
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 403
    :cond_1
    :goto_3
    return-object v7

    .line 363
    .end local v1           #fileInput:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    :cond_2
    :try_start_5
    new-instance v8, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 364
    .end local v7           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .local v8, xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    if-eqz v8, :cond_3

    .line 366
    :try_start_6
    invoke-virtual {v8}, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->parserXmlFromSD()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 376
    :cond_3
    if-eqz v5, :cond_4

    .line 380
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 389
    :cond_4
    :goto_4
    if-eqz v2, :cond_7

    .line 393
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    move-object v1, v2

    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v1       #fileInput:Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v7, v8

    .line 399
    .end local v8           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v7       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    goto :goto_3

    .line 382
    .end local v1           #fileInput:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v7           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v8       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    :catch_1
    move-exception v0

    .line 384
    .local v0, e:Ljava/io/IOException;
    const-string v9, "SDM"

    const-string v10, "[SDMSoundSetFromSDService] IOException"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 395
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 397
    .restart local v0       #e:Ljava/io/IOException;
    const-string v9, "SDM"

    const-string v10, "[SDMSoundSetFromSDService] IOException"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v1       #fileInput:Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v7, v8

    .line 399
    .end local v8           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v7       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    goto :goto_3

    .line 382
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :catch_3
    move-exception v0

    .line 384
    .restart local v0       #e:Ljava/io/IOException;
    const-string v9, "SDM"

    const-string v10, "[SDMSoundSetFromSDService] IOException"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 395
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 397
    .restart local v0       #e:Ljava/io/IOException;
    const-string v9, "SDM"

    const-string v10, "[SDMSoundSetFromSDService] IOException"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 376
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v4, :cond_5

    .line 380
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 389
    :cond_5
    :goto_6
    if-eqz v1, :cond_6

    .line 393
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 399
    :cond_6
    :goto_7
    throw v9

    .line 382
    :catch_5
    move-exception v0

    .line 384
    .restart local v0       #e:Ljava/io/IOException;
    const-string v10, "SDM"

    const-string v11, "[SDMSoundSetFromSDService] IOException"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 395
    .end local v0           #e:Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 397
    .restart local v0       #e:Ljava/io/IOException;
    const-string v10, "SDM"

    const-string v11, "[SDMSoundSetFromSDService] IOException"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 376
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fileInput:Ljava/io/FileInputStream;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v1       #fileInput:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v1           #fileInput:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v9

    move-object v1, v2

    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v1       #fileInput:Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_5

    .end local v1           #fileInput:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v7           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v8       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    :catchall_3
    move-exception v9

    move-object v1, v2

    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v1       #fileInput:Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v7       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    goto :goto_5

    .line 369
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :catch_7
    move-exception v9

    goto/16 :goto_1

    .end local v1           #fileInput:Ljava/io/FileInputStream;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    :catch_8
    move-exception v9

    move-object v1, v2

    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v1       #fileInput:Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v1           #fileInput:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v7           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    .restart local v8       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    :catch_9
    move-exception v9

    move-object v1, v2

    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v1       #fileInput:Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v7       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    goto/16 :goto_1

    .end local v1           #fileInput:Ljava/io/FileInputStream;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .end local v7           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v2       #fileInput:Ljava/io/FileInputStream;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v8       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    :cond_7
    move-object v1, v2

    .end local v2           #fileInput:Ljava/io/FileInputStream;
    .restart local v1       #fileInput:Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    .restart local v7       #xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    goto/16 :goto_3
.end method

.method private SaveToSoundSetChild(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Lcom/htc/sdm/provider/SoundSetDAO;)Ljava/util/HashMap;
    .locals 9
    .parameter "xmlInfo"
    .parameter "soundSetParent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;",
            "Lcom/htc/sdm/provider/SoundSetDAO;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sdm/provider/SoundSetChildDAO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 188
    .local v1, childList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/sdm/provider/SoundSetChildDAO;>;"
    :try_start_0
    iget-object v7, p2, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->getChildList(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 189
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMSoundSetFromSDService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 190
    .local v4, mCR:Landroid/content/ContentResolver;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v3, 0x0

    .line 192
    .local v3, isSoundsetCleared:Z
    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sdm/provider/SoundSetChildDAO;

    .line 196
    .local v0, child:Lcom/htc/sdm/provider/SoundSetChildDAO;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->PARENT_GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v8}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/htc/sdm/provider/SoundSetChildDAO;->PARENT_GUID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, where:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 201
    sget-object v7, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 202
    const/4 v3, 0x1

    .line 206
    :cond_0
    sget-object v7, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_CHILD:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SoundSetChildDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    .end local v0           #child:Lcom/htc/sdm/provider/SoundSetChildDAO;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isSoundsetCleared:Z
    .end local v4           #mCR:Landroid/content/ContentResolver;
    .end local v5           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v6           #where:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 221
    :cond_1
    :goto_1
    return-object v1

    .line 208
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #isSoundsetCleared:Z
    .restart local v4       #mCR:Landroid/content/ContentResolver;
    .restart local v5       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_2
    const-string v7, "com.htc.sdm.provider.SDMProvider"

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private SavetoSoundSetInfoTable(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;)Lcom/htc/sdm/provider/SoundSetInfoDAO;
    .locals 10
    .parameter "xmlInfo"

    .prologue
    .line 226
    const/4 v8, 0x0

    .line 227
    .local v8, soundInfoParent:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMSoundSetFromSDService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 230
    .local v0, mCR:Landroid/content/ContentResolver;
    :try_start_0
    iget-object v1, p1, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetInfoDAOs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/sdm/provider/SoundSetInfoDAO;

    .line 232
    .local v9, soundSetInfo:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    const/4 v1, 0x1

    iget v2, v9, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    if-ne v1, v2, :cond_1

    .line 233
    move-object v8, v9

    .line 236
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/htc/sdm/provider/SoundSetInfoDAO;->GUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/htc/sdm/provider/SoundSetInfoDAO;->lang:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 238
    .local v3, infoWhere:Ljava/lang/String;
    const/4 v6, 0x0

    .line 241
    .local v6, c:Landroid/database/Cursor;
    :try_start_1
    iget v1, v9, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getInfoTableUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 243
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 245
    iget v1, v9, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getInfoTableUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9}, Lcom/htc/sdm/provider/SoundSetInfoDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :cond_2
    if-eqz v6, :cond_0

    .line 258
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 262
    .end local v3           #infoWhere:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #soundSetInfo:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    :catch_0
    move-exception v1

    .line 267
    :cond_3
    return-object v8

    .line 257
    .restart local v3       #infoWhere:Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #soundSetInfo:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 258
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method private SavetoSoundSetTable(Lcom/htc/sdm/provider/SoundSetDAO;)Z
    .locals 8
    .parameter "soundSet"

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMSoundSetFromSDService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 273
    .local v0, mCR:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 274
    .local v7, isInsertItem:Z
    const/4 v6, 0x0

    .line 277
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/sdm/provider/SoundSetDAO;->GUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, where:Ljava/lang/String;
    iget v1, p1, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 280
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 282
    iget v1, p1, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getListTableUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/sdm/provider/SoundSetDAO;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    const/4 v7, 0x1

    .line 300
    :cond_0
    if-eqz v6, :cond_1

    .line 301
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 303
    .end local v3           #where:Ljava/lang/String;
    :cond_1
    :goto_0
    return v7

    .line 293
    :catch_0
    move-exception v1

    .line 300
    if-eqz v6, :cond_1

    .line 301
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 301
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private getAddedXmlList()Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    const/4 v6, 0x0

    .line 112
    .local v6, addedXmlList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 115
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->isAdd:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'1\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMSoundSetFromSDService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_SD:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 117
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v6           #addedXmlList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v7, addedXmlList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 119
    .local v10, xmlName:Ljava/lang/String;
    if-eqz v8, :cond_1

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->fileName:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 124
    invoke-virtual {v7, v10, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_0

    .line 134
    :cond_1
    if-eqz v8, :cond_4

    .line 135
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v6, v7

    .line 137
    .end local v3           #where:Ljava/lang/String;
    .end local v7           #addedXmlList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #xmlName:Ljava/lang/String;
    .restart local v6       #addedXmlList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_0
    return-object v6

    .line 128
    :catch_0
    move-exception v9

    .line 130
    .local v9, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    if-eqz v8, :cond_2

    .line 135
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 134
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v8, :cond_3

    .line 135
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 134
    .end local v6           #addedXmlList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3       #where:Ljava/lang/String;
    .restart local v7       #addedXmlList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10       #xmlName:Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v6, v7

    .end local v7           #addedXmlList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #addedXmlList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 128
    .end local v6           #addedXmlList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7       #addedXmlList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v9

    move-object v6, v7

    .end local v7           #addedXmlList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #addedXmlList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .end local v6           #addedXmlList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7       #addedXmlList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    move-object v6, v7

    .end local v7           #addedXmlList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #addedXmlList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0
.end method


# virtual methods
.method public addNewSoundSetFromSD(Ljava/lang/String;)V
    .locals 8
    .parameter "xmlPath"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/htc/sdm/service/SDMSoundSetFromSDService;->ParseXML(Ljava/lang/String;)Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;

    move-result-object v5

    .line 148
    .local v5, xmlInfo:Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;
    const/4 v4, 0x0

    .line 149
    .local v4, soundSetParent:Lcom/htc/sdm/provider/SoundSetDAO;
    const/4 v2, 0x0

    .line 150
    .local v2, soundInfParent:Lcom/htc/sdm/provider/SoundSetInfoDAO;
    const/4 v1, 0x0

    .line 152
    .local v1, isInsertItem:Z
    if-eqz v5, :cond_3

    .line 154
    iget-object v6, v5, Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;->soundsetDAOs:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/sdm/provider/SoundSetDAO;

    .line 156
    .local v3, soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    const/4 v6, 0x1

    iget v7, v3, Lcom/htc/sdm/provider/SoundSetDAO;->refType:I

    if-eq v6, v7, :cond_1

    .line 158
    invoke-direct {p0, v3}, Lcom/htc/sdm/service/SDMSoundSetFromSDService;->GetSoundUri(Lcom/htc/sdm/provider/SoundSetDAO;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/htc/sdm/provider/SoundSetDAO;->soundUri:Ljava/lang/String;

    .line 165
    :goto_1
    invoke-direct {p0, v3}, Lcom/htc/sdm/service/SDMSoundSetFromSDService;->SavetoSoundSetTable(Lcom/htc/sdm/provider/SoundSetDAO;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 166
    const/4 v1, 0x1

    goto :goto_0

    .line 162
    :cond_1
    move-object v4, v3

    goto :goto_1

    .line 169
    .end local v3           #soundSet:Lcom/htc/sdm/provider/SoundSetDAO;
    :cond_2
    invoke-direct {p0, v5}, Lcom/htc/sdm/service/SDMSoundSetFromSDService;->SavetoSoundSetInfoTable(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;)Lcom/htc/sdm/provider/SoundSetInfoDAO;

    .line 172
    if-eqz v4, :cond_3

    .line 174
    invoke-direct {p0, v5, v4}, Lcom/htc/sdm/service/SDMSoundSetFromSDService;->SaveToSoundSetChild(Lcom/htc/sdm/util/SDMUtil$SoundSetXmlInfo;Lcom/htc/sdm/provider/SoundSetDAO;)Ljava/util/HashMap;

    .line 182
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 53
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 59
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 15
    .parameter "intent"

    .prologue
    .line 64
    if-eqz p1, :cond_2

    .line 67
    const/4 v7, 0x0

    .line 70
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v11, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SoundSet/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v11, soundSetFolder:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 73
    .local v13, xmlPathList:[Ljava/io/File;
    const/4 v3, 0x0

    .line 74
    .local v3, where:Ljava/lang/String;
    move-object v6, v13

    .local v6, arr$:[Ljava/io/File;
    array-length v10, v6

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v12, v6, v9

    .line 78
    .local v12, xmlPath:Ljava/io/File;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->fileName:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->lastModifyTime:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->fileSize:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMSoundSetFromSDService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_SD:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 84
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/sdm/service/SDMSoundSetFromSDService;->addNewSoundSetFromSD(Ljava/lang/String;)V

    .line 87
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 88
    .local v14, xmlSDValues:Landroid/content/ContentValues;
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->fileName:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->lastModifyTime:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 90
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->fileSize:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    sget-object v0, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->isAdd:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;

    invoke-virtual {v0}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_FROM_SD;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    invoke-virtual {p0}, Lcom/htc/sdm/service/SDMSoundSetFromSDService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_SD:Landroid/net/Uri;

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v14           #xmlSDValues:Landroid/content/ContentValues;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 102
    .end local v12           #xmlPath:Ljava/io/File;
    :cond_1
    if-eqz v7, :cond_2

    .line 104
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 108
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #arr$:[Ljava/io/File;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v11           #soundSetFolder:Ljava/io/File;
    .end local v13           #xmlPathList:[Ljava/io/File;
    :cond_2
    :goto_1
    return-void

    .line 96
    .restart local v7       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 98
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    if-eqz v7, :cond_2

    .line 104
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 102
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 104
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 40
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    .line 41
    const/4 v0, 0x1

    return v0
.end method
