.class public Lcom/google/android/finsky/api/model/DfeReviews;
.super Lcom/google/android/finsky/api/model/PaginatedList;
.source "DfeReviews.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/model/PaginatedList",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
        "Lcom/google/android/finsky/remoting/protos/Rev$Review;",
        ">;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mFilterByDevice:Z

.field private mFilterByVersion:Z

.field private mRating:I

.field private mSortType:I

.field private mVersionCode:I


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;IZ)V
    .locals 1
    .parameter "dfeApi"
    .parameter "reviewsUrl"
    .parameter "versionCode"
    .parameter "autoLoadNextPage"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p2, p4}, Lcom/google/android/finsky/api/model/PaginatedList;-><init>(Ljava/lang/String;Z)V

    .line 36
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 37
    iput-boolean v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mFilterByVersion:Z

    .line 38
    iput-boolean v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mFilterByDevice:Z

    .line 39
    iput v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mRating:I

    .line 40
    iput p3, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mVersionCode:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mSortType:I

    .line 42
    return-void
.end method

.method private refetchReviews()V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeReviews;->resetItems()V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeReviews;->startLoadItems()V

    .line 47
    return-void
.end method


# virtual methods
.method public currentlyFilteringByVersion()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mFilterByVersion:Z

    return v0
.end method

.method protected getItemsFromResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;)Ljava/util/List;
    .locals 1
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Rev$Review;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->getGetResponse()Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Rev$GetReviewsResponse;->getReviewList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getItemsFromResponse(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeReviews;->getItemsFromResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getNextPageUrl(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;)Ljava/lang/String;
    .locals 1
    .parameter "response"

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;->getNextPageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getNextPageUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeReviews;->getNextPageUrl(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRatingFilter()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mRating:I

    return v0
.end method

.method public getSortType()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mSortType:I

    return v0
.end method

.method public getVersionFilter()I
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mFilterByVersion:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mVersionCode:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected makeRequest(Ljava/lang/String;)Lcom/android/volley/Request;
    .locals 8
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
    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-boolean v2, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mFilterByDevice:Z

    iget-boolean v1, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mFilterByVersion:Z

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mVersionCode:I

    :goto_0
    iget v4, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mRating:I

    iget v5, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mSortType:I

    move-object v1, p1

    move-object v6, p0

    move-object v7, p0

    invoke-interface/range {v0 .. v7}, Lcom/google/android/finsky/api/DfeApi;->getReviews(Ljava/lang/String;ZIIILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setFilters(ZZ)V
    .locals 1
    .parameter "filterByVersion"
    .parameter "filterByDevice"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mFilterByVersion:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mFilterByDevice:Z

    if-eq p2, v0, :cond_1

    .line 63
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mFilterByVersion:Z

    .line 64
    iput-boolean p2, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mFilterByDevice:Z

    .line 65
    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeReviews;->refetchReviews()V

    .line 67
    :cond_1
    return-void
.end method

.method public setSortType(I)V
    .locals 1
    .parameter "sortType"

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mSortType:I

    if-eq p1, v0, :cond_0

    .line 82
    iput p1, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mSortType:I

    .line 83
    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeReviews;->refetchReviews()V

    .line 85
    :cond_0
    return-void
.end method

.method public shouldFilterByDevice()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/finsky/api/model/DfeReviews;->mFilterByDevice:Z

    return v0
.end method
