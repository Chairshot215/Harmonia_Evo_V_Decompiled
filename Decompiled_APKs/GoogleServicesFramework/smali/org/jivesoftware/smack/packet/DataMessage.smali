.class public Lorg/jivesoftware/smack/packet/DataMessage;
.super Lorg/jivesoftware/smack/packet/Message;
.source "DataMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    }
.end annotation


# instance fields
.field private mAppDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/packet/DataMessage$AppData;",
            ">;"
        }
    .end annotation
.end field

.field private mCategory:Ljava/lang/String;

.field private mFromTrustedServer:Z

.field private mPermission:Ljava/lang/String;

.field private mPkgSignature:Ljava/lang/String;

.field private mRegId:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mFromTrustedServer:Z

    .line 47
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->HEADLINE:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/DataMessage;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mAppDataList:Ljava/util/ArrayList;

    .line 49
    return-void
.end method


# virtual methods
.method public addAppData(Lorg/jivesoftware/smack/packet/DataMessage$AppData;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 92
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mAppDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public final getAppDataIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smack/packet/DataMessage$AppData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mAppDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getAppDataSize()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mAppDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionsXML()Ljava/lang/String;
    .locals 11

    .prologue
    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v6, sb:Ljava/lang/StringBuilder;
    const/16 v9, 0x3c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    const-string v9, "data"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v9, " xmlns=\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v9, "google:mobile:data"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getToken()Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, token:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getCategory()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, category:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getPermission()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, permission:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 177
    const-string v9, " category=\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_0
    if-eqz v7, :cond_1

    .line 181
    const-string v9, " token=\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_1
    iget-boolean v9, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mFromTrustedServer:Z

    if-eqz v9, :cond_2

    .line 185
    const-string v9, " from-trusted-server=\"true\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_2
    if-eqz v5, :cond_3

    .line 189
    const-string v9, " permission=\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_3
    const-string v9, ">"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getAppDataSize()I

    move-result v2

    .line 195
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 196
    iget-object v9, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mAppDataList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/DataMessage$AppData;

    .line 197
    .local v0, appData:Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, key:Ljava/lang/String;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 200
    .local v8, value:Ljava/lang/String;
    const-string v9, "<app-data key=\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v9, "\" value=\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v9, "\" />"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    .end local v0           #appData:Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    .end local v4           #key:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_4
    const-string v9, "</"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v9, "data"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const/16 v9, 0x3e

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public getPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mPkgSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getRegId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mRegId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 64
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mCategory:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setFromTrustedServer(Z)V
    .locals 0
    .parameter "fromTrustedServer"

    .prologue
    .line 72
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mFromTrustedServer:Z

    .line 73
    return-void
.end method

.method public setPermission(Ljava/lang/String;)V
    .locals 0
    .parameter "permission"

    .prologue
    .line 96
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mPermission:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setRegId(Ljava/lang/String;)V
    .locals 0
    .parameter "regId"

    .prologue
    .line 104
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mRegId:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 56
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/DataMessage;->mToken:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public toLogString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/DataMessage;->toXML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 20

    .prologue
    .line 219
    new-instance v11, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v18, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->DATA_MESSAGE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 221
    .local v11, protobuf:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getPacketID()Ljava/lang/String;

    move-result-object v7

    .line 222
    .local v7, id:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v18, "ID_NOT_AVAILABLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 223
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v11, v0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 226
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getTo()Ljava/lang/String;

    move-result-object v16

    .line 227
    .local v16, to:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 228
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 231
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getFrom()Ljava/lang/String;

    move-result-object v5

    .line 232
    .local v5, from:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 233
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v11, v0, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 236
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getRmq2Id()Ljava/lang/String;

    move-result-object v13

    .line 237
    .local v13, rmq2Id:Ljava/lang/String;
    if-eqz v13, :cond_a

    .line 238
    const/16 v18, 0x9

    move/from16 v0, v18

    invoke-virtual {v11, v0, v13}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 246
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getLastStreamId()I

    move-result v8

    .line 247
    .local v8, lastStreamId:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v8, v0, :cond_4

    .line 248
    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v11, v0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 251
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getCategory()Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, category:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 253
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v11, v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 256
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getToken()Ljava/lang/String;

    move-result-object v17

    .line 257
    .local v17, token:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 258
    const/16 v18, 0x6

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 261
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getPermission()Ljava/lang/String;

    move-result-object v9

    .line 262
    .local v9, permission:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 263
    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-virtual {v11, v0, v9}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 266
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getRegId()Ljava/lang/String;

    move-result-object v12

    .line 267
    .local v12, regId:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 268
    const/16 v18, 0xd

    move/from16 v0, v18

    invoke-virtual {v11, v0, v12}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 271
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getPkgSignature()Ljava/lang/String;

    move-result-object v10

    .line 272
    .local v10, pkgSignature:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 273
    const/16 v18, 0xe

    move/from16 v0, v18

    invoke-virtual {v11, v0, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 278
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getAppDataSize()I

    move-result v4

    .line 279
    .local v4, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v4, :cond_b

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/packet/DataMessage;->mAppDataList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/DataMessage$AppData;

    .line 281
    .local v2, appData:Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    const/16 v18, 0x7

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;->toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 279
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 240
    .end local v2           #appData:Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    .end local v3           #category:Ljava/lang/String;
    .end local v4           #count:I
    .end local v6           #i:I
    .end local v8           #lastStreamId:I
    .end local v9           #permission:Ljava/lang/String;
    .end local v10           #pkgSignature:Ljava/lang/String;
    .end local v12           #regId:Ljava/lang/String;
    .end local v17           #token:Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smack/packet/DataMessage;->getRmqId()J

    move-result-wide v14

    .line 241
    .local v14, rmqId:J
    const-wide/16 v18, -0x1

    cmp-long v18, v14, v18

    if-eqz v18, :cond_3

    .line 242
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0, v14, v15}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    goto/16 :goto_0

    .line 284
    .end local v14           #rmqId:J
    .restart local v3       #category:Ljava/lang/String;
    .restart local v4       #count:I
    .restart local v6       #i:I
    .restart local v8       #lastStreamId:I
    .restart local v9       #permission:Ljava/lang/String;
    .restart local v10       #pkgSignature:Ljava/lang/String;
    .restart local v12       #regId:Ljava/lang/String;
    .restart local v17       #token:Ljava/lang/String;
    :cond_b
    return-object v11
.end method
