.class Lcom/google/android/finsky/api/DfeApiImpl$1;
.super Lcom/google/android/finsky/api/ProtoDfeRequest;
.source "DfeApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/api/DfeApiImpl;->getDetails(Ljava/util/Collection;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/ProtoDfeRequest",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/api/DfeApiImpl;

.field final synthetic val$sortedDocids:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/api/DfeApiImpl;Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter
    .parameter
    .parameter "x5"
    .parameter

    .prologue
    .line 315
    .local p5, x3:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;>;"
    .local p6, x4:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;>;"
    iput-object p1, p0, Lcom/google/android/finsky/api/DfeApiImpl$1;->this$0:Lcom/google/android/finsky/api/DfeApiImpl;

    iput-object p8, p0, Lcom/google/android/finsky/api/DfeApiImpl$1;->val$sortedDocids:Ljava/util/List;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/api/ProtoDfeRequest;-><init>(Ljava/lang/String;Lcom/google/protobuf/micro/MessageMicro;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method private computeCacheKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 323
    .local v1, hash:I
    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiImpl$1;->val$sortedDocids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    .local v0, docid:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    goto :goto_0

    .line 326
    .end local v0           #docid:Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/finsky/api/ProtoDfeRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/docidhash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiImpl$1;->computeCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
