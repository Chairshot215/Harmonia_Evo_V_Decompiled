.class public Lcom/google/android/backup/BackupRequestGenerator;
.super Ljava/lang/Object;
.source "BackupRequestGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/backup/BackupRequestGenerator$1;,
        Lcom/google/android/backup/BackupRequestGenerator$PolicyException;,
        Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException;,
        Lcom/google/android/backup/BackupRequestGenerator$AuthException;,
        Lcom/google/android/backup/BackupRequestGenerator$Application;
    }
.end annotation


# instance fields
.field private mApplications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/backup/BackupRequestGenerator$Application;",
            ">;"
        }
    .end annotation
.end field

.field private mSendInitialize:Z

.field private mTempPrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(J)V
    .locals 4
    .parameter "uniqueId"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/backup/BackupRequestGenerator;->mApplications:Ljava/util/HashMap;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/backup/BackupRequestGenerator;->mSendInitialize:Z

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_tmp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/32 v1, 0x10000

    rem-long v1, p1, v1

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/backup/BackupRequestGenerator;->mTempPrefix:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public static parseResponse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 13
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/backup/BackupRequestGenerator$AuthException;,
            Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException;,
            Lcom/google/android/backup/BackupRequestGenerator$PolicyException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xb

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x6

    .line 335
    new-instance v7, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v8, Lcom/google/android/backup/proto/BackupMessageTypes;->BACKUP_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v7, v8}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 336
    .local v7, response:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v7, p0}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;

    .line 338
    invoke-virtual {v7, v12}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/io/IOException;

    const-string v9, "Incomplete response"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 339
    :cond_0
    invoke-virtual {v7, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    .line 340
    .local v3, authCode:I
    if-eqz v3, :cond_1

    new-instance v8, Lcom/google/android/backup/BackupRequestGenerator$AuthException;

    invoke-direct {v8, v3}, Lcom/google/android/backup/BackupRequestGenerator$AuthException;-><init>(I)V

    throw v8

    .line 342
    :cond_1
    invoke-virtual {v7, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 343
    .local v2, appCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_7

    .line 344
    invoke-virtual {v7, v10, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 345
    .local v0, app:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 346
    .local v1, appCode:I
    if-eqz v1, :cond_6

    if-eq v1, v11, :cond_6

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "server error in app "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .local v4, err:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v11}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v8, ": code "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    invoke-virtual {v0, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 353
    const-string v8, ": "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0, v9, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 356
    :cond_2
    if-ne v1, v9, :cond_3

    .line 357
    new-instance v8, Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 358
    :cond_3
    const/4 v8, 0x1

    if-eq v1, v8, :cond_4

    const/4 v8, 0x7

    if-ne v1, v8, :cond_5

    .line 360
    :cond_4
    new-instance v8, Lcom/google/android/backup/BackupRequestGenerator$PolicyException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/backup/BackupRequestGenerator$PolicyException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 362
    :cond_5
    new-instance v8, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 343
    .end local v4           #err:Ljava/lang/StringBuilder;
    .end local v6           #j:I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 367
    .end local v0           #app:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v1           #appCode:I
    :cond_7
    return-object v7
.end method


# virtual methods
.method public approximateSize()I
    .locals 7

    .prologue
    .line 145
    const/4 v3, 0x0

    .line 146
    .local v3, size:I
    iget-object v5, p0, Lcom/google/android/backup/BackupRequestGenerator;->mApplications:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 147
    .local v0, appEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/backup/BackupRequestGenerator$Application;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/backup/BackupRequestGenerator$Application;

    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mUpdates:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$200(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 148
    .local v4, update:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 149
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v5, 0x5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    array-length v5, v5

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    goto :goto_0

    .line 153
    .end local v0           #appEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/backup/BackupRequestGenerator$Application;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #update:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    :cond_2
    return v3
.end method

.method public getApplication(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/backup/BackupRequestGenerator$Application;
    .locals 4
    .parameter "id"
    .parameter "apiKey"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/google/android/backup/BackupRequestGenerator;->mApplications:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/backup/BackupRequestGenerator$Application;

    .line 110
    .local v0, app:Lcom/google/android/backup/BackupRequestGenerator$Application;
    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/google/android/backup/BackupRequestGenerator$Application;

    .end local v0           #app:Lcom/google/android/backup/BackupRequestGenerator$Application;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/backup/BackupRequestGenerator$Application;-><init>(Lcom/google/android/backup/BackupRequestGenerator;Lcom/google/android/backup/BackupRequestGenerator$1;)V

    .line 112
    .restart local v0       #app:Lcom/google/android/backup/BackupRequestGenerator$Application;
    iget-object v1, p0, Lcom/google/android/backup/BackupRequestGenerator;->mApplications:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mApiKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$100(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 115
    #setter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mApiKey:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$102(Lcom/google/android/backup/BackupRequestGenerator$Application;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    :cond_1
    return-object v0

    .line 116
    :cond_2
    if-eqz p2, :cond_1

    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mApiKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$100(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Different API keys for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mApiKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$100(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", now \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public initializeDevice()V
    .locals 3

    .prologue
    .line 130
    iget-object v2, p0, Lcom/google/android/backup/BackupRequestGenerator;->mApplications:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/backup/BackupRequestGenerator$Application;

    .line 131
    .local v0, app:Lcom/google/android/backup/BackupRequestGenerator$Application;
    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mUpdates:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$200(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 132
    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mDeletedPrefixes:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$300(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 133
    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mTemporaryKeys:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$400(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    .line 135
    .end local v0           #app:Lcom/google/android/backup/BackupRequestGenerator$Application;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/backup/BackupRequestGenerator;->mSendInitialize:Z

    .line 136
    return-void
.end method

.method public makeAbortRequest()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 219
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/backup/proto/BackupMessageTypes;->BACKUP_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 220
    .local v3, request:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v5, 0x13

    invoke-virtual {v3, v5, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 222
    iget-object v5, p0, Lcom/google/android/backup/BackupRequestGenerator;->mApplications:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 223
    .local v1, appEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/backup/BackupRequestGenerator$Application;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/backup/BackupRequestGenerator$Application;

    .line 226
    .local v0, app:Lcom/google/android/backup/BackupRequestGenerator$Application;
    invoke-virtual {v3, v8}, Lcom/google/common/io/protocol/ProtoBuf;->addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 227
    .local v4, requestApp:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v6, 0x3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 228
    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mApiKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$100(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 229
    const/16 v5, 0x14

    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mApiKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$100(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 232
    :cond_0
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    const/16 v6, 0xc

    const-string v7, "_tmp_"

    invoke-virtual {v5, v6, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 235
    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mUpdates:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$200(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 236
    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mDeletedPrefixes:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$300(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 237
    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mTemporaryKeys:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$400(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    .line 240
    .end local v0           #app:Lcom/google/android/backup/BackupRequestGenerator$Application;
    .end local v1           #appEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/backup/BackupRequestGenerator$Application;>;"
    .end local v4           #requestApp:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    return-object v3
.end method

.method public makeFinalRequest()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 17

    .prologue
    .line 254
    new-instance v9, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v15, Lcom/google/android/backup/proto/BackupMessageTypes;->BACKUP_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v9, v15}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 255
    .local v9, request:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v15, 0x13

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 257
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/backup/BackupRequestGenerator;->mSendInitialize:Z

    if-eqz v15, :cond_0

    .line 258
    const/16 v15, 0x11

    invoke-virtual {v9, v15}, Lcom/google/common/io/protocol/ProtoBuf;->addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    .line 259
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/android/backup/BackupRequestGenerator;->mSendInitialize:Z

    .line 262
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/backup/BackupRequestGenerator;->mApplications:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 263
    .local v2, appEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/backup/BackupRequestGenerator$Application;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/backup/BackupRequestGenerator$Application;

    .line 264
    .local v1, app:Lcom/google/android/backup/BackupRequestGenerator$Application;
    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mUpdates:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$200(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_2

    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mDeletedPrefixes:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$300(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashSet;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/HashSet;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_2

    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mTemporaryKeys:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$400(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashSet;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/HashSet;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    .line 270
    :cond_2
    const/4 v15, 0x2

    invoke-virtual {v9, v15}, Lcom/google/common/io/protocol/ProtoBuf;->addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v10

    .line 271
    .local v10, requestApp:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v16, 0x3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move/from16 v0, v16

    invoke-virtual {v10, v0, v15}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 272
    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mApiKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$100(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 273
    const/16 v15, 0x14

    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mApiKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$100(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 276
    :cond_3
    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mUpdates:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$200(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 277
    .local v14, update:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    const/4 v12, 0x6

    .line 278
    .local v12, tag:I
    const/4 v15, 0x6

    invoke-virtual {v10, v15}, Lcom/google/common/io/protocol/ProtoBuf;->addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v11

    .line 279
    .local v11, setting:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v16, 0x1

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move/from16 v0, v16

    invoke-virtual {v11, v0, v15}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 280
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 281
    const/16 v16, 0x2

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    move/from16 v0, v16

    invoke-virtual {v11, v0, v15}, Lcom/google/common/io/protocol/ProtoBuf;->setBytes(I[B)V

    goto :goto_1

    .line 284
    .end local v11           #setting:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v12           #tag:I
    .end local v14           #update:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    :cond_5
    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mUpdates:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$200(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/HashMap;->clear()V

    .line 286
    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mDeletedPrefixes:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$300(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashSet;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 287
    .local v8, prefix:Ljava/lang/String;
    const/16 v12, 0xa

    .line 288
    .restart local v12       #tag:I
    const/16 v15, 0xa

    invoke-virtual {v10, v15}, Lcom/google/common/io/protocol/ProtoBuf;->addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 289
    .local v3, delete:Lcom/google/common/io/protocol/ProtoBuf;
    const-string v15, ""

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 290
    const/16 v15, 0xc

    invoke-virtual {v3, v15, v8}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_2

    .line 294
    .end local v3           #delete:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v8           #prefix:Ljava/lang/String;
    .end local v12           #tag:I
    :cond_7
    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mTemporaryKeys:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$400(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashSet;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 295
    .local v6, key:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/backup/BackupRequestGenerator;->mTempPrefix:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 296
    .local v13, tempKey:Ljava/lang/String;
    const/4 v15, 0x7

    invoke-virtual {v10, v15}, Lcom/google/common/io/protocol/ProtoBuf;->addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    .line 297
    .local v7, move:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v15, 0x8

    invoke-virtual {v7, v15, v13}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 298
    const/16 v15, 0x9

    invoke-virtual {v7, v15, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    goto :goto_3

    .line 300
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #move:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v13           #tempKey:Ljava/lang/String;
    :cond_8
    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mTemporaryKeys:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$400(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashSet;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/HashSet;->clear()V

    goto/16 :goto_0

    .line 303
    .end local v1           #app:Lcom/google/android/backup/BackupRequestGenerator$Application;
    .end local v2           #appEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/backup/BackupRequestGenerator$Application;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v10           #requestApp:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_9
    return-object v9
.end method

.method public makePartialRequest()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 12

    .prologue
    const/4 v11, 0x2

    .line 171
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v8, Lcom/google/android/backup/proto/BackupMessageTypes;->BACKUP_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v8}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 172
    .local v3, request:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v8, 0x13

    invoke-virtual {v3, v8, v11}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 176
    iget-boolean v8, p0, Lcom/google/android/backup/BackupRequestGenerator;->mSendInitialize:Z

    if-eqz v8, :cond_0

    .line 177
    const/16 v8, 0x11

    invoke-virtual {v3, v8}, Lcom/google/common/io/protocol/ProtoBuf;->addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    .line 178
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/google/android/backup/BackupRequestGenerator;->mSendInitialize:Z

    .line 181
    :cond_0
    iget-object v8, p0, Lcom/google/android/backup/BackupRequestGenerator;->mApplications:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 182
    .local v1, appEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/backup/BackupRequestGenerator$Application;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/backup/BackupRequestGenerator$Application;

    .line 183
    .local v0, app:Lcom/google/android/backup/BackupRequestGenerator$Application;
    const/4 v4, 0x0

    .line 184
    .local v4, requestApp:Lcom/google/common/io/protocol/ProtoBuf;
    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mUpdates:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$200(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 185
    .local v7, updates:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 186
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 187
    .local v6, update:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 189
    if-nez v4, :cond_3

    .line 190
    invoke-virtual {v3, v11}, Lcom/google/common/io/protocol/ProtoBuf;->addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 191
    const/4 v9, 0x3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v9, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 192
    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mApiKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$100(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 193
    const/16 v8, 0x14

    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mApiKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$100(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 197
    :cond_3
    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mTemporaryKeys:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$400(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 198
    const/16 v8, 0xa

    invoke-virtual {v4, v8}, Lcom/google/common/io/protocol/ProtoBuf;->addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v8

    const/16 v9, 0xc

    const-string v10, "_tmp_"

    invoke-virtual {v8, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 202
    :cond_4
    const/4 v8, 0x6

    invoke-virtual {v4, v8}, Lcom/google/common/io/protocol/ProtoBuf;->addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 203
    .local v5, u:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v9, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/google/android/backup/BackupRequestGenerator;->mTempPrefix:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 204
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v11, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setBytes(I[B)V

    .line 206
    #getter for: Lcom/google/android/backup/BackupRequestGenerator$Application;->mTemporaryKeys:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/google/android/backup/BackupRequestGenerator$Application;->access$400(Lcom/google/android/backup/BackupRequestGenerator$Application;)Ljava/util/HashSet;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 211
    .end local v0           #app:Lcom/google/android/backup/BackupRequestGenerator$Application;
    .end local v1           #appEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/backup/BackupRequestGenerator$Application;>;"
    .end local v4           #requestApp:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v5           #u:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v6           #update:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local v7           #updates:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    :cond_5
    return-object v3
.end method
