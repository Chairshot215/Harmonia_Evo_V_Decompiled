.class public Lcom/amazon/s3/QueryStringAuthGenerator;
.super Ljava/lang/Object;
.source "QueryStringAuthGenerator.java"


# static fields
.field private static final DEFAULT_EXPIRES_IN:Ljava/lang/Long;


# instance fields
.field private awsAccessKeyId:Ljava/lang/String;

.field private awsSecretAccessKey:Ljava/lang/String;

.field private callingFormat:Lcom/amazon/s3/CallingFormat;

.field private expires:Ljava/lang/Long;

.field private expiresIn:Ljava/lang/Long;

.field private isSecure:Z

.field private port:I

.field private server:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Long;

    const-wide/32 v1, 0xea60

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/amazon/s3/QueryStringAuthGenerator;->DEFAULT_EXPIRES_IN:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "awsAccessKeyId"
    .parameter "awsSecretAccessKey"

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/s3/QueryStringAuthGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "awsAccessKeyId"
    .parameter "awsSecretAccessKey"
    .parameter "isSecure"

    .prologue
    .line 48
    const-string v0, "s3.amazonaws.com"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/s3/QueryStringAuthGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .parameter "awsAccessKeyId"
    .parameter "awsSecretAccessKey"
    .parameter "isSecure"
    .parameter "server"

    .prologue
    .line 54
    if-eqz p3, :cond_0

    const/16 v5, 0x1bb

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/QueryStringAuthGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 56
    return-void

    .line 54
    :cond_0
    const/16 v5, 0x50

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 7
    .parameter "awsAccessKeyId"
    .parameter "awsSecretAccessKey"
    .parameter "isSecure"
    .parameter "server"
    .parameter "port"

    .prologue
    .line 61
    invoke-static {}, Lcom/amazon/s3/CallingFormat;->getSubdomainCallingFormat()Lcom/amazon/s3/CallingFormat;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/s3/QueryStringAuthGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/amazon/s3/CallingFormat;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/amazon/s3/CallingFormat;)V
    .locals 2
    .parameter "awsAccessKeyId"
    .parameter "awsSecretAccessKey"
    .parameter "isSecure"
    .parameter "server"
    .parameter "port"
    .parameter "callingFormat"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->expiresIn:Ljava/lang/Long;

    .line 36
    iput-object v1, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->expires:Ljava/lang/Long;

    .line 76
    iput-object p1, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->awsAccessKeyId:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->awsSecretAccessKey:Ljava/lang/String;

    .line 78
    iput-boolean p3, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->isSecure:Z

    .line 79
    iput-object p4, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->server:Ljava/lang/String;

    .line 80
    iput p5, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->port:I

    .line 81
    iput-object p6, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->callingFormat:Lcom/amazon/s3/CallingFormat;

    .line 83
    sget-object v0, Lcom/amazon/s3/QueryStringAuthGenerator;->DEFAULT_EXPIRES_IN:Ljava/lang/Long;

    iput-object v0, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->expiresIn:Ljava/lang/Long;

    .line 84
    iput-object v1, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->expires:Ljava/lang/Long;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/amazon/s3/CallingFormat;)V
    .locals 7
    .parameter "awsAccessKeyId"
    .parameter "awsSecretAccessKey"
    .parameter "isSecure"
    .parameter "server"
    .parameter "callingFormat"

    .prologue
    .line 68
    if-eqz p3, :cond_0

    const/16 v5, 0x1bb

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/s3/QueryStringAuthGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/amazon/s3/CallingFormat;)V

    .line 71
    return-void

    .line 68
    :cond_0
    const/16 v5, 0x50

    goto :goto_0
.end method

.method private generateURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 15
    .parameter "method"
    .parameter "bucketName"
    .parameter "key"
    .parameter "pathArgs"
    .parameter "headers"

    .prologue
    .line 208
    const-wide/16 v11, 0x0

    .line 209
    .local v11, expires:J
    iget-object v2, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->expiresIn:Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->expiresIn:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long v11, v2, v4

    .line 218
    :goto_0
    const-wide/16 v2, 0x3e8

    div-long/2addr v11, v2

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v1 .. v6}, Lcom/amazon/s3/Utils;->makeCanonicalString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 221
    .local v8, canonicalString:Ljava/lang/String;
    iget-object v2, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->awsSecretAccessKey:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v8, v3}, Lcom/amazon/s3/Utils;->encode(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 223
    .local v10, encodedCanonical:Ljava/lang/String;
    const-string v2, "Signature"

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v2, "Expires"

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v2, "AWSAccessKeyId"

    iget-object v3, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->awsAccessKeyId:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v2, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->callingFormat:Lcom/amazon/s3/CallingFormat;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/amazon/s3/Utils;->getCallingFormatForBucket(Lcom/amazon/s3/CallingFormat;Ljava/lang/String;)Lcom/amazon/s3/CallingFormat;

    move-result-object v1

    .line 228
    .local v1, callingFormat:Lcom/amazon/s3/CallingFormat;
    iget-boolean v2, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->isSecure:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/amazon/s3/CallingFormat;->getPathCallingFormat()Lcom/amazon/s3/CallingFormat;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const-string v2, "."

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 229
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "You are making an SSL connection, however, the bucket contains periods and the wildcard certificate will not match by default.  Please consider using HTTP."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 234
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->isSecure:Z

    iget-object v3, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->server:Ljava/lang/String;

    iget v4, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->port:I

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/s3/CallingFormat;->getURL(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v14

    .line 235
    .local v14, url:Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 240
    .end local v14           #url:Ljava/net/URL;
    .local v13, returnString:Ljava/lang/String;
    :goto_1
    return-object v13

    .line 211
    .end local v1           #callingFormat:Lcom/amazon/s3/CallingFormat;
    .end local v8           #canonicalString:Ljava/lang/String;
    .end local v10           #encodedCanonical:Ljava/lang/String;
    .end local v13           #returnString:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->expires:Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 212
    iget-object v2, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->expires:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto/16 :goto_0

    .line 214
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Illegal expires state"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    .restart local v1       #callingFormat:Lcom/amazon/s3/CallingFormat;
    .restart local v8       #canonicalString:Ljava/lang/String;
    .restart local v10       #encodedCanonical:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 237
    .local v9, e:Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception generating url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .restart local v13       #returnString:Ljava/lang/String;
    goto :goto_1
.end method

.method private mergeMeta(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .parameter "headers"
    .parameter "metadata"

    .prologue
    .line 244
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 245
    .local v2, merged:Ljava/util/Map;
    if-eqz p1, :cond_0

    .line 246
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 248
    .local v1, key:Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 251
    .end local v0           #i:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_2

    .line 252
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 253
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 254
    .restart local v1       #key:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x-amz-meta-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, metadataKey:Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 256
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 258
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 262
    .end local v0           #i:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #metadataKey:Ljava/lang/String;
    :cond_2
    return-object v2
.end method


# virtual methods
.method public createBucket(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter "bucket"
    .parameter "headers"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->callingFormat:Lcom/amazon/s3/CallingFormat;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/amazon/s3/Utils;->validateBucketName(Ljava/lang/String;Lcom/amazon/s3/CallingFormat;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Bucket Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v4, pathArgs:Ljava/util/Map;
    const-string v1, "PUT"

    const-string v3, ""

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/QueryStringAuthGenerator;->generateURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter "bucket"
    .parameter "key"
    .parameter "headers"

    .prologue
    .line 149
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v4, pathArgs:Ljava/util/Map;
    const-string v1, "DELETE"

    invoke-static {p2}, Lcom/amazon/s3/Utils;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/QueryStringAuthGenerator;->generateURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteBucket(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter "bucket"
    .parameter "headers"

    .prologue
    .line 126
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v4, pathArgs:Ljava/util/Map;
    const-string v1, "DELETE"

    const-string v3, ""

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/QueryStringAuthGenerator;->generateURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter "bucket"
    .parameter "key"
    .parameter "headers"

    .prologue
    .line 143
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v4, pathArgs:Ljava/util/Map;
    const-string v1, "GET"

    invoke-static {p2}, Lcom/amazon/s3/Utils;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/QueryStringAuthGenerator;->generateURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getACL(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter "bucket"
    .parameter "key"
    .parameter "headers"

    .prologue
    .line 171
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 172
    .local v4, pathArgs:Ljava/util/Map;
    const-string v0, "acl"

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v1, "GET"

    invoke-static {p2}, Lcom/amazon/s3/Utils;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/QueryStringAuthGenerator;->generateURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBucketACL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .parameter "bucket"
    .parameter "headers"

    .prologue
    .line 166
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/s3/QueryStringAuthGenerator;->getACL(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBucketLogging(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter "bucket"
    .parameter "headers"

    .prologue
    .line 154
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v4, pathArgs:Ljava/util/Map;
    const-string v0, "logging"

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v1, "GET"

    const-string v3, ""

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/QueryStringAuthGenerator;->generateURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listAllMyBuckets(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter "headers"

    .prologue
    .line 189
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v4, pathArgs:Ljava/util/Map;
    const-string v1, "GET"

    const-string v2, ""

    const-string v3, ""

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/QueryStringAuthGenerator;->generateURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter "bucket"
    .parameter "prefix"
    .parameter "marker"
    .parameter "maxKeys"
    .parameter "delimiter"
    .parameter "headers"

    .prologue
    .line 120
    invoke-static {p2, p3, p4, p5}, Lcom/amazon/s3/Utils;->paramsForListOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 121
    .local v4, pathArgs:Ljava/util/Map;
    const-string v1, "GET"

    const-string v3, ""

    move-object v0, p0

    move-object v2, p1

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/QueryStringAuthGenerator;->generateURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .parameter "bucket"
    .parameter "prefix"
    .parameter "marker"
    .parameter "maxKeys"
    .parameter "headers"

    .prologue
    .line 114
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/s3/QueryStringAuthGenerator;->listBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public makeBareURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bucket"
    .parameter "key"

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 195
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget-boolean v1, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->isSecure:Z

    if-eqz v1, :cond_0

    .line 196
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    :goto_0
    iget-object v1, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Lcom/amazon/s3/Utils;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 198
    :cond_0
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/s3/S3Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .parameter "bucket"
    .parameter "key"
    .parameter "object"
    .parameter "headers"

    .prologue
    .line 131
    const/4 v6, 0x0

    .line 132
    .local v6, metadata:Ljava/util/Map;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 133
    .local v4, pathArgs:Ljava/util/Map;
    if-eqz p3, :cond_0

    .line 134
    iget-object v6, p3, Lcom/amazon/s3/S3Object;->metadata:Ljava/util/Map;

    .line 138
    :cond_0
    const-string v1, "PUT"

    invoke-static {p2}, Lcom/amazon/s3/Utils;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p4, v6}, Lcom/amazon/s3/QueryStringAuthGenerator;->mergeMeta(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/QueryStringAuthGenerator;->generateURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putACL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter "bucket"
    .parameter "key"
    .parameter "aclXMLDoc"
    .parameter "headers"

    .prologue
    .line 182
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v4, pathArgs:Ljava/util/Map;
    const-string v0, "acl"

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v1, "PUT"

    invoke-static {p2}, Lcom/amazon/s3/Utils;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/QueryStringAuthGenerator;->generateURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putBucketACL(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .parameter "bucket"
    .parameter "aclXMLDoc"
    .parameter "headers"

    .prologue
    .line 177
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/amazon/s3/QueryStringAuthGenerator;->putACL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putBucketLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter "bucket"
    .parameter "loggingXMLDoc"
    .parameter "headers"

    .prologue
    .line 160
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 161
    .local v4, pathArgs:Ljava/util/Map;
    const-string v0, "logging"

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v1, "PUT"

    const-string v3, ""

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/QueryStringAuthGenerator;->generateURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCallingFormat(Lcom/amazon/s3/CallingFormat;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->callingFormat:Lcom/amazon/s3/CallingFormat;

    .line 90
    return-void
.end method

.method public setExpires(J)V
    .locals 1
    .parameter "millisSinceEpoch"

    .prologue
    .line 93
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->expires:Ljava/lang/Long;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->expiresIn:Ljava/lang/Long;

    .line 95
    return-void
.end method

.method public setExpiresIn(J)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 98
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->expiresIn:Ljava/lang/Long;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/s3/QueryStringAuthGenerator;->expires:Ljava/lang/Long;

    .line 100
    return-void
.end method
