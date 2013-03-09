.class public Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "ReviewSamplesViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

.field private mAlwaysShowMore:Z

.field private mContainerFragment:Landroid/support/v4/app/Fragment;

.field private mData:Lcom/google/android/finsky/api/model/DfeReviews;

.field private mReviewHolder:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V
    .locals 2
    .parameter "reviewsSection"
    .parameter "doc"
    .parameter "isLoaded"

    .prologue
    .line 50
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getReviewsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 54
    :cond_0
    const v1, 0x7f070155

    invoke-super {p0, p1, p2, v1}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;I)V

    .line 56
    if-nez p3, :cond_1

    .line 57
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 62
    :cond_1
    const v1, 0x7f0800e1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewHolder:Landroid/widget/LinearLayout;

    .line 66
    const v1, 0x7f08020a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/HistogramView;

    .line 68
    .local v0, stats:Lcom/google/android/finsky/layout/HistogramView;
    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {v0, p2}, Lcom/google/android/finsky/layout/HistogramView;->bind(Lcom/google/android/finsky/api/model/Document;)V

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->refresh()V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 2
    .parameter "context"
    .parameter "containerFragment"
    .parameter "api"
    .parameter "navManager"

    .prologue
    .line 43
    invoke-super {p0, p1, p3, p4}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 44
    iput-object p2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAlwaysShowMore:Z

    .line 47
    return-void
.end method

.method public invalidateCurrentReviewUrl()V
    .locals 7

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getReviewsUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeReviews;->shouldFilterByDevice()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeReviews;->getVersionFilter()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeReviews;->getRatingFilter()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/DfeReviews;->getSortType()I

    move-result v5

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/finsky/api/DfeApi;->invalidateReviewsCache(Ljava/lang/String;ZIIIZ)V

    goto :goto_0
.end method

.method public onDataChanged()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 103
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/DfeReviews;->getCount()I

    move-result v2

    .line 104
    .local v2, reviewCount:I
    if-nez v2, :cond_1

    .line 105
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :cond_0
    return-void

    .line 108
    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mLayout:Landroid/view/View;

    const v5, 0x7f0800e2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, footer:Landroid/view/View;
    iget-boolean v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAlwaysShowMore:Z

    if-nez v4, :cond_2

    if-le v2, v8, :cond_4

    .line 111
    :cond_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 112
    new-instance v4, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder$1;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder$1;-><init>(Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :goto_0
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-le v4, v7, :cond_3

    .line 123
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewHolder:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v7, v5}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 125
    :cond_3
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 126
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    iget-object v5, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    invoke-virtual {v5}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getFirstReviewViewIndex()I

    move-result v5

    add-int/2addr v5, v1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 128
    .local v3, reviewViewToBeAdded:Landroid/view/View;
    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mReviewHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 119
    .end local v1           #index:I
    .end local v3           #reviewViewToBeAdded:Landroid/view/View;
    :cond_4
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ReviewsAdapter;->onDestroyView()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 140
    :cond_1
    return-void
.end method

.method public onRateReview(Lcom/google/android/finsky/remoting/protos/Rev$Review;)V
    .locals 5
    .parameter "review"

    .prologue
    .line 145
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 146
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v2, "rate_review_dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->getCommentId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/activities/RateReviewDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)Lcom/google/android/finsky/activities/RateReviewDialog;

    move-result-object v0

    .line 152
    .local v0, dialog:Lcom/google/android/finsky/activities/RateReviewDialog;
    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mContainerFragment:Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/activities/RateReviewDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 153
    const-string v2, "rate_review_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/RateReviewDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public refresh()V
    .locals 6

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 87
    :cond_1
    new-instance v0, Lcom/google/android/finsky/api/model/DfeReviews;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getReviewsUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getVersionCode()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/api/model/DfeReviews;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    .line 88
    new-instance v0, Lcom/google/android/finsky/adapters/ReviewsAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    const/4 v5, 0x0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/adapters/ReviewsAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeReviews;Lcom/google/android/finsky/adapters/ReviewsAdapter$RateReviewHandler;Lcom/google/android/finsky/adapters/ReviewsAdapter$ChooseFilterOptionsHandler;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mAdapter:Lcom/google/android/finsky/adapters/ReviewsAdapter;

    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeReviews;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mData:Lcom/google/android/finsky/api/model/DfeReviews;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeReviews;->startLoadItems()V

    goto :goto_0
.end method
