.class Lcom/amazon/s3/CallingFormat$SubdomainCallingFormat;
.super Lcom/amazon/s3/CallingFormat;
.source "CallingFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/s3/CallingFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubdomainCallingFormat"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/amazon/s3/CallingFormat;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/s3/CallingFormat$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/amazon/s3/CallingFormat$SubdomainCallingFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndpoint(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "server"
    .parameter "port"
    .parameter "bucket"

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p3}, Lcom/amazon/s3/CallingFormat$SubdomainCallingFormat;->getServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathBase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "bucket"
    .parameter "key"

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "server"
    .parameter "bucket"

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;
    .locals 7
    .parameter "isSecure"
    .parameter "server"
    .parameter "port"
    .parameter "bucket"
    .parameter "key"
    .parameter "pathArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 94
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 96
    :cond_0
    invoke-static {p6}, Lcom/amazon/s3/Utils;->convertPathArgsHashToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, pathArguments:Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    if-eqz p1, :cond_1

    const-string v3, "https"

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, p2, p3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v3, v4

    .line 105
    :goto_1
    return-object v3

    .line 98
    :cond_1
    const-string v3, "http"

    goto :goto_0

    .line 101
    .end local v0           #pathArguments:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p2, p4}, Lcom/amazon/s3/CallingFormat$SubdomainCallingFormat;->getServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, serverToUse:Ljava/lang/String;
    invoke-virtual {p0, p4, p5}, Lcom/amazon/s3/CallingFormat$SubdomainCallingFormat;->getPathBase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, pathBase:Ljava/lang/String;
    invoke-static {p6}, Lcom/amazon/s3/Utils;->convertPathArgsHashToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .restart local v0       #pathArguments:Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    if-eqz p1, :cond_3

    const-string v3, "https"

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v2, p3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v3, v4

    goto :goto_1

    :cond_3
    const-string v3, "http"

    goto :goto_2
.end method

.method public supportsLocatedBuckets()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method
