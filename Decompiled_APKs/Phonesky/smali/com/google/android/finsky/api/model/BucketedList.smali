.class public abstract Lcom/google/android/finsky/api/model/BucketedList;
.super Lcom/google/android/finsky/api/model/PaginatedList;
.source "BucketedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/finsky/api/model/PaginatedList",
        "<TT;",
        "Lcom/google/android/finsky/api/model/Document;",
        ">;"
    }
.end annotation


# instance fields
.field protected mBuckets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Bucket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 23
    .local p0, this:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/android/finsky/api/model/PaginatedList;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/api/model/BucketedList;->mBuckets:Ljava/util/List;

    .line 24
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "url"
    .parameter "autoLoadNextPage"

    .prologue
    .line 32
    .local p0, this:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/api/model/PaginatedList;-><init>(Ljava/lang/String;Z)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/api/model/BucketedList;->mBuckets:Ljava/util/List;

    .line 33
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;IZ)V
    .locals 1
    .parameter
    .parameter "currentCount"
    .parameter "autoLoadNextPage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<TT;>;"
    .local p1, urlList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/api/model/PaginatedList;-><init>(Ljava/util/List;IZ)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/api/model/BucketedList;->mBuckets:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public getBackendId()I
    .locals 1

    .prologue
    .line 50
    .local p0, this:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBackendId(I)I

    move-result v0

    return v0
.end method

.method public getBackendId(I)I
    .locals 4
    .parameter "defaultBackend"

    .prologue
    .line 61
    .local p0, this:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 75
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 65
    .restart local p1
    :cond_1
    const/4 v0, -0x1

    .line 66
    .local v0, backend:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/api/model/BucketedList;->mBuckets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 67
    iget-object v3, p0, Lcom/google/android/finsky/api/model/BucketedList;->mBuckets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Bucket;->getBackend()I

    move-result v1

    .line 69
    .local v1, currentBackend:I
    if-eqz v1, :cond_0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_0

    .line 73
    :cond_2
    move v0, v1

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1           #currentBackend:I
    :cond_3
    move p1, v0

    .line 75
    goto :goto_0
.end method

.method public getBucketCount()I
    .locals 1

    .prologue
    .line 90
    .local p0, this:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/api/model/BucketedList;->mBuckets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBucketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Bucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/api/model/BucketedList;->mBuckets:Ljava/util/List;

    return-object v0
.end method
