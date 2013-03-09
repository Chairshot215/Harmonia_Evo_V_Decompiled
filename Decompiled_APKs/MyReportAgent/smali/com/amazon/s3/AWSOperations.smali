.class public Lcom/amazon/s3/AWSOperations;
.super Ljava/lang/Object;
.source "AWSOperations.java"


# static fields
.field public static final LOCATION_DEFAULT:Ljava/lang/String; = null

.field public static final LOCATION_EU:Ljava/lang/String; = "EU"


# instance fields
.field private Method1:Lorg/apache/http/client/methods/HttpPut;

.field private Method2:Lorg/apache/http/client/methods/HttpPost;

.field private Method3:Lorg/apache/http/client/methods/HttpGet;

.field TAG:Ljava/lang/String;

.field private awsAccessKeyId:Ljava/lang/String;

.field private awsSecretAccessKey:Ljava/lang/String;

.field private callingFormat:Lcom/amazon/s3/CallingFormat;

.field private isSecure:Z

.field private port:I

.field private server:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/s3/AWSOperations;->LOCATION_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "awsAccessKeyId"
    .parameter "awsSecretAccessKey"

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/s3/AWSOperations;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "awsAccessKeyId"
    .parameter "awsSecretAccessKey"
    .parameter "isSecure"

    .prologue
    .line 80
    const-string v0, "s3.amazonaws.com"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/s3/AWSOperations;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .parameter "awsAccessKeyId"
    .parameter "awsSecretAccessKey"
    .parameter "isSecure"
    .parameter "server"

    .prologue
    .line 85
    if-eqz p3, :cond_0

    const/16 v5, 0x1bb

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/AWSOperations;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 87
    return-void

    .line 85
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
    .line 91
    invoke-static {}, Lcom/amazon/s3/CallingFormat;->getSubdomainCallingFormat()Lcom/amazon/s3/CallingFormat;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/s3/AWSOperations;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/amazon/s3/CallingFormat;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/amazon/s3/CallingFormat;)V
    .locals 2
    .parameter "awsAccessKeyId"
    .parameter "awsSecretAccessKey"
    .parameter "isSecure"
    .parameter "server"
    .parameter "port"
    .parameter "format"

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/amazon/s3/AWSOperations;->TAG:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/amazon/s3/AWSOperations;->Method1:Lorg/apache/http/client/methods/HttpPut;

    .line 71
    iput-object v1, p0, Lcom/amazon/s3/AWSOperations;->Method2:Lorg/apache/http/client/methods/HttpPost;

    .line 72
    iput-object v1, p0, Lcom/amazon/s3/AWSOperations;->Method3:Lorg/apache/http/client/methods/HttpGet;

    .line 103
    iput-object p1, p0, Lcom/amazon/s3/AWSOperations;->awsAccessKeyId:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/amazon/s3/AWSOperations;->awsSecretAccessKey:Ljava/lang/String;

    .line 105
    iput-boolean p3, p0, Lcom/amazon/s3/AWSOperations;->isSecure:Z

    .line 106
    iput-object p4, p0, Lcom/amazon/s3/AWSOperations;->server:Ljava/lang/String;

    .line 107
    iput p5, p0, Lcom/amazon/s3/AWSOperations;->port:I

    .line 108
    iput-object p6, p0, Lcom/amazon/s3/AWSOperations;->callingFormat:Lcom/amazon/s3/CallingFormat;

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/amazon/s3/CallingFormat;)V
    .locals 7
    .parameter "awsAccessKeyId"
    .parameter "awsSecretAccessKey"
    .parameter "isSecure"
    .parameter "server"
    .parameter "format"

    .prologue
    .line 98
    if-eqz p3, :cond_0

    const/16 v5, 0x1bb

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/s3/AWSOperations;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/amazon/s3/CallingFormat;)V

    .line 100
    return-void

    .line 98
    :cond_0
    const/16 v5, 0x50

    goto :goto_0
.end method

.method private addAuthHeader(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .parameter "method1"
    .parameter "bucket"
    .parameter "key"
    .parameter "pathArgs"

    .prologue
    .line 171
    const-string v3, "Date"

    invoke-interface {p1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 172
    const-string v3, "Date"

    invoke-static {}, Lcom/amazon/s3/AWSOperations;->httpDate()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    const-string v3, "Content-Type"

    invoke-interface {p1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 175
    const-string v3, "Content-Type"

    const-string v4, ""

    invoke-interface {p1, v3, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_1
    const/4 v2, 0x0

    .line 178
    .local v2, method:Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PUT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "PUT"

    .line 181
    :goto_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-static {v2, p2, p3, p4, v3}, Lcom/amazon/s3/Utils;->makeCanonicalStringForHttpClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, canonicalString:Ljava/lang/String;
    iget-object v3, p0, Lcom/amazon/s3/AWSOperations;->awsSecretAccessKey:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/amazon/s3/Utils;->encode(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, encodedCanonical:Ljava/lang/String;
    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AWS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/s3/AWSOperations;->awsAccessKeyId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void

    .line 179
    .end local v0           #canonicalString:Ljava/lang/String;
    .end local v1           #encodedCanonical:Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "POST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "POST"

    goto :goto_0

    .line 180
    :cond_3
    const-string v2, "GET"

    goto :goto_0
.end method

.method private addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .parameter "method1"
    .parameter "headers"
    .parameter "prefix"

    .prologue
    .line 133
    if-eqz p2, :cond_1

    .line 134
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 136
    .local v2, key:Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 137
    .local v1, j:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 139
    .local v3, value:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    .end local v0           #i:Ljava/util/Iterator;
    .end local v1           #j:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private addMetadataHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .locals 1
    .parameter "method1"
    .parameter "metadata"

    .prologue
    .line 151
    const-string v0, "x-amz-meta-"

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/s3/AWSOperations;->addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static httpDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss "

    .line 119
    .local v0, DateFormat:Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss "

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 120
    .local v1, format:Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/s3/S3Object;I)Lcom/amazon/s3/Result;
    .locals 27
    .parameter "method"
    .parameter "bucket"
    .parameter "key"
    .parameter "pathArgs"
    .parameter "headers"
    .parameter "object"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 205
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazon/s3/AWSOperations;->callingFormat:Lcom/amazon/s3/CallingFormat;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/amazon/s3/AWSOperations;->isSecure:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amazon/s3/AWSOperations;->server:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/amazon/s3/AWSOperations;->port:I

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/amazon/s3/CallingFormat;->getURL(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v25

    .line 207
    .local v25, url:Ljava/net/URL;
    const-string v4, "PUT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 208
    new-instance v4, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/amazon/s3/AWSOperations;->Method1:Lorg/apache/http/client/methods/HttpPut;

    .line 227
    new-instance v23, Lcom/amazon/s3/Result;

    invoke-direct/range {v23 .. v23}, Lcom/amazon/s3/Result;-><init>()V

    .line 228
    .local v23, result:Lcom/amazon/s3/Result;
    const/16 v22, 0x0

    .line 229
    .local v22, response:Lorg/apache/http/HttpResponse;
    const/4 v4, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/amazon/s3/Result;->setStatusCode(I)V

    .line 231
    const/16 v16, 0x0

    .line 233
    .local v16, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v21, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v21 .. v21}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 234
    .local v21, parameters:Lorg/apache/http/params/HttpParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazon/s3/AWSOperations;->callingFormat:Lcom/amazon/s3/CallingFormat;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/amazon/s3/Utils;->getCallingFormatForBucket(Lcom/amazon/s3/CallingFormat;Ljava/lang/String;)Lcom/amazon/s3/CallingFormat;

    move-result-object v13

    .line 235
    .local v13, callingFormat:Lcom/amazon/s3/CallingFormat;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/amazon/s3/AWSOperations;->isSecure:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/amazon/s3/CallingFormat;->getPathCallingFormat()Lcom/amazon/s3/CallingFormat;

    move-result-object v4

    if-eq v13, v4, :cond_0

    const-string v4, "."

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 237
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "You are making an SSL connection, however, the bucket contains periods and the wildcard certificate will not match by default.  Please consider using HTTP."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 245
    :cond_0
    const/4 v11, 0x0

    .line 246
    .local v11, body:Lorg/apache/http/HttpEntity;
    :try_start_0
    move-object/from16 v0, p6

    iget-boolean v4, v0, Lcom/amazon/s3/S3Object;->isByteArray:Z

    if-eqz v4, :cond_6

    .line 247
    new-instance v12, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, p6

    iget-object v4, v0, Lcom/amazon/s3/S3Object;->data2:[B

    invoke-direct {v12, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .end local v11           #body:Lorg/apache/http/HttpEntity;
    .local v12, body:Lorg/apache/http/HttpEntity;
    move-object v11, v12

    .line 250
    .end local v12           #body:Lorg/apache/http/HttpEntity;
    .restart local v11       #body:Lorg/apache/http/HttpEntity;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazon/s3/AWSOperations;->Method1:Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {v4, v11}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 252
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i:Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 253
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 254
    .local v20, key1:Ljava/lang/String;
    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 255
    .local v19, j:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 256
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 257
    .local v26, value:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazon/s3/AWSOperations;->Method1:Lorg/apache/http/client/methods/HttpPut;

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 298
    .end local v18           #i:Ljava/util/Iterator;
    .end local v19           #j:Ljava/util/Iterator;
    .end local v20           #key1:Ljava/lang/String;
    .end local v26           #value:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 299
    .local v14, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 300
    .local v15, exMessage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazon/s3/AWSOperations;->TAG:Ljava/lang/String;

    invoke-static {v4, v15}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v4, -0x2

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/amazon/s3/Result;->setStatusCode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    const/16 v23, 0x0

    .line 308
    const/16 v16, 0x0

    .line 309
    const/16 v21, 0x0

    .line 311
    .end local v11           #body:Lorg/apache/http/HttpEntity;
    .end local v13           #callingFormat:Lcom/amazon/s3/CallingFormat;
    .end local v14           #ex:Ljava/lang/Exception;
    .end local v15           #exMessage:Ljava/lang/String;
    .end local v16           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v21           #parameters:Lorg/apache/http/params/HttpParams;
    .end local v22           #response:Lorg/apache/http/HttpResponse;
    .end local v23           #result:Lcom/amazon/s3/Result;
    :goto_3
    return-object v23

    .line 209
    :cond_3
    const-string v4, "POST"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazon/s3/AWSOperations;->TAG:Ljava/lang/String;

    const-string v5, "Invalid operation(POST) issued. only support put"

    invoke-static {v4, v5}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/16 v23, 0x0

    goto :goto_3

    .line 215
    :cond_4
    const-string v4, "GET"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazon/s3/AWSOperations;->TAG:Ljava/lang/String;

    const-string v5, "Invalid operation(GET) issued. only support put"

    invoke-static {v4, v5}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/16 v23, 0x0

    goto :goto_3

    .line 222
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazon/s3/AWSOperations;->TAG:Ljava/lang/String;

    const-string v5, "Invalid operation issued."

    invoke-static {v4, v5}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/16 v23, 0x0

    goto :goto_3

    .line 248
    .restart local v11       #body:Lorg/apache/http/HttpEntity;
    .restart local v13       #callingFormat:Lcom/amazon/s3/CallingFormat;
    .restart local v16       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v21       #parameters:Lorg/apache/http/params/HttpParams;
    .restart local v22       #response:Lorg/apache/http/HttpResponse;
    .restart local v23       #result:Lcom/amazon/s3/Result;
    :cond_6
    :try_start_2
    move-object/from16 v0, p6

    iget-boolean v4, v0, Lcom/amazon/s3/S3Object;->isFile:Z

    if-eqz v4, :cond_1

    .line 249
    new-instance v12, Lorg/apache/http/entity/FileEntity;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/amazon/s3/S3Object;->file_ab_location:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "application/octet-stream"

    invoke-direct {v12, v4, v5}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v11           #body:Lorg/apache/http/HttpEntity;
    .restart local v12       #body:Lorg/apache/http/HttpEntity;
    move-object v11, v12

    .end local v12           #body:Lorg/apache/http/HttpEntity;
    .restart local v11       #body:Lorg/apache/http/HttpEntity;
    goto/16 :goto_0

    .line 261
    .restart local v18       #i:Ljava/util/Iterator;
    :cond_7
    if-eqz p6, :cond_8

    .line 262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazon/s3/AWSOperations;->Method1:Lorg/apache/http/client/methods/HttpPut;

    move-object/from16 v0, p6

    iget-object v5, v0, Lcom/amazon/s3/S3Object;->metadata:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/amazon/s3/AWSOperations;->addMetadataHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 263
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazon/s3/AWSOperations;->Method1:Lorg/apache/http/client/methods/HttpPut;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/amazon/s3/AWSOperations;->addAuthHeader(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 265
    new-instance v17, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 267
    .end local v16           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v17, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_3
    move-object/from16 v0, v21

    move/from16 v1, p7

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 268
    move-object/from16 v0, v21

    move/from16 v1, p7

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazon/s3/AWSOperations;->Method1:Lorg/apache/http/client/methods/HttpPut;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    .line 290
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/amazon/s3/Result;->resultBytes:[B

    .line 291
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/amazon/s3/Result;->setStatusCode(I)V

    .line 292
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/amazon/s3/Result;->setResponseHeaders([Lorg/apache/http/Header;)V

    .line 293
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/amazon/s3/Result;->resultBytes:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/amazon/s3/Result;->setResponeDescription(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazon/s3/AWSOperations;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "statusCode=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    iget v6, v0, Lcom/amazon/s3/Result;->statusCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], responseStatus=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], response Description=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Lcom/amazon/s3/Result;->getResponeDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/BugReport/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 304
    const/16 v24, 0x0

    .line 308
    .end local v23           #result:Lcom/amazon/s3/Result;
    .local v24, result:Lcom/amazon/s3/Result;
    const/16 v16, 0x0

    .line 309
    .end local v17           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v16       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 304
    .end local v18           #i:Ljava/util/Iterator;
    .end local v24           #result:Lcom/amazon/s3/Result;
    .restart local v23       #result:Lcom/amazon/s3/Result;
    :catchall_0
    move-exception v4

    :goto_4
    const/16 v23, 0x0

    .line 308
    const/16 v16, 0x0

    .line 309
    const/16 v21, 0x0

    throw v4

    .line 304
    .end local v16           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18       #i:Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    move-object/from16 v16, v17

    .end local v17           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v16       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    goto :goto_4

    .line 298
    .end local v16           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v17       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :catch_1
    move-exception v14

    move-object/from16 v16, v17

    .end local v17           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v16       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    goto/16 :goto_2
.end method


# virtual methods
.method public Put(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/s3/S3Object;Ljava/util/Map;I)Lcom/amazon/s3/Result;
    .locals 11
    .parameter "bucket"
    .parameter "key"
    .parameter "object"
    .parameter "headers"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 315
    const/4 v10, 0x0

    .line 317
    .local v10, result:Lcom/amazon/s3/Result;
    :try_start_0
    const-string v1, "PUT"

    invoke-static {p2}, Lcom/amazon/s3/Utils;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p4

    move-object v6, p3

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/amazon/s3/AWSOperations;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/s3/S3Object;I)Lcom/amazon/s3/Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 324
    :goto_0
    return-object v10

    .line 318
    :catch_0
    move-exception v8

    .line 319
    .local v8, e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 320
    .local v9, exMessage:Ljava/lang/String;
    iget-object v0, p0, Lcom/amazon/s3/AWSOperations;->TAG:Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/htc/BugReport/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v10, Lcom/amazon/s3/Result;

    .end local v10           #result:Lcom/amazon/s3/Result;
    invoke-direct {v10}, Lcom/amazon/s3/Result;-><init>()V

    .line 322
    .restart local v10       #result:Lcom/amazon/s3/Result;
    const/4 v0, -0x2

    invoke-virtual {v10, v0}, Lcom/amazon/s3/Result;->setStatusCode(I)V

    goto :goto_0
.end method
