.class public Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;
.super Ljava/lang/Object;
.source "BodyDescriptor.java"


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private boundary:Ljava/lang/String;

.field private charset:Ljava/lang/String;

.field private contentTransferEncSet:Z

.field private contentTypeSet:Z

.field private mimeType:Ljava/lang/String;

.field private parameters:Ljava/util/Map;

.field private transferEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;)V
    .locals 2
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "text/plain"

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->boundary:Ljava/lang/String;

    .line 40
    const-string v0, "us-ascii"

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->charset:Ljava/lang/String;

    .line 41
    const-string v0, "7bit"

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    .line 43
    iput-boolean v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->contentTypeSet:Z

    .line 44
    iput-boolean v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->contentTransferEncSet:Z

    .line 60
    if-eqz p1, :cond_0

    const-string v0, "multipart/digest"

    invoke-virtual {p1, v0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->isMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "message/rfc822"

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    const-string v0, "text/plain"

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method private getHeaderParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 23
    .parameter "headerValue"

    .prologue
    .line 155
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v19, result:Ljava/util/Map;
    const-string v21, ";"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 161
    move-object/from16 v15, p1

    .line 162
    .local v15, main:Ljava/lang/String;
    const/16 v18, 0x0

    .line 168
    .local v18, rest:Ljava/lang/String;
    :goto_0
    const-string v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    if-eqz v18, :cond_a

    .line 170
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    .line 171
    .local v11, chars:[C
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 172
    .local v16, paramName:Ljava/lang/StringBuffer;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 174
    .local v17, paramValue:Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 175
    .local v7, READY_FOR_NAME:B
    const/4 v4, 0x1

    .line 176
    .local v4, IN_NAME:B
    const/4 v8, 0x2

    .line 177
    .local v8, READY_FOR_VALUE:B
    const/4 v6, 0x3

    .line 178
    .local v6, IN_VALUE:B
    const/4 v5, 0x4

    .line 179
    .local v5, IN_QUOTED_VALUE:B
    const/4 v9, 0x5

    .line 180
    .local v9, VALUE_DONE:B
    const/16 v3, 0x63

    .line 182
    .local v3, ERROR:B
    const/16 v20, 0x0

    .line 183
    .local v20, state:B
    const/4 v12, 0x0

    .line 184
    .local v12, escaped:Z
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_9

    .line 185
    aget-char v10, v11, v14

    .line 187
    .local v10, c:C
    sparse-switch v20, :sswitch_data_0

    .line 184
    :cond_0
    :goto_2
    :sswitch_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 164
    .end local v3           #ERROR:B
    .end local v4           #IN_NAME:B
    .end local v5           #IN_QUOTED_VALUE:B
    .end local v6           #IN_VALUE:B
    .end local v7           #READY_FOR_NAME:B
    .end local v8           #READY_FOR_VALUE:B
    .end local v9           #VALUE_DONE:B
    .end local v10           #c:C
    .end local v11           #chars:[C
    .end local v12           #escaped:Z
    .end local v14           #i:I
    .end local v15           #main:Ljava/lang/String;
    .end local v16           #paramName:Ljava/lang/StringBuffer;
    .end local v17           #paramValue:Ljava/lang/StringBuffer;
    .end local v18           #rest:Ljava/lang/String;
    .end local v20           #state:B
    :cond_1
    const/16 v21, 0x0

    const-string v22, ";"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 165
    .restart local v15       #main:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .restart local v18       #rest:Ljava/lang/String;
    goto :goto_0

    .line 189
    .restart local v3       #ERROR:B
    .restart local v4       #IN_NAME:B
    .restart local v5       #IN_QUOTED_VALUE:B
    .restart local v6       #IN_VALUE:B
    .restart local v7       #READY_FOR_NAME:B
    .restart local v8       #READY_FOR_VALUE:B
    .restart local v9       #VALUE_DONE:B
    .restart local v10       #c:C
    .restart local v11       #chars:[C
    .restart local v12       #escaped:Z
    .restart local v14       #i:I
    .restart local v16       #paramName:Ljava/lang/StringBuffer;
    .restart local v17       #paramValue:Ljava/lang/StringBuffer;
    .restart local v20       #state:B
    :sswitch_1
    const/16 v21, 0x3b

    move/from16 v0, v21

    if-ne v10, v0, :cond_0

    .line 190
    const/16 v20, 0x0

    goto :goto_2

    .line 194
    :sswitch_2
    const/16 v21, 0x3d

    move/from16 v0, v21

    if-ne v10, v0, :cond_2

    .line 195
    sget-object v21, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->log:Lorg/apache/commons/logging/Log;

    const-string v22, "Expected header param name, got \'=\'"

    invoke-interface/range {v21 .. v22}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 196
    const/16 v20, 0x63

    .line 197
    goto :goto_2

    .line 200
    :cond_2
    new-instance v16, Ljava/lang/StringBuffer;

    .end local v16           #paramName:Ljava/lang/StringBuffer;
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    .restart local v16       #paramName:Ljava/lang/StringBuffer;
    new-instance v17, Ljava/lang/StringBuffer;

    .end local v17           #paramValue:Ljava/lang/StringBuffer;
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 203
    .restart local v17       #paramValue:Ljava/lang/StringBuffer;
    const/16 v20, 0x1

    .line 207
    :sswitch_3
    const/16 v21, 0x3d

    move/from16 v0, v21

    if-ne v10, v0, :cond_4

    .line 208
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v21

    if-nez v21, :cond_3

    .line 209
    const/16 v20, 0x63

    goto :goto_2

    .line 211
    :cond_3
    const/16 v20, 0x2

    .line 212
    goto :goto_2

    .line 216
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 220
    :sswitch_4
    const/4 v13, 0x0

    .line 221
    .local v13, fallThrough:Z
    sparse-switch v10, :sswitch_data_1

    .line 231
    const/16 v20, 0x3

    .line 232
    const/4 v13, 0x1

    .line 235
    :goto_3
    :sswitch_5
    if-eqz v13, :cond_0

    .line 241
    .end local v13           #fallThrough:Z
    :sswitch_6
    const/4 v13, 0x0

    .line 242
    .restart local v13       #fallThrough:Z
    sparse-switch v10, :sswitch_data_2

    .line 253
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 256
    :goto_4
    if-eqz v13, :cond_0

    .line 260
    .end local v13           #fallThrough:Z
    :sswitch_7
    sparse-switch v10, :sswitch_data_3

    .line 270
    const/16 v20, 0x63

    .line 271
    goto :goto_2

    .line 227
    .restart local v13       #fallThrough:Z
    :sswitch_8
    const/16 v20, 0x4

    .line 228
    goto :goto_3

    .line 246
    :sswitch_9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const/16 v20, 0x5

    .line 250
    const/4 v13, 0x1

    .line 251
    goto :goto_4

    .line 262
    .end local v13           #fallThrough:Z
    :sswitch_a
    const/16 v20, 0x0

    .line 263
    goto/16 :goto_2

    .line 276
    :sswitch_b
    sparse-switch v10, :sswitch_data_4

    .line 298
    if-eqz v12, :cond_5

    .line 299
    const/16 v21, 0x5c

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 301
    :cond_5
    const/4 v12, 0x0

    .line 302
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 278
    :sswitch_c
    if-nez v12, :cond_6

    .line 280
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const/16 v20, 0x5

    goto/16 :goto_2

    .line 285
    :cond_6
    const/4 v12, 0x0

    .line 286
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 291
    :sswitch_d
    if-eqz v12, :cond_7

    .line 292
    const/16 v21, 0x5c

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 294
    :cond_7
    if-nez v12, :cond_8

    const/4 v12, 0x1

    .line 295
    :goto_5
    goto/16 :goto_2

    .line 294
    :cond_8
    const/4 v12, 0x0

    goto :goto_5

    .line 311
    .end local v10           #c:C
    :cond_9
    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 312
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .end local v3           #ERROR:B
    .end local v4           #IN_NAME:B
    .end local v5           #IN_QUOTED_VALUE:B
    .end local v6           #IN_VALUE:B
    .end local v7           #READY_FOR_NAME:B
    .end local v8           #READY_FOR_VALUE:B
    .end local v9           #VALUE_DONE:B
    .end local v11           #chars:[C
    .end local v12           #escaped:Z
    .end local v14           #i:I
    .end local v16           #paramName:Ljava/lang/StringBuffer;
    .end local v17           #paramValue:Ljava/lang/StringBuffer;
    .end local v20           #state:B
    :cond_a
    return-object v19

    .line 187
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_6
        0x4 -> :sswitch_b
        0x5 -> :sswitch_7
        0x63 -> :sswitch_1
    .end sparse-switch

    .line 221
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_5
        0x20 -> :sswitch_5
        0x22 -> :sswitch_8
    .end sparse-switch

    .line 242
    :sswitch_data_2
    .sparse-switch
        0x9 -> :sswitch_9
        0x20 -> :sswitch_9
        0x3b -> :sswitch_9
    .end sparse-switch

    .line 260
    :sswitch_data_3
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
        0x3b -> :sswitch_a
    .end sparse-switch

    .line 276
    :sswitch_data_4
    .sparse-switch
        0x22 -> :sswitch_c
        0x5c -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v11, 0x1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 78
    const-string v10, "content-transfer-encoding"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-boolean v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->contentTransferEncSet:Z

    if-nez v10, :cond_1

    .line 79
    iput-boolean v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->contentTransferEncSet:Z

    .line 81
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 82
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 83
    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string v10, "content-type"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->contentTypeSet:Z

    if-nez v10, :cond_0

    .line 87
    iput-boolean v11, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->contentTypeSet:Z

    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 94
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    .local v6, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 96
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 97
    .local v1, c:C
    const/16 v10, 0xd

    if-eq v1, v10, :cond_2

    const/16 v10, 0xa

    if-ne v1, v10, :cond_3

    .line 95
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100
    :cond_3
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 103
    .end local v1           #c:C
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->getHeaderParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 105
    .local v5, params:Ljava/util/Map;
    const-string v10, ""

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 106
    .local v4, main:Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 107
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 108
    const/16 v10, 0x2f

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 109
    .local v3, index:I
    const/4 v9, 0x0

    .line 110
    .local v9, valid:Z
    const/4 v10, -0x1

    if-eq v3, v10, :cond_5

    .line 111
    const/4 v10, 0x0

    invoke-virtual {v4, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, type:Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, subtype:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 114
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    const/4 v9, 0x1

    .line 119
    .end local v7           #subtype:Ljava/lang/String;
    .end local v8           #type:Ljava/lang/String;
    :cond_5
    if-nez v9, :cond_6

    .line 120
    const/4 v4, 0x0

    .line 123
    .end local v3           #index:I
    .end local v9           #valid:Z
    :cond_6
    const-string v10, "boundary"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    .local v0, b:Ljava/lang/String;
    if-eqz v4, :cond_9

    const-string v10, "multipart/"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-nez v0, :cond_8

    :cond_7
    const-string v10, "multipart/"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 129
    :cond_8
    iput-object v4, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    .line 132
    :cond_9
    invoke-virtual {p0}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->isMultipart()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 133
    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->boundary:Ljava/lang/String;

    .line 136
    :cond_a
    const-string v10, "charset"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    .local v1, c:Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 138
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_b

    .line 140
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->charset:Ljava/lang/String;

    .line 147
    :cond_b
    iget-object v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 148
    iget-object v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    const-string v11, ""

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    const-string v11, "boundary"

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v10, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    const-string v11, "charset"

    invoke-interface {v10, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public isBase64Encoded()Z
    .locals 2

    .prologue
    .line 396
    const-string v0, "base64"

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMessage()Z
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMultipart()Z
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isQuotedPrintableEncoded()Z
    .locals 2

    .prologue
    .line 404
    const-string v0, "quoted-printable"

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->mimeType:Ljava/lang/String;

    return-object v0
.end method
