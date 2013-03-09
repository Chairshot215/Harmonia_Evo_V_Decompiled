.class Lcom/amazon/s3/CallingFormat$PathCallingFormat;
.super Lcom/amazon/s3/CallingFormat;
.source "CallingFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/s3/CallingFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathCallingFormat"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/amazon/s3/CallingFormat;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/s3/CallingFormat$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/amazon/s3/CallingFormat$PathCallingFormat;-><init>()V

    return-void
.end method

.method private isBucketSpecified(Ljava/lang/String;)Z
    .locals 2
    .parameter "bucket"

    .prologue
    const/4 v0, 0x0

    .line 66
    if-nez p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getEndpoint(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "server"
    .parameter "port"
    .parameter "bucket"

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/s3/CallingFormat$PathCallingFormat;->isBucketSpecified(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/"

    goto :goto_0
.end method

.method public getURL(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;
    .locals 5
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
    .line 58
    invoke-direct {p0, p4}, Lcom/amazon/s3/CallingFormat$PathCallingFormat;->isBucketSpecified(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, pathBase:Ljava/lang/String;
    :goto_0
    invoke-static {p6}, Lcom/amazon/s3/Utils;->convertPathArgsHashToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, pathArguments:Ljava/lang/String;
    new-instance v3, Ljava/net/URL;

    if-eqz p1, :cond_1

    const-string v2, "https"

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, p2, p3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v3

    .line 58
    .end local v0           #pathArguments:Ljava/lang/String;
    .end local v1           #pathBase:Ljava/lang/String;
    :cond_0
    const-string v1, "/"

    goto :goto_0

    .line 61
    .restart local v0       #pathArguments:Ljava/lang/String;
    .restart local v1       #pathBase:Ljava/lang/String;
    :cond_1
    const-string v2, "http"

    goto :goto_1
.end method

.method public supportsLocatedBuckets()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method
