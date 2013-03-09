.class public Lcom/google/android/finsky/api/model/DfeSearch;
.super Lcom/google/android/finsky/api/model/BucketedList;
.source "DfeSearch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/model/BucketedList",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mInitialUrl:Ljava/lang/String;

.field private mQuery:Ljava/lang/String;

.field private mSuggestedQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "api"
    .parameter "query"
    .parameter "searchUrl"

    .prologue
    .line 44
    invoke-direct {p0, p3}, Lcom/google/android/finsky/api/model/BucketedList;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object p3, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mInitialUrl:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 47
    iput-object p2, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mQuery:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getBackendId()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeSearch;->isAggregateResult()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    :goto_0
    return v2

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeSearch;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 129
    .local v1, searchUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v3

    if-nez v3, :cond_1

    .line 130
    const-string v3, "Non-hierarchical uri: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeSearch;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/DfeLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    :cond_1
    const-string v2, "c"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, corpus:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 136
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-super {p0, v2}, Lcom/google/android/finsky/api/model/BucketedList;->getBackendId(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 137
    :catch_0
    move-exception v2

    .line 141
    :cond_2
    invoke-super {p0}, Lcom/google/android/finsky/api/model/BucketedList;->getBackendId()I

    move-result v2

    goto :goto_0
.end method

.method protected getItemsFromResponse(Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;)Ljava/util/List;
    .locals 10
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 57
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v5, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getDocList()Ljava/util/List;

    move-result-object v2

    .line 62
    .local v2, documents:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 63
    iget-object v6, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mBuckets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 64
    iget-object v7, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mBuckets:Ljava/util/List;

    new-instance v8, Lcom/google/android/finsky/api/model/Bucket;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-direct {v8, v6}, Lcom/google/android/finsky/api/model/Bucket;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getContainerMetadata()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, cookie:Ljava/lang/String;
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getChildList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 68
    .local v4, item:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    new-instance v6, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {v6, v4, v1}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    .end local v1           #cookie:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_0
    iget-object v6, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mBuckets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 73
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 74
    .local v0, container:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    iget-object v6, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mBuckets:Ljava/util/List;

    new-instance v7, Lcom/google/android/finsky/api/model/Bucket;

    invoke-direct {v7, v0}, Lcom/google/android/finsky/api/model/Bucket;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    .end local v0           #container:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->hasSuggestedQuery()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getSuggestedQuery()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mSuggestedQuery:Ljava/lang/String;

    .line 81
    :cond_2
    return-object v5
.end method

.method protected bridge synthetic getItemsFromResponse(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeSearch;->getItemsFromResponse(Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getNextPageUrl(Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;)Ljava/lang/String;
    .locals 4
    .parameter "response"

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 149
    .local v1, nextPageUrl:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getDocCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 151
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v0

    .line 152
    .local v0, dfeDoc:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasContainerMetadata()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getContainerMetadata()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getNextPageUrl()Ljava/lang/String;

    move-result-object v1

    .line 156
    .end local v0           #dfeDoc:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_0
    return-object v1
.end method

.method protected bridge synthetic getNextPageUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeSearch;->getNextPageUrl(Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedSearches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Search$RelatedSearch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mLastResponse:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getRelatedSearchList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestedQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mSuggestedQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mInitialUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isAggregateResult()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mLastResponse:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;->getAggregateQuery()Z

    move-result v0

    return v0
.end method

.method protected makeRequest(Ljava/lang/String;)Lcom/android/volley/Request;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeSearch;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v0, p1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->search(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method
