.class public Lcom/google/android/finsky/activities/ReviewListViewBinder;
.super Lcom/google/android/finsky/fragments/ViewBinder;
.source "ReviewListViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseFilterOptionsHandler;
.implements Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/ViewBinder",
        "<",
        "Lcom/google/android/finsky/api/model/DfeReviews;",
        ">;",
        "Lcom/google/android/finsky/api/model/OnDataChangedListener;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;",
        "Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseFilterOptionsHandler;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

.field private mContainerFragment:Landroid/support/v4/app/Fragment;

.field private mContentLayout:Landroid/view/ViewGroup;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mHasLoadedAtLeastOnce:Z

.field private mReviewList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/ViewBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V
    .locals 6
    .parameter "reviewsView"
    .parameter "document"

    .prologue
    .line 55
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContentLayout:Landroid/view/ViewGroup;

    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContentLayout:Landroid/view/ViewGroup;

    const v1, 0x7f080152

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->onDestroyView()V

    .line 61
    :cond_0
    new-instance v0, Lcom/google/android/finsky/adapters/ReviewsAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/finsky/api/model/DfeReviews;

    move-object v2, p2

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/adapters/ReviewsAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeReviews;Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseFilterOptionsHandler;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    .line 63
    iput-object p2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 64
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mHasLoadedAtLeastOnce:Z

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContentLayout:Landroid/view/ViewGroup;

    const v2, 0x7f080112

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 1
    .parameter "context"
    .parameter "containerFragment"
    .parameter "dfeApi"
    .parameter "nm"
    .parameter "bitmapLoader"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    .line 46
    .local v0, currentData:Lcom/google/android/finsky/api/model/DfeReviews;
    invoke-super {p0, p1, p4, p5}, Lcom/google/android/finsky/fragments/ViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 50
    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    .line 51
    iput-object p2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    .line 52
    return-void
.end method

.method public onChooseFilterOptions()V
    .locals 4

    .prologue
    .line 123
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 128
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v2, "filter_options_dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeReviews;->currentlyFilteringByVersion()Z

    move-result v3

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeReviews;->shouldFilterByDevice()Z

    move-result v2

    invoke-static {v3, v2}, Lcom/google/android/finsky/activities/FilterOptionsDialog;->newInstance(ZZ)Lcom/google/android/finsky/activities/FilterOptionsDialog;

    move-result-object v0

    .line 133
    .local v0, dialog:Lcom/google/android/finsky/activities/FilterOptionsDialog;
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/activities/FilterOptionsDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 134
    const-string v2, "filter_options_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/FilterOptionsDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDataChanged()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 76
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mHasLoadedAtLeastOnce:Z

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContentLayout:Landroid/view/ViewGroup;

    const v2, 0x7f080112

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mHasLoadedAtLeastOnce:Z

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->onDestroyView()V

    .line 110
    iput-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    .line 112
    :cond_0
    iput-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 116
    iput-object v1, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    .line 118
    :cond_1
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mReviewList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->triggerFooterErrorMode()V

    .line 105
    :cond_0
    return-void
.end method

.method public onRateReview(Lcom/google/android/finsky/remoting/protos/Rev$Review;)V
    .locals 5
    .parameter "review"

    .prologue
    .line 140
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 141
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v2, "rate_review_dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 149
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getCommentId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/activities/RateReviewDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)Lcom/google/android/finsky/activities/RateReviewDialog;

    move-result-object v0

    .line 147
    .local v0, dialog:Lcom/google/android/finsky/activities/RateReviewDialog;
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/activities/RateReviewDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 148
    const-string v2, "rate_review_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/RateReviewDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setData(Lcom/google/android/finsky/api/model/DfeReviews;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mHasLoadedAtLeastOnce:Z

    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 94
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/ViewBinder;->setData(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->clearTransientState()V

    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewListViewBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 98
    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, Lcom/google/android/finsky/api/model/DfeReviews;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/ReviewListViewBinder;->setData(Lcom/google/android/finsky/api/model/DfeReviews;)V

    return-void
.end method
