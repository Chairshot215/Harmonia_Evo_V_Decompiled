.class public abstract Lcom/google/android/finsky/api/model/PaginatedList;
.super Lcom/google/android/finsky/api/model/DfeModel;
.source "PaginatedList.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/finsky/api/model/DfeModel;",
        "Lcom/android/volley/Response$Listener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final mAutoLoadNextPage:Z

.field private mCurrentOffset:I

.field private mCurrentRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TD;>;"
        }
    .end annotation
.end field

.field private mLastPositionRequested:I

.field protected mLastResponse:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mMoreAvailable:Z

.field protected mUrlOffsetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowDistance:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 61
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/api/model/PaginatedList;-><init>(Ljava/lang/String;Z)V

    .line 62
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 3
    .parameter "url"
    .parameter "autoLoadNextPage"

    .prologue
    .line 64
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeModel;-><init>()V

    .line 40
    const/16 v0, 0xc

    iput v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mWindowDistance:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    new-instance v1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    .line 67
    iput-boolean p2, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mAutoLoadNextPage:Z

    .line 68
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;IZ)V
    .locals 3
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
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    .local p1, urlMap:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;>;"
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, v2, p3}, Lcom/google/android/finsky/api/model/PaginatedList;-><init>(Ljava/lang/String;Z)V

    .line 74
    iput-object p1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    .line 77
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 78
    iget-object v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method private requestMoreItemsIfNoRequestExists(Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;)V
    .locals 2
    .parameter "urlOffsetPair"

    .prologue
    .line 342
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->inErrorState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentRequest:Lcom/android/volley/Request;

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V

    .line 355
    :cond_2
    iget v0, p1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->offset:I

    iput v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    .line 356
    iget-object v0, p1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/model/PaginatedList;->makeRequest(Ljava/lang/String;)Lcom/android/volley/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentRequest:Lcom/android/volley/Request;

    goto :goto_0
.end method


# virtual methods
.method public clearTransientState()V
    .locals 1

    .prologue
    .line 100
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentRequest:Lcom/android/volley/Request;

    .line 101
    return-void
.end method

.method public flushAllPages()V
    .locals 3

    .prologue
    .line 243
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method

.method public flushUnusedPages()V
    .locals 3

    .prologue
    .line 226
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    iget v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mLastPositionRequested:I

    if-gez v1, :cond_1

    .line 237
    :cond_0
    return-void

    .line 230
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 231
    iget v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mLastPositionRequested:I

    iget v2, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mWindowDistance:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    iget v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mLastPositionRequested:I

    iget v2, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mWindowDistance:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    .line 230
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 107
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 7
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TD;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    iput p1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mLastPositionRequested:I

    .line 166
    const/4 v2, 0x0

    .line 167
    .local v2, result:Ljava/lang/Object;,"TD;"
    if-gez p1, :cond_0

    .line 168
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t return an item with a negative index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->getCount()I

    move-result v4

    if-ge p1, v4, :cond_3

    .line 172
    iget-object v4, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 173
    iget-boolean v4, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mAutoLoadNextPage:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    if-lt p1, v4, :cond_1

    .line 175
    iget-object v4, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    .line 176
    .local v3, wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    invoke-direct {p0, v3}, Lcom/google/android/finsky/api/model/PaginatedList;->requestMoreItemsIfNoRequestExists(Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;)V

    .line 178
    .end local v3           #wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    :cond_1
    if-nez v2, :cond_3

    .line 179
    const/4 v3, 0x0

    .line 180
    .restart local v3       #wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    iget-object v4, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    .line 181
    .local v0, currentWrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    iget v4, v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->offset:I

    if-gt v4, p1, :cond_2

    .line 182
    move-object v3, v0

    goto :goto_0

    .line 187
    .end local v0           #currentWrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    :cond_2
    invoke-direct {p0, v3}, Lcom/google/android/finsky/api/model/PaginatedList;->requestMoreItemsIfNoRequestExists(Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;)V

    .line 190
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #result:Ljava/lang/Object;,"TD;"
    .end local v3           #wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    :cond_3
    return-object v2
.end method

.method protected abstract getItemsFromResponse(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List",
            "<TD;>;"
        }
    .end annotation
.end method

.method public getListPageUrls()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 87
    .local v2, urls:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    .line 88
    .local v1, pair:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    iget-object v3, v1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->url:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    .end local v1           #pair:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    :cond_0
    return-object v2
.end method

.method protected abstract getNextPageUrl(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public isMoreAvailable()Z
    .locals 1

    .prologue
    .line 262
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    iget-boolean v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 130
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mLastResponse:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract makeRequest(Ljava/lang/String;)Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 135
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->clearTransientState()V

    .line 136
    invoke-super {p0, p1}, Lcom/google/android/finsky/api/model/DfeModel;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 137
    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    .local p1, response:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->clearErrors()V

    .line 282
    iput-object p1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mLastResponse:Ljava/lang/Object;

    .line 284
    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 286
    .local v4, oldSize:I
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/PaginatedList;->getItemsFromResponse(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 287
    .local v2, items:Ljava/util/List;,"Ljava/util/List<TD;>;"
    iget v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    iget-object v6, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_3

    .line 288
    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 300
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/PaginatedList;->getNextPageUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, nextPageUrl:Ljava/lang/String;
    const/4 v1, 0x0

    .line 306
    .local v1, isNextRequestAtEndOfListAvail:Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    if-ne v5, v4, :cond_1

    .line 307
    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    new-instance v6, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    iget-object v7, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7, v3}, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;-><init>(ILjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    iget-object v7, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    iget v5, v5, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->offset:I

    if-ne v6, v5, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 313
    const/4 v1, 0x1

    .line 316
    :cond_2
    if-eqz v1, :cond_5

    iget-boolean v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mAutoLoadNextPage:Z

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    .line 319
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->clearTransientState()V

    .line 320
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->notifyDataSetChanged()V

    .line 321
    return-void

    .line 290
    .end local v1           #isNextRequestAtEndOfListAvail:Z
    .end local v3           #nextPageUrl:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 291
    iget v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    add-int/2addr v5, v0

    iget-object v6, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 292
    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    iget v6, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    add-int/2addr v6, v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 290
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 294
    :cond_4
    iget-object v5, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 316
    .end local v0           #i:I
    .restart local v1       #isNextRequestAtEndOfListAvail:Z
    .restart local v3       #nextPageUrl:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public resetItems()V
    .locals 1

    .prologue
    .line 252
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    .line 253
    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 254
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->notifyDataSetChanged()V

    .line 255
    return-void
.end method

.method public retryLoadItems()V
    .locals 5

    .prologue
    .line 199
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->inErrorState()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 201
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->clearTransientState()V

    .line 203
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->clearErrors()V

    .line 206
    const/4 v2, 0x0

    .line 207
    .local v2, wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    iget v3, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 208
    iget-object v3, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    .line 209
    .local v0, currentWrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    iget v3, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mCurrentOffset:I

    iget v4, v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->offset:I

    if-ne v3, v4, :cond_0

    .line 210
    move-object v2, v0

    .line 215
    .end local v0           #currentWrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    if-nez v2, :cond_2

    .line 216
    iget-object v3, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    check-cast v2, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    .line 218
    .restart local v2       #wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/finsky/api/model/PaginatedList;->requestMoreItemsIfNoRequestExists(Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;)V

    .line 220
    .end local v2           #wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    :cond_3
    return-void
.end method

.method public setWindowDistance(I)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 111
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    iput p1, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mWindowDistance:I

    .line 112
    return-void
.end method

.method public startLoadItems()V
    .locals 2

    .prologue
    .line 150
    .local p0, this:Lcom/google/android/finsky/api/model/PaginatedList;,"Lcom/google/android/finsky/api/model/PaginatedList<TT;TD;>;"
    iget-boolean v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mMoreAvailable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/PaginatedList;->clearErrors()V

    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/api/model/PaginatedList;->mUrlOffsetList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/api/model/PaginatedList;->requestMoreItemsIfNoRequestExists(Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;)V

    .line 154
    :cond_0
    return-void
.end method
