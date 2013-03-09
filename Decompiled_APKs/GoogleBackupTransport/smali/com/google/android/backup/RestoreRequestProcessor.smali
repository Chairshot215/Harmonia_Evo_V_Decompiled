.class public Lcom/google/android/backup/RestoreRequestProcessor;
.super Ljava/lang/Object;
.source "RestoreRequestProcessor.java"


# instance fields
.field private mFingerprints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNextApplication:I

.field private mRequest:Lcom/google/common/io/protocol/ProtoBuf;

.field private mResponse:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method constructor <init>(J[Ljava/lang/String;I)V
    .locals 5
    .parameter "androidId"
    .parameter "apps"
    .parameter "maxResponseSize"

    .prologue
    const/4 v4, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    array-length v2, p3

    if-nez v2, :cond_1

    .line 88
    iput-object v4, p0, Lcom/google/android/backup/RestoreRequestProcessor;->mRequest:Lcom/google/common/io/protocol/ProtoBuf;

    .line 101
    :cond_0
    iput-object v4, p0, Lcom/google/android/backup/RestoreRequestProcessor;->mResponse:Lcom/google/common/io/protocol/ProtoBuf;

    .line 102
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/backup/RestoreRequestProcessor;->mNextApplication:I

    .line 103
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/backup/RestoreRequestProcessor;->mFingerprints:Ljava/util/HashMap;

    .line 104
    return-void

    .line 90
    :cond_1
    new-instance v2, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/backup/proto/BackupMessageTypes;->BACKUP_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v2, p0, Lcom/google/android/backup/RestoreRequestProcessor;->mRequest:Lcom/google/common/io/protocol/ProtoBuf;

    .line 91
    iget-object v2, p0, Lcom/google/android/backup/RestoreRequestProcessor;->mRequest:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 92
    iget-object v2, p0, Lcom/google/android/backup/RestoreRequestProcessor;->mRequest:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v3, 0xf

    invoke-virtual {v2, v3, p4}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 93
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/google/android/backup/RestoreRequestProcessor;->mRequest:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 95
    .local v0, app:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v2, 0x3

    aget-object v3, p3, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 96
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static makeDeviceRequest()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/backup/proto/BackupMessageTypes;->BACKUP_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 46
    .local v0, request:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    .line 47
    return-object v0
.end method

.method public static processDeviceResponse(Lcom/google/common/io/protocol/ProtoBuf;)[Landroid/app/backup/RestoreSet;
    .locals 10
    .parameter "response"

    .prologue
    const/16 v9, 0xd

    const/4 v8, 0x7

    .line 57
    invoke-virtual {p0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    new-array v1, v3, [Landroid/app/backup/RestoreSet;

    .line 58
    .local v1, devs:[Landroid/app/backup/RestoreSet;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 59
    invoke-virtual {p0, v8, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 64
    .local v0, dev:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v4, Landroid/app/backup/RestoreSet;

    invoke-virtual {v0, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string v5, "device"

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v6

    invoke-direct {v4, v3, v5, v6, v7}, Landroid/app/backup/RestoreSet;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    aput-object v4, v1, v2

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_0
    const-string v3, "generic"

    goto :goto_1

    .line 71
    .end local v0           #dev:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getApplicationData(Ljava/util/Map;)Ljava/lang/String;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, outValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    const/4 v10, 0x4

    const/4 v5, 0x0

    const/4 v9, 0x2

    .line 191
    iget-object v6, p0, Lcom/google/android/backup/RestoreRequestProcessor;->mResponse:Lcom/google/common/io/protocol/ProtoBuf;

    if-nez v6, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-object v5

    .line 192
    :cond_1
    iget v6, p0, Lcom/google/android/backup/RestoreRequestProcessor;->mNextApplication:I

    iget-object v7, p0, Lcom/google/android/backup/RestoreRequestProcessor;->mResponse:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v7, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 193
    iget-object v6, p0, Lcom/google/android/backup/RestoreRequestProcessor;->mResponse:Lcom/google/common/io/protocol/ProtoBuf;

    iget v7, p0, Lcom/google/android/backup/RestoreRequestProcessor;->mNextApplication:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/google/android/backup/RestoreRequestProcessor;->mNextApplication:I

    invoke-virtual {v6, v9, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 198
    .local v0, app:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v0, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 199
    .local v1, count:I
    if-eqz v1, :cond_1

    .line 201
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 202
    invoke-virtual {v0, v10, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 203
    .local v4, setting:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, key:Ljava/lang/String;
    const-string v6, "_tmp_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 201
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    :cond_2
    invoke-virtual {v4, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 207
    invoke-virtual {v4, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v6

    invoke-interface {p1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 209
    :cond_3
    invoke-interface {p1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 212
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #setting:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_4
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public handleResponse(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 20
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/backup/RestoreRequestProcessor;->mResponse:Lcom/google/common/io/protocol/ProtoBuf;

    .line 127
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/backup/RestoreRequestProcessor;->mNextApplication:I

    .line 133
    const/4 v11, 0x0

    .line 134
    .local v11, newRequest:Lcom/google/common/io/protocol/ProtoBuf;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/backup/RestoreRequestProcessor;->mResponse:Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 135
    .local v3, appCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v3, :cond_4

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/backup/RestoreRequestProcessor;->mResponse:Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v13

    .line 137
    .local v13, responseApp:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, appId:Ljava/lang/String;
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 141
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v14

    .line 142
    .local v14, thisFp:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/backup/RestoreRequestProcessor;->mFingerprints:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 143
    .local v8, lastFp:Ljava/lang/Long;
    if-nez v8, :cond_3

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/backup/RestoreRequestProcessor;->mFingerprints:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .end local v8           #lastFp:Ljava/lang/Long;
    .end local v14           #thisFp:J
    :cond_0
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v5

    .line 152
    .local v5, code:I
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v5, v0, :cond_2

    .line 153
    if-nez v11, :cond_1

    .line 154
    new-instance v11, Lcom/google/common/io/protocol/ProtoBuf;

    .end local v11           #newRequest:Lcom/google/common/io/protocol/ProtoBuf;
    sget-object v17, Lcom/google/android/backup/proto/BackupMessageTypes;->BACKUP_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 155
    .restart local v11       #newRequest:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/backup/RestoreRequestProcessor;->mRequest:Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v18

    move/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v11, v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 157
    const/16 v17, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/backup/RestoreRequestProcessor;->mRequest:Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v18, v0

    const/16 v19, 0xf

    invoke-virtual/range {v18 .. v19}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 161
    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/google/common/io/protocol/ProtoBuf;->addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v12

    .line 162
    .local v12, requestApp:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v12, v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 163
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/google/common/io/protocol/ProtoBuf;->addNewProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 166
    .local v6, get:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v10

    .line 167
    .local v10, n:I
    if-lez v10, :cond_2

    .line 168
    const/16 v17, 0x4

    add-int/lit8 v18, v10, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v16

    .line 169
    .local v16, v:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 170
    .local v9, lastKey:Ljava/lang/String;
    const/16 v17, 0x5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 135
    .end local v6           #get:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v9           #lastKey:Ljava/lang/String;
    .end local v10           #n:I
    .end local v12           #requestApp:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v16           #v:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 145
    .end local v5           #code:I
    .restart local v8       #lastFp:Ljava/lang/Long;
    .restart local v14       #thisFp:J
    :cond_3
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 146
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Application "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": Fingerprint changed from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 175
    .end local v4           #appId:Ljava/lang/String;
    .end local v8           #lastFp:Ljava/lang/Long;
    .end local v13           #responseApp:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v14           #thisFp:J
    :cond_4
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/android/backup/RestoreRequestProcessor;->mRequest:Lcom/google/common/io/protocol/ProtoBuf;

    .line 176
    return-void
.end method

.method public nextRequest()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/backup/RestoreRequestProcessor;->mRequest:Lcom/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method
