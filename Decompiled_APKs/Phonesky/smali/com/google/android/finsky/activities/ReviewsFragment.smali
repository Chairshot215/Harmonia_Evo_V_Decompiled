.class public Lcom/google/android/finsky/activities/ReviewsFragment;
.super Lcom/google/android/finsky/fragments/PageFragment;
.source "ReviewsFragment.java"

# interfaces
.implements Lcom/google/android/finsky/activities/FilterOptionsDialog$Listener;
.implements Lcom/google/android/finsky/activities/RateReviewDialog$Listener;


# instance fields
.field protected mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

.field protected mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mFilterByDevice:Z

.field private mFilterByVersion:Z

.field protected final mReviewsBinder:Lcom/google/android/finsky/activities/ReviewListViewBinder;

.field private mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSortType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PageFragment;-><init>()V

    .line 36
    new-instance v0, Lcom/google/android/finsky/activities/ReviewListViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/ReviewListViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsBinder:Lcom/google/android/finsky/activities/ReviewListViewBinder;

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ReviewsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->reloadReviews()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/activities/ReviewsFragment;
    .locals 2
    .parameter "context"
    .parameter "document"

    .prologue
    .line 54
    new-instance v0, Lcom/google/android/finsky/activities/ReviewsFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/ReviewsFragment;-><init>()V

    .line 55
    .local v0, fragment:Lcom/google/android/finsky/activities/ReviewsFragment;
    const v1, 0x7f0e0042

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/ReviewsFragment;->setTheme(I)V

    .line 56
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/ReviewsFragment;->setDfeToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 57
    const-string v1, "finsky.ReviewsFragment.document"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/ReviewsFragment;->setArgument(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    return-object v0
.end method

.method private recordState()V
    .locals 3

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "finsky.PageFragment.ReviewsFragment.filterByDevice"

    iget-boolean v2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mFilterByDevice:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "finsky.PageFragment.ReviewsFragment.filterByVersion"

    iget-boolean v2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mFilterByVersion:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "finsky.PageFragment.ReviewsFragment.sortType"

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeReviews;->getSortType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    :cond_0
    return-void
.end method

.method private reloadReviews()V
    .locals 7

    .prologue
    .line 215
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getReviewsUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeReviews;->shouldFilterByDevice()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeReviews;->getVersionFilter()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeReviews;->getRatingFilter()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/DfeReviews;->getSortType()I

    move-result v5

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/finsky/api/DfeApi;->invalidateReviewsCache(Ljava/lang/String;ZIIIZ)V

    .line 218
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->resetItems()V

    .line 219
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->switchToLoading()V

    .line 220
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 221
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 222
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->requestData()V

    .line 223
    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 70
    const v0, 0x7f040088

    return v0
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "finsky.PageFragment.ReviewsFragment.filterByDevice"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mFilterByDevice:Z

    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "finsky.PageFragment.ReviewsFragment.filterByVersion"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mFilterByVersion:Z

    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    const-string v1, "finsky.PageFragment.ReviewsFragment.sortType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSortType:I

    .line 86
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Lcom/google/android/finsky/api/model/DfeReviews;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getReviewsUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getVersionCode()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/api/model/DfeReviews;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mFilterByVersion:Z

    iget-boolean v2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mFilterByDevice:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeReviews;->setFilters(ZZ)V

    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    iget v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSortType:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeReviews;->setSortType(I)V

    .line 95
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->switchToLoading()V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->requestData()V

    .line 99
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.ReviewsFragment.document"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/ReviewsFragment;->setRetainInstance(Z)V

    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/PageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, result:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->isDataReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->onDataChanged()V

    .line 129
    :cond_0
    return-object v0
.end method

.method public onDataChanged()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsBinder:Lcom/google/android/finsky/activities/ReviewListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/ReviewListViewBinder;->setData(Lcom/google/android/finsky/api/model/DfeReviews;)V

    .line 165
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDataChanged()V

    .line 166
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsBinder:Lcom/google/android/finsky/activities/ReviewListViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewListViewBinder;->onDestroyView()V

    .line 171
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 175
    :cond_0
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDestroyView()V

    .line 176
    return-void
.end method

.method protected onInitViewBinders()V
    .locals 6

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsBinder:Lcom/google/android/finsky/activities/ReviewListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/ReviewListViewBinder;->init(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 140
    return-void
.end method

.method public onRateReview(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V
    .locals 3
    .parameter "docId"
    .parameter "reviewId"
    .parameter "newRating"

    .prologue
    .line 196
    new-instance v0, Lcom/google/android/finsky/api/model/DfeRateReview;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->getRpcId()I

    move-result v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/android/finsky/api/model/DfeRateReview;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;I)V

    .line 198
    .local v0, request:Lcom/google/android/finsky/api/model/DfeRateReview;
    new-instance v1, Lcom/google/android/finsky/activities/ReviewsFragment$1;

    invoke-direct {v1, p0, p3}, Lcom/google/android/finsky/activities/ReviewsFragment$1;-><init>(Lcom/google/android/finsky/activities/ReviewsFragment;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeRateReview;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 206
    new-instance v1, Lcom/google/android/finsky/activities/ReviewsFragment$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/ReviewsFragment$2;-><init>(Lcom/google/android/finsky/activities/ReviewsFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeRateReview;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 212
    return-void
.end method

.method public onReviewFilterChanged(ZZ)V
    .locals 1
    .parameter "filterByVersion"
    .parameter "filterByDevice"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mFilterByVersion:Z

    .line 185
    iput-boolean p2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mFilterByDevice:Z

    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/api/model/DfeReviews;->setFilters(ZZ)V

    .line 187
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->recordState()V

    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 105
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    return-void
.end method

.method public rebindActionBar()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 151
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method protected rebindViews()V
    .locals 3

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsFragment;->rebindActionBar()V

    .line 145
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsBinder:Lcom/google/android/finsky/activities/ReviewListViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDataView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/ReviewListViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V

    .line 146
    return-void
.end method

.method protected requestData()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mReviewsData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->startLoadItems()V

    .line 157
    return-void
.end method

.method protected toast(II)V
    .locals 1
    .parameter "resourceId"
    .parameter "duration"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 230
    return-void
.end method
