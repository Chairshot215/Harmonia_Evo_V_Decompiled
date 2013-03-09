.class public Lcom/amazon/s3/AWSAuthConnection;
.super Ljava/lang/Object;
.source "AWSAuthConnection.java"


# static fields
.field public static final LOCATION_DEFAULT:Ljava/lang/String; = null

.field public static final LOCATION_EU:Ljava/lang/String; = "EU"


# instance fields
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
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/s3/AWSAuthConnection;->LOCATION_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "awsAccessKeyId"
    .parameter "awsSecretAccessKey"

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/s3/AWSAuthConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "awsAccessKeyId"
    .parameter "awsSecretAccessKey"
    .parameter "isSecure"

    .prologue
    .line 50
    const-string v0, "s3.amazonaws.com"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/s3/AWSAuthConnection;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .parameter "awsAccessKeyId"
    .parameter "awsSecretAccessKey"
    .parameter "isSecure"
    .parameter "server"

    .prologue
    .line 55
    if-eqz p3, :cond_0

    const/16 v5, 0x1bb

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/AWSAuthConnection;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 57
    return-void

    .line 55
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

    invoke-direct/range {v0 .. v6}, Lcom/amazon/s3/AWSAuthConnection;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/amazon/s3/CallingFormat;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/amazon/s3/CallingFormat;)V
    .locals 0
    .parameter "awsAccessKeyId"
    .parameter "awsSecretAccessKey"
    .parameter "isSecure"
    .parameter "server"
    .parameter "port"
    .parameter "format"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/amazon/s3/AWSAuthConnection;->awsAccessKeyId:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/amazon/s3/AWSAuthConnection;->awsSecretAccessKey:Ljava/lang/String;

    .line 95
    iput-boolean p3, p0, Lcom/amazon/s3/AWSAuthConnection;->isSecure:Z

    .line 96
    iput-object p4, p0, Lcom/amazon/s3/AWSAuthConnection;->server:Ljava/lang/String;

    .line 97
    iput p5, p0, Lcom/amazon/s3/AWSAuthConnection;->port:I

    .line 98
    iput-object p6, p0, Lcom/amazon/s3/AWSAuthConnection;->callingFormat:Lcom/amazon/s3/CallingFormat;

    .line 99
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

    invoke-direct/range {v0 .. v6}, Lcom/amazon/s3/AWSAuthConnection;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/amazon/s3/CallingFormat;)V

    .line 70
    return-void

    .line 68
    :cond_0
    const/16 v5, 0x50

    goto :goto_0
.end method

.method private addAuthHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .parameter "connection"
    .parameter "method"
    .parameter "bucket"
    .parameter "key"
    .parameter "pathArgs"

    .prologue
    .line 746
    const-string v2, "Date"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 747
    const-string v2, "Date"

    invoke-static {}, Lcom/amazon/s3/AWSAuthConnection;->httpDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :cond_0
    const-string v2, "Content-Type"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 750
    const-string v2, "Content-Type"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v2

    invoke-static {p2, p3, p4, p5, v2}, Lcom/amazon/s3/Utils;->makeCanonicalString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, canonicalString:Ljava/lang/String;
    iget-object v2, p0, Lcom/amazon/s3/AWSAuthConnection;->awsSecretAccessKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/amazon/s3/Utils;->encode(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 757
    .local v1, encodedCanonical:Ljava/lang/String;
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AWS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/s3/AWSAuthConnection;->awsAccessKeyId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method private addHeaders(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .locals 1
    .parameter "connection"
    .parameter "headers"

    .prologue
    .line 687
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/s3/AWSAuthConnection;->addHeaders(Ljava/net/HttpURLConnection;Ljava/util/Map;Ljava/lang/String;)V

    .line 688
    return-void
.end method

.method private addHeaders(Ljava/net/HttpURLConnection;Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .parameter "connection"
    .parameter "headers"
    .parameter "prefix"

    .prologue
    .line 718
    if-eqz p2, :cond_1

    .line 719
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 720
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 721
    .local v2, key:Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 722
    .local v1, j:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 723
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 724
    .local v3, value:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 728
    .end local v0           #i:Ljava/util/Iterator;
    .end local v1           #j:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private addMetadataHeaders(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .locals 1
    .parameter "connection"
    .parameter "metadata"

    .prologue
    .line 700
    const-string v0, "x-amz-meta-"

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/s3/AWSAuthConnection;->addHeaders(Ljava/net/HttpURLConnection;Ljava/util/Map;Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method public static httpDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 765
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss "

    .line 766
    .local v0, DateFormat:Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss "

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 767
    .local v1, format:Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 768
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

.method private makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 7
    .parameter "method"
    .parameter "bucketName"
    .parameter "key"
    .parameter "pathArgs"
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/s3/AWSAuthConnection;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/s3/S3Object;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method private makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/s3/S3Object;)Ljava/net/HttpURLConnection;
    .locals 8
    .parameter "method"
    .parameter "bucket"
    .parameter "key"
    .parameter "pathArgs"
    .parameter "headers"
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 647
    iget-object v1, p0, Lcom/amazon/s3/AWSAuthConnection;->callingFormat:Lcom/amazon/s3/CallingFormat;

    invoke-static {v1, p2}, Lcom/amazon/s3/Utils;->getCallingFormatForBucket(Lcom/amazon/s3/CallingFormat;Ljava/lang/String;)Lcom/amazon/s3/CallingFormat;

    move-result-object v0

    .line 649
    .local v0, callingFormat:Lcom/amazon/s3/CallingFormat;
    iget-boolean v1, p0, Lcom/amazon/s3/AWSAuthConnection;->isSecure:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/amazon/s3/CallingFormat;->getPathCallingFormat()Lcom/amazon/s3/CallingFormat;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 651
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "You are making an SSL connection, however, the bucket contains periods and the wildcard certificate will not match by default.  Please consider using HTTP."

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 657
    :cond_0
    iget-boolean v1, p0, Lcom/amazon/s3/AWSAuthConnection;->isSecure:Z

    iget-object v2, p0, Lcom/amazon/s3/AWSAuthConnection;->server:Ljava/lang/String;

    iget v3, p0, Lcom/amazon/s3/AWSAuthConnection;->port:I

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/s3/CallingFormat;->getURL(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v7

    .line 660
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 661
    .local v2, connection:Ljava/net/HttpURLConnection;
    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/amazon/s3/CallingFormat;->supportsLocatedBuckets()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "HTTP redirect support required."

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 669
    :cond_1
    invoke-direct {p0, v2, p5}, Lcom/amazon/s3/AWSAuthConnection;->addHeaders(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 670
    if-eqz p6, :cond_2

    .line 671
    iget-object v1, p6, Lcom/amazon/s3/S3Object;->metadata:Ljava/util/Map;

    invoke-direct {p0, v2, v1}, Lcom/amazon/s3/AWSAuthConnection;->addMetadataHeaders(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    :cond_2
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 672
    invoke-direct/range {v1 .. v6}, Lcom/amazon/s3/AWSAuthConnection;->addAuthHeader(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 674
    return-object v2
.end method

.method private verifyCopy(Lcom/amazon/s3/Response;)Lcom/amazon/s3/Response;
    .locals 5
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 357
    iget-object v2, p1, Lcom/amazon/s3/Response;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x190

    if-ge v2, v3, :cond_1

    .line 358
    iget-object v2, p1, Lcom/amazon/s3/Response;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/s3/GetResponse;->slurpInputStream(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 360
    .local v0, body:[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 361
    .local v1, message:Ljava/lang/String;
    const-string v2, "<Error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 362
    new-instance v2, Ljava/io/IOException;

    const-string v3, "<Error"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    :cond_0
    const-string v2, "</CopyObjectResult>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 370
    .end local v0           #body:[B
    .end local v1           #message:Ljava/lang/String;
    :cond_1
    return-object p1

    .line 367
    .restart local v0       #body:[B
    .restart local v1       #message:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public checkBucketExists(Ljava/lang/String;)Z
    .locals 8
    .parameter "bucket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 171
    const-string v1, "HEAD"

    const-string v3, ""

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/AWSAuthConnection;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v7

    .line 172
    .local v7, response:Ljava/net/HttpURLConnection;
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 173
    .local v6, httpCode:I
    const/16 v0, 0xc8

    if-lt v6, v0, :cond_0

    const/16 v0, 0x12c

    if-ge v6, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/s3/Response;
    .locals 7
    .parameter "sourceBucket"
    .parameter "sourceKey"
    .parameter "destinationBucket"
    .parameter "destinationKey"
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 300
    new-instance v0, Lcom/amazon/s3/S3Object;

    new-array v1, v5, [B

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/amazon/s3/S3Object;-><init>([BLjava/util/Map;)V

    .line 301
    .local v0, object:Lcom/amazon/s3/S3Object;
    if-nez p5, :cond_0

    new-instance p5, Ljava/util/HashMap;

    .end local p5
    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 302
    .restart local p5
    :goto_0
    const-string v1, "x-amz-copy-source"

    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v1, "x-amz-metadata-directive"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "COPY"

    aput-object v3, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-virtual {p0, p3, p4, v0, p5}, Lcom/amazon/s3/AWSAuthConnection;->put(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/s3/S3Object;Ljava/util/Map;)Lcom/amazon/s3/Response;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/s3/AWSAuthConnection;->verifyCopy(Lcom/amazon/s3/Response;)Lcom/amazon/s3/Response;

    move-result-object v1

    return-object v1

    .line 301
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p5, v1

    goto :goto_0
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/amazon/s3/Response;
    .locals 7
    .parameter "sourceBucket"
    .parameter "sourceKey"
    .parameter "destinationBucket"
    .parameter "destinationKey"
    .parameter "metadata"
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 334
    new-instance v0, Lcom/amazon/s3/S3Object;

    new-array v1, v5, [B

    invoke-direct {v0, v1, p5}, Lcom/amazon/s3/S3Object;-><init>([BLjava/util/Map;)V

    .line 335
    .local v0, object:Lcom/amazon/s3/S3Object;
    if-nez p6, :cond_0

    new-instance p6, Ljava/util/HashMap;

    .end local p6
    invoke-direct {p6}, Ljava/util/HashMap;-><init>()V

    .line 336
    .restart local p6
    :goto_0
    const-string v1, "x-amz-copy-source"

    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v1, "x-amz-metadata-directive"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "REPLACE"

    aput-object v3, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-virtual {p0, p3, p4, v0, p6}, Lcom/amazon/s3/AWSAuthConnection;->put(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/s3/S3Object;Ljava/util/Map;)Lcom/amazon/s3/Response;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/s3/AWSAuthConnection;->verifyCopy(Lcom/amazon/s3/Response;)Lcom/amazon/s3/Response;

    move-result-object v1

    return-object v1

    .line 335
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p6, v1

    goto :goto_0
.end method

.method public createBucket(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/s3/Response;
    .locals 9
    .parameter "bucket"
    .parameter "location"
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 138
    if-nez p2, :cond_0

    .line 139
    const/4 v6, 0x0

    .line 150
    .local v6, body:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/amazon/s3/AWSAuthConnection;->callingFormat:Lcom/amazon/s3/CallingFormat;

    if-eqz p2, :cond_3

    move v0, v8

    :goto_1
    invoke-static {p1, v1, v0}, Lcom/amazon/s3/Utils;->validateBucketName(Ljava/lang/String;Lcom/amazon/s3/CallingFormat;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 151
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

    .line 140
    .end local v6           #body:Ljava/lang/String;
    :cond_0
    const-string v0, "EU"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/amazon/s3/AWSAuthConnection;->callingFormat:Lcom/amazon/s3/CallingFormat;

    invoke-virtual {v0}, Lcom/amazon/s3/CallingFormat;->supportsLocatedBuckets()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Creating location-constrained bucket with unsupported calling-format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<CreateBucketConstraint><LocationConstraint>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</LocationConstraint></CreateBucketConstraint>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #body:Ljava/lang/String;
    goto :goto_0

    .line 147
    .end local v6           #body:Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    .restart local v6       #body:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 153
    :cond_4
    const-string v1, "PUT"

    const-string v3, ""

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/AWSAuthConnection;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v7

    .line 155
    .local v7, request:Ljava/net/HttpURLConnection;
    if-eqz v6, :cond_5

    .line 156
    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 157
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 159
    :cond_5
    new-instance v0, Lcom/amazon/s3/Response;

    invoke-direct {v0, v7}, Lcom/amazon/s3/Response;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method

.method public createBucket(Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/s3/Response;
    .locals 1
    .parameter "bucket"
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/s3/AWSAuthConnection;->createBucket(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/s3/Response;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/s3/Response;
    .locals 7
    .parameter "bucket"
    .parameter "key"
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    new-instance v6, Lcom/amazon/s3/Response;

    const-string v1, "DELETE"

    invoke-static {p2}, Lcom/amazon/s3/Utils;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/AWSAuthConnection;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/amazon/s3/Response;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v6
.end method

.method public deleteBucket(Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/s3/Response;
    .locals 7
    .parameter "bucket"
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    new-instance v6, Lcom/amazon/s3/Response;

    const-string v1, "DELETE"

    const-string v3, ""

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/AWSAuthConnection;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/amazon/s3/Response;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v6
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/s3/GetResponse;
    .locals 7
    .parameter "bucket"
    .parameter "key"
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    new-instance v6, Lcom/amazon/s3/GetResponse;

    const-string v1, "GET"

    invoke-static {p2}, Lcom/amazon/s3/Utils;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/AWSAuthConnection;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/amazon/s3/GetResponse;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v6
.end method

.method public getACL(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/s3/GetResponse;
    .locals 7
    .parameter "bucket"
    .parameter "key"
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    if-nez p2, :cond_0

    .line 526
    const-string p2, ""

    .line 528
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 529
    .local v4, pathArgs:Ljava/util/Map;
    const-string v0, "acl"

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    new-instance v6, Lcom/amazon/s3/GetResponse;

    const-string v1, "GET"

    invoke-static {p2}, Lcom/amazon/s3/Utils;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/AWSAuthConnection;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/amazon/s3/GetResponse;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v6
.end method

.method public getBucketACL(Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/s3/GetResponse;
    .locals 1
    .parameter "bucket"
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/s3/AWSAuthConnection;->getACL(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/s3/GetResponse;

    move-result-object v0

    return-object v0
.end method

.method public getBucketLocation(Ljava/lang/String;)Lcom/amazon/s3/LocationResponse;
    .locals 7
    .parameter "bucket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 585
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 586
    .local v4, pathArgs:Ljava/util/Map;
    const-string v0, "location"

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    new-instance v6, Lcom/amazon/s3/LocationResponse;

    const-string v1, "GET"

    const-string v3, ""

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/AWSAuthConnection;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/amazon/s3/LocationResponse;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v6
.end method

.method public getBucketLogging(Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/s3/GetResponse;
    .locals 7
    .parameter "bucket"
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 465
    .local v4, pathArgs:Ljava/util/Map;
    const-string v0, "logging"

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    new-instance v6, Lcom/amazon/s3/GetResponse;

    const-string v1, "GET"

    const-string v3, ""

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/AWSAuthConnection;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/amazon/s3/GetResponse;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v6
.end method

.method public getBucketRequestPayment(Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/s3/GetResponse;
    .locals 7
    .parameter "bucket"
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 419
    .local v4, pathArgs:Ljava/util/Map;
    const-string v0, "requestPayment"

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    new-instance v6, Lcom/amazon/s3/GetResponse;

    const-string v1, "GET"

    const-string v3, ""

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/AWSAuthConnection;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/amazon/s3/GetResponse;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v6
.end method

.method public listAllMyBuckets(Ljava/util/Map;)Lcom/amazon/s3/ListAllMyBucketsResponse;
    .locals 7
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    new-instance v6, Lcom/amazon/s3/ListAllMyBucketsResponse;

    const-string v1, "GET"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/AWSAuthConnection;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/amazon/s3/ListAllMyBucketsResponse;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v6
.end method

.method public listBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/s3/ListBucketResponse;
    .locals 7
    .parameter "bucket"
    .parameter "prefix"
    .parameter "marker"
    .parameter "maxKeys"
    .parameter "delimiter"
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {p2, p3, p4, p5}, Lcom/amazon/s3/Utils;->paramsForListOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 224
    .local v4, pathArgs:Ljava/util/Map;
    new-instance v6, Lcom/amazon/s3/ListBucketResponse;

    const-string v1, "GET"

    const-string v3, ""

    move-object v0, p0

    move-object v2, p1

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/s3/AWSAuthConnection;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/amazon/s3/ListBucketResponse;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v6
.end method

.method public listBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)Lcom/amazon/s3/ListBucketResponse;
    .locals 7
    .parameter "bucket"
    .parameter "prefix"
    .parameter "marker"
    .parameter "maxKeys"
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/s3/AWSAuthConnection;->listBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;)Lcom/amazon/s3/ListBucketResponse;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/s3/S3Object;Ljava/util/Map;)Lcom/amazon/s3/Response;
    .locals 12
    .parameter "bucket"
    .parameter "key"
    .parameter "object"
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    const-string v1, "PUT"

    invoke-static {p2}, Lcom/amazon/s3/Utils;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/s3/AWSAuthConnection;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/s3/S3Object;)Ljava/net/HttpURLConnection;

    move-result-object v11

    .line 260
    .local v11, request:Ljava/net/HttpURLConnection;
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 262
    const/16 v0, 0x2000

    new-array v7, v0, [B

    .line 263
    .local v7, buffer:[B
    const/4 v8, -0x1

    .line 264
    .local v8, c:I
    invoke-virtual {p3}, Lcom/amazon/s3/S3Object;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 265
    .local v9, inputStream:Ljava/io/InputStream;
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    .line 268
    .local v10, outputStream:Ljava/io/OutputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v9, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-ltz v8, :cond_0

    .line 269
    const/4 v0, 0x0

    invoke-virtual {v10, v7, v0, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    invoke-virtual {p3}, Lcom/amazon/s3/S3Object;->closeDataInputStream()V

    .line 273
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    throw v0

    .line 272
    :cond_0
    invoke-virtual {p3}, Lcom/amazon/s3/S3Object;->closeDataInputStream()V

    .line 273
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 276
    new-instance v0, Lcom/amazon/s3/Response;

    invoke-direct {v0, v11}, Lcom/amazon/s3/Response;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 777
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "AWSAuthConnection [awsAccessKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    iget-object v1, p0, Lcom/amazon/s3/AWSAuthConnection;->awsAccessKeyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    const-string v1, ", awsSecretAccessKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    iget-object v1, p0, Lcom/amazon/s3/AWSAuthConnection;->awsSecretAccessKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    const-string v1, ", callingFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    iget-object v1, p0, Lcom/amazon/s3/AWSAuthConnection;->callingFormat:Lcom/amazon/s3/CallingFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 783
    const-string v1, ", isSecure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    iget-boolean v1, p0, Lcom/amazon/s3/AWSAuthConnection;->isSecure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 785
    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    iget v1, p0, Lcom/amazon/s3/AWSAuthConnection;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 787
    const-string v1, ", server="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    iget-object v1, p0, Lcom/amazon/s3/AWSAuthConnection;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
