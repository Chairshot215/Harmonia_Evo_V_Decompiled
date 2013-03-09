.class public Lcom/google/android/gm/persistence/GmailBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "GmailBackupAgent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    return-void
.end method

.method public static dataChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "source"

    .prologue
    .line 271
    const-string v0, "GmailBackupAgent"

    const-string v1, "%s may have changed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 272
    const-string v0, "com.google.android.gm"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method private static getChecksum(Ljava/util/Map;Ljava/util/List;)J
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Gmail$Settings;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/SharedPreference;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, syncSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    .local p1, preferences:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/SharedPreference;>;"
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 368
    .local v0, checksum:Ljava/util/zip/Adler32;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 369
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/android/gm/persistence/GmailBackupAgent;->updateChecksum(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    .line 370
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/provider/Gmail$Settings;

    .line 371
    .local v4, settings:Lcom/google/android/gm/provider/Gmail$Settings;
    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$Settings;->getConversationAgeDays()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/google/android/gm/persistence/GmailBackupAgent;->updateChecksum(Ljava/util/zip/Adler32;J)V

    .line 372
    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$Settings;->getMaxAttachmentSizeMb()J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/google/android/gm/persistence/GmailBackupAgent;->updateChecksum(Ljava/util/zip/Adler32;J)V

    .line 373
    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$Settings;->getLabelsIncluded()Ljava/util/List;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/android/gm/persistence/GmailBackupAgent;->updateChecksum(Ljava/util/zip/Adler32;Ljava/util/List;)V

    .line 374
    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$Settings;->getLabelsPartial()Ljava/util/List;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/android/gm/persistence/GmailBackupAgent;->updateChecksum(Ljava/util/zip/Adler32;Ljava/util/List;)V

    goto :goto_0

    .line 376
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    .end local v4           #settings:Lcom/google/android/gm/provider/Gmail$Settings;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/SharedPreference;

    .line 377
    .local v3, preference:Lcom/google/android/gm/SharedPreference;
    invoke-virtual {v3}, Lcom/google/android/gm/SharedPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/android/gm/persistence/GmailBackupAgent;->updateChecksum(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    .line 378
    invoke-virtual {v3}, Lcom/google/android/gm/SharedPreference;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/android/gm/persistence/GmailBackupAgent;->updateChecksum(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    goto :goto_1

    .line 381
    .end local v3           #preference:Lcom/google/android/gm/SharedPreference;
    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v5

    return-wide v5
.end method

.method private static getDataObject(Landroid/app/backup/BackupDataInput;)Ljava/lang/Object;
    .locals 8
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 314
    invoke-virtual {p0}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    .line 315
    .local v4, size:I
    new-array v1, v4, [B

    .line 316
    .local v1, bytes:[B
    invoke-virtual {p0, v1, v7, v4}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 317
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 318
    .local v0, byteArrayInputStream:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 320
    .local v3, inputStream:Ljava/io/ObjectInputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 323
    :goto_0
    return-object v5

    .line 321
    :catch_0
    move-exception v2

    .line 322
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v5, "GmailBackupAgent"

    const-string v6, "Invalid restore data"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v2, v6, v7}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 323
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private getDatabaseAccounts(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v1, accounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v8

    .line 278
    .local v8, paths:[Ljava/lang/String;
    move-object v2, v8

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v7, v2, v5

    .line 279
    .local v7, path:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, fileName:Ljava/lang/String;
    const-string v9, ".db"

    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "internal"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 283
    const-string v9, "internal"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, ".db"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, accountName:Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v0           #accountName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 289
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fileName:Ljava/lang/String;
    .end local v7           #path:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private getSharedPreferenceList(Landroid/app/backup/BackupDataInput;)Ljava/util/List;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/backup/BackupDataInput;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/SharedPreference;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-static {p1}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getDataObject(Landroid/app/backup/BackupDataInput;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private getSharedPreferences(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/SharedPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v1

    .line 103
    .local v1, persistence:Lcom/google/android/gm/persistence/Persistence;
    invoke-virtual {v1, p1}, Lcom/google/android/gm/persistence/Persistence;->getBackupPreferences(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 105
    .local v3, preferences:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/SharedPreference;>;"
    const-string v4, "GmailBackupAgent"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/SharedPreference;

    .line 107
    .local v2, preference:Lcom/google/android/gm/SharedPreference;
    const-string v4, "GmailBackupAgent"

    const-string v5, "Backup %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 110
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #preference:Lcom/google/android/gm/SharedPreference;
    :cond_0
    return-object v3
.end method

.method private getSyncSettings(Landroid/content/Context;)Ljava/util/Map;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Gmail$Settings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getDatabaseAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 117
    .local v1, accounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v3

    .line 118
    .local v3, gmail:Lcom/google/android/gm/provider/Gmail;
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 119
    .local v5, syncSettings:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    .local v0, account:Ljava/lang/String;
    invoke-virtual {v3, p1, v0}, Lcom/google/android/gm/provider/Gmail;->getBackupSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 123
    .end local v0           #account:Ljava/lang/String;
    :cond_0
    const-string v6, "GmailBackupAgent"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 124
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 125
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    const-string v6, "GmailBackupAgent"

    const-string v7, "Backup %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v6, v7, v8}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 129
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    :cond_1
    return-object v5
.end method

.method private getSyncSettingsMap(Landroid/app/backup/BackupDataInput;)Ljava/util/LinkedHashMap;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/backup/BackupDataInput;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Gmail$Settings;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-static {p1}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getDataObject(Landroid/app/backup/BackupDataInput;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method private parseJsonBackupData(Landroid/app/backup/BackupDataInput;)Lcom/google/android/gm/persistence/GmailBackupData;
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 336
    :try_start_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v2

    .line 337
    .local v2, size:I
    new-array v0, v2, [B

    .line 338
    .local v0, bytes:[B
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 339
    invoke-direct {p0, v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->parseJsonBackupData([B)Lcom/google/android/gm/persistence/GmailBackupData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 342
    .end local v0           #bytes:[B
    .end local v2           #size:I
    :goto_0
    return-object v3

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, e:Ljava/io/IOException;
    const-string v3, "GmailBackupAgent"

    const-string v4, "Invalid restore data"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 342
    new-instance v3, Lcom/google/android/gm/persistence/GmailBackupData;

    invoke-direct {v3, v6, v6}, Lcom/google/android/gm/persistence/GmailBackupData;-><init>(Ljava/util/Map;Ljava/util/List;)V

    goto :goto_0
.end method

.method private parseJsonBackupData([B)Lcom/google/android/gm/persistence/GmailBackupData;
    .locals 8
    .parameter "bytes"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 348
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 349
    .local v1, string:Ljava/lang/String;
    const-string v2, "GmailBackupAgent"

    const-string v3, "Reading restore data: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 350
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gm/persistence/GmailBackupData;->fromJson(Lorg/json/JSONObject;)Lcom/google/android/gm/persistence/GmailBackupData;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 359
    .end local v1           #string:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "GmailBackupAgent"

    const-string v3, "Invalid restore data"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 353
    new-instance v2, Lcom/google/android/gm/persistence/GmailBackupData;

    invoke-direct {v2, v6, v6}, Lcom/google/android/gm/persistence/GmailBackupData;-><init>(Ljava/util/Map;Ljava/util/List;)V

    goto :goto_0

    .line 354
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 355
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "UTF-8 should never throw a UnsupportedEncodingException"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 357
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 358
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "GmailBackupAgent"

    const-string v3, "Invalid restore data"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 359
    new-instance v2, Lcom/google/android/gm/persistence/GmailBackupData;

    invoke-direct {v2, v6, v6}, Lcom/google/android/gm/persistence/GmailBackupData;-><init>(Ljava/util/Map;Ljava/util/List;)V

    goto :goto_0
.end method

.method private serializeBackupData(Lcom/google/android/gm/persistence/GmailBackupData;)[B
    .locals 5
    .parameter "backupData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p1}, Lcom/google/android/gm/persistence/GmailBackupData;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, string:Ljava/lang/String;
    const-string v1, "GmailBackupAgent"

    const-string v2, "Writing backup data: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 331
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method private static updateChecksum(Ljava/util/zip/Adler32;J)V
    .locals 2
    .parameter "checksum"
    .parameter "l"

    .prologue
    .line 400
    const-wide/32 v0, 0xffff

    and-long/2addr v0, p1

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/util/zip/Adler32;->update(I)V

    .line 401
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/util/zip/Adler32;->update(I)V

    .line 402
    return-void
.end method

.method private static updateChecksum(Ljava/util/zip/Adler32;Ljava/lang/Object;)V
    .locals 2
    .parameter "checksum"
    .parameter "o"

    .prologue
    .line 386
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/zip/Adler32;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static updateChecksum(Ljava/util/zip/Adler32;Ljava/util/List;)V
    .locals 1
    .parameter "checksum"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/Adler32;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, strings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->updateChecksum(Ljava/util/zip/Adler32;[Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method private static updateChecksum(Ljava/util/zip/Adler32;[Ljava/lang/String;)V
    .locals 6
    .parameter "checksum"
    .parameter "strings"

    .prologue
    .line 393
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 394
    .local v3, string:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/google/android/gm/persistence/GmailBackupAgent;->updateChecksum(Ljava/util/zip/Adler32;Ljava/lang/Object;)V

    .line 395
    const-wide/16 v4, 0x7c

    invoke-static {p0, v4, v5}, Lcom/google/android/gm/persistence/GmailBackupAgent;->updateChecksum(Ljava/util/zip/Adler32;J)V

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    .end local v3           #string:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static writeBackupData(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    .locals 1
    .parameter "data"
    .parameter "key"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    if-eqz p2, :cond_0

    .line 295
    array-length v0, p2

    .line 296
    .local v0, len:I
    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 297
    invoke-virtual {p0, p2, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 299
    .end local v0           #len:I
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 15
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 69
    .local v2, context:Landroid/content/Context;
    invoke-direct {p0, v2}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getSyncSettings(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v11

    .line 70
    .local v11, syncSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    invoke-direct {p0, v2}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getSharedPreferences(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    .line 73
    .local v10, preferences:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/SharedPreference;>;"
    invoke-static {v11, v10}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getChecksum(Ljava/util/Map;Ljava/util/List;)J

    move-result-wide v5

    .line 74
    .local v5, newChecksum:J
    new-instance v9, Ljava/io/DataOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v9, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 76
    .local v9, out:Ljava/io/DataOutputStream;
    invoke-virtual {v9, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 79
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 82
    .local v4, in:Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    .line 84
    .local v7, oldChecksum:J
    cmp-long v12, v7, v5

    if-nez v12, :cond_0

    .line 85
    const-string v12, "GmailBackupAgent"

    const-string v13, "No changes to backup"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v7           #oldChecksum:J
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v3

    .line 89
    .local v3, e:Ljava/io/IOException;
    const-string v12, "GmailBackupAgent"

    const-string v13, "Failed to read old backup state"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 93
    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    new-instance v1, Lcom/google/android/gm/persistence/GmailBackupData;

    invoke-direct {v1, v11, v10}, Lcom/google/android/gm/persistence/GmailBackupData;-><init>(Ljava/util/Map;Ljava/util/List;)V

    .line 95
    .local v1, backupData:Lcom/google/android/gm/persistence/GmailBackupData;
    :try_start_1
    const-string v12, "backup_data_v2"

    invoke-direct {p0, v1}, Lcom/google/android/gm/persistence/GmailBackupAgent;->serializeBackupData(Lcom/google/android/gm/persistence/GmailBackupData;)[B

    move-result-object v13

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lcom/google/android/gm/persistence/GmailBackupAgent;->writeBackupData(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;[B)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 96
    :catch_1
    move-exception v3

    .line 97
    .local v3, e:Lorg/json/JSONException;
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Failed to serialize settings"

    invoke-direct {v12, v13, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 11
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 190
    .local v3, context:Landroid/content/Context;
    new-instance v0, Lcom/google/android/gm/persistence/GmailBackupData;

    invoke-direct {p0, v3}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getSyncSettings(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v9

    invoke-direct {p0, v3}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getSharedPreferences(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lcom/google/android/gm/persistence/GmailBackupData;-><init>(Ljava/util/Map;Ljava/util/List;)V

    .line 195
    .local v0, backupData:Lcom/google/android/gm/persistence/GmailBackupData;
    invoke-virtual {p0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, root:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    const-string v9, "backup_data_file"

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .local v8, stage:Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 199
    .local v5, fileStream:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 200
    .local v1, bufStream:Ljava/io/BufferedOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 202
    .local v6, out:Ljava/io/DataOutputStream;
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->serializeBackupData(Lcom/google/android/gm/persistence/GmailBackupData;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 210
    .local v2, bytes:[B
    :try_start_2
    array-length v9, v2

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 211
    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 213
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 216
    invoke-virtual {p0, v8, p1}, Lcom/google/android/gm/persistence/GmailBackupAgent;->fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 220
    return-void

    .line 207
    .end local v2           #bytes:[B
    :catch_0
    move-exception v4

    .line 208
    .local v4, e:Lorg/json/JSONException;
    :try_start_3
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Failed serialize object"

    invoke-direct {v9, v10, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    .end local v1           #bufStream:Ljava/io/BufferedOutputStream;
    .end local v4           #e:Lorg/json/JSONException;
    .end local v5           #fileStream:Ljava/io/FileOutputStream;
    .end local v6           #out:Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v9

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    throw v9
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 17
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "stateFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 139
    .local v3, context:Landroid/content/Context;
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v9

    .line 140
    .local v9, persistence:Lcom/google/android/gm/persistence/Persistence;
    const/4 v11, 0x0

    .line 141
    .local v11, syncSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    const/4 v10, 0x0

    .line 144
    .local v10, sharedPreferences:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/SharedPreference;>;"
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, key:Ljava/lang/String;
    const-string v12, "gmail_shared_preferences_v1"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 148
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getSharedPreferenceList(Landroid/app/backup/BackupDataInput;)Ljava/util/List;

    move-result-object v10

    goto :goto_0

    .line 149
    :cond_0
    const-string v12, "gmail_sync_settings_v1"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 151
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getSyncSettingsMap(Landroid/app/backup/BackupDataInput;)Ljava/util/LinkedHashMap;

    move-result-object v11

    goto :goto_0

    .line 152
    :cond_1
    const-string v12, "backup_data_v2"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 154
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gm/persistence/GmailBackupAgent;->parseJsonBackupData(Landroid/app/backup/BackupDataInput;)Lcom/google/android/gm/persistence/GmailBackupData;

    move-result-object v2

    .line 155
    .local v2, backupData:Lcom/google/android/gm/persistence/GmailBackupData;
    invoke-virtual {v2}, Lcom/google/android/gm/persistence/GmailBackupData;->getSyncSettings()Ljava/util/Map;

    move-result-object v11

    .line 156
    invoke-virtual {v2}, Lcom/google/android/gm/persistence/GmailBackupData;->getSharedPreferences()Ljava/util/List;

    move-result-object v10

    .line 164
    .end local v2           #backupData:Lcom/google/android/gm/persistence/GmailBackupData;
    .end local v7           #key:Ljava/lang/String;
    :cond_2
    if-eqz v10, :cond_3

    .line 165
    const-string v12, "GmailBackupAgent"

    invoke-virtual {v9, v3, v10, v12}, Lcom/google/android/gm/persistence/Persistence;->restoreSharedPreferences(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 167
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v5

    .line 168
    .local v5, gmail:Lcom/google/android/gm/provider/Gmail;
    if-eqz v11, :cond_5

    .line 169
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 170
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    const-string v12, "GmailBackupAgent"

    const-string v13, "Restore: %s: %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 171
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {v5, v3, v12, v13}, Lcom/google/android/gm/provider/Gmail;->restoreSettings(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;)V

    goto :goto_1

    .line 160
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    .end local v5           #gmail:Lcom/google/android/gm/provider/Gmail;
    .end local v6           #i$:Ljava/util/Iterator;
    .restart local v7       #key:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    .line 161
    const-string v12, "GmailBackupAgent"

    const-string v13, "Unknown restore key: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 175
    .end local v7           #key:Ljava/lang/String;
    .restart local v5       #gmail:Lcom/google/android/gm/provider/Gmail;
    :cond_5
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v11

    .line 176
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getDatabaseAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    .local v1, account:Ljava/lang/String;
    invoke-virtual {v5, v3, v1}, Lcom/google/android/gm/provider/Gmail;->getBackupSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v12

    invoke-interface {v11, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 179
    .end local v1           #account:Ljava/lang/String;
    :cond_6
    invoke-virtual {v9, v3}, Lcom/google/android/gm/persistence/Persistence;->getBackupPreferences(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    .line 181
    new-instance v8, Ljava/io/DataOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v8, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 183
    .local v8, out:Ljava/io/DataOutputStream;
    invoke-static {v11, v10}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getChecksum(Ljava/util/Map;Ljava/util/List;)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 184
    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V
    .locals 20
    .parameter "data"
    .parameter "size"
    .parameter "destination"
    .parameter "type"
    .parameter "mode"
    .parameter "mtime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    const-string v15, "GmailBackupAgent"

    const-string v16, "onRestoreFile() invoked"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 236
    new-instance v9, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-direct {v9, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 237
    .local v9, instream:Ljava/io/FileInputStream;
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 239
    .local v8, in:Ljava/io/DataInputStream;
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 240
    .local v14, version:I
    const-string v15, "GmailBackupAgent"

    const-string v16, "Flattened data version %d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 241
    const/4 v15, 0x2

    if-ne v14, v15, :cond_2

    .line 242
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 243
    .local v10, len:I
    new-array v3, v10, [B

    .line 244
    .local v3, bytes:[B
    invoke-virtual {v8, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 245
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gm/persistence/GmailBackupAgent;->parseJsonBackupData([B)Lcom/google/android/gm/persistence/GmailBackupData;

    move-result-object v2

    .line 246
    .local v2, backupData:Lcom/google/android/gm/persistence/GmailBackupData;
    invoke-virtual {v2}, Lcom/google/android/gm/persistence/GmailBackupData;->getSyncSettings()Ljava/util/Map;

    move-result-object v13

    .line 247
    .local v13, syncSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 248
    .local v4, context:Landroid/content/Context;
    if-eqz v13, :cond_0

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/persistence/GmailBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v6

    .line 251
    .local v6, gmail:Lcom/google/android/gm/provider/Gmail;
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 252
    .local v5, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gm/provider/Gmail$Settings;

    .line 253
    .local v11, settings:Lcom/google/android/gm/provider/Gmail$Settings;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 254
    .local v1, account:Ljava/lang/String;
    const-string v15, "GmailBackupAgent"

    const-string v16, "Restore: %s: %s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v1, v17, v18

    const/16 v18, 0x1

    aput-object v11, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 255
    invoke-virtual {v6, v4, v1, v11}, Lcom/google/android/gm/provider/Gmail;->restoreSettings(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;)V

    goto :goto_0

    .line 259
    .end local v1           #account:Ljava/lang/String;
    .end local v5           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    .end local v6           #gmail:Lcom/google/android/gm/provider/Gmail;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v11           #settings:Lcom/google/android/gm/provider/Gmail$Settings;
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gm/persistence/GmailBackupData;->getSharedPreferences()Ljava/util/List;

    move-result-object v12

    .line 260
    .local v12, sharedPreferences:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/SharedPreference;>;"
    if-eqz v12, :cond_1

    .line 261
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v15

    const-string v16, "GmailBackupAgent"

    move-object/from16 v0, v16

    invoke-virtual {v15, v4, v12, v0}, Lcom/google/android/gm/persistence/Persistence;->restoreSharedPreferences(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 268
    :cond_1
    return-void

    .line 265
    .end local v2           #backupData:Lcom/google/android/gm/persistence/GmailBackupData;
    .end local v3           #bytes:[B
    .end local v4           #context:Landroid/content/Context;
    .end local v10           #len:I
    .end local v12           #sharedPreferences:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/SharedPreference;>;"
    .end local v13           #syncSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;>;"
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 266
    new-instance v15, Ljava/io/IOException;

    const-string v16, "Invalid file schema"

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15
.end method
