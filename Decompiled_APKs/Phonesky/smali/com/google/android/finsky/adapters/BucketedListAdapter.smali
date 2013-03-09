.class public Lcom/google/android/finsky/adapters/BucketedListAdapter;
.super Lcom/google/android/finsky/adapters/PaginatedListAdapter;
.source "BucketedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/BucketedListAdapter$3;,
        Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;,
        Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;
    }
.end annotation


# instance fields
.field protected mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;"
        }
    .end annotation
.end field

.field private final mCellLayoutId:I

.field protected final mColumnCount:I

.field protected mCurrentPageUrl:Ljava/lang/String;

.field private final mHeaderImageMaxHeight:I

.field protected final mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field protected final mLoadingForeground:I

.field private final mRowCount:I

.field private final mSmallestWidth:I

.field private mSwitchToCustomLayoutIfNecessary:Z

.field protected final mTitleForeground:I

.field protected final mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/BucketedList;IIILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "navManager"
    .parameter "loader"
    .parameter "toc"
    .parameter
    .parameter "columnCount"
    .parameter "rowCount"
    .parameter "cellLayoutId"
    .parameter "currentPageUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            "Lcom/google/android/finsky/api/model/DfeToc;",
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    .local p5, bucketedList:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<*>;"
    invoke-virtual {p5}, Lcom/google/android/finsky/api/model/BucketedList;->inErrorState()Z

    move-result v1

    invoke-virtual {p5}, Lcom/google/android/finsky/api/model/BucketedList;->isMoreAvailable()Z

    move-result v2

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/android/finsky/adapters/PaginatedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZZ)V

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mSwitchToCustomLayoutIfNecessary:Z

    .line 109
    iput-object p3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 110
    iput-object p9, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCurrentPageUrl:Ljava/lang/String;

    .line 111
    iput-object p5, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    .line 112
    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/BucketedList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 113
    iput p6, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    .line 114
    iput p7, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mRowCount:I

    .line 115
    iput p8, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCellLayoutId:I

    .line 116
    iput-object p4, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mLoadingForeground:I

    .line 121
    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mTitleForeground:I

    .line 122
    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mHeaderImageMaxHeight:I

    .line 123
    invoke-static {p1}, Lcom/google/android/finsky/utils/VendingUtils;->getScreenDimensions(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mSmallestWidth:I

    .line 124
    return-void
.end method

.method private bindArtistPromoLayer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;)V
    .locals 6
    .parameter "doc"
    .parameter "holder"

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 517
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ArtistBucketEntry;

    iput-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    .line 519
    iput-object v1, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistStub:Landroid/view/ViewStub;

    .line 521
    :cond_0
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setVisibility(I)V

    .line 523
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setVisibility(I)V

    .line 526
    :cond_1
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    if-eqz v0, :cond_2

    .line 527
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setVisibility(I)V

    .line 530
    :cond_2
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v2, p1, v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v5

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;ZLandroid/view/View$OnClickListener;)V

    .line 532
    return-void
.end method

.method private bindBucketEntries(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V
    .locals 10
    .parameter "bucket"
    .parameter "view"

    .prologue
    const/4 v9, 0x0

    .line 222
    const v7, 0x7f080068

    invoke-virtual {p2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 223
    .local v0, bucketRowHolder:Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .local v5, row:I
    :goto_0
    iget v7, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mRowCount:I

    if-ge v5, v7, :cond_3

    .line 224
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 225
    .local v6, rowOfDocuments:Landroid/widget/LinearLayout;
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getDisplayedRowsForBucket(Lcom/google/android/finsky/api/model/Bucket;)I

    move-result v7

    if-lt v5, v7, :cond_1

    .line 226
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getDisplayedColumnsForBucket(Lcom/google/android/finsky/api/model/Bucket;I)I

    move-result v2

    .line 230
    .local v2, displayedColumns:I
    const/4 v1, 0x0

    .local v1, column:I
    :goto_1
    iget v7, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    if-ge v1, v7, :cond_0

    .line 231
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 232
    .local v3, docEntry:Landroid/view/View;
    if-ge v1, v2, :cond_2

    .line 233
    iget v7, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    mul-int/2addr v7, v5

    add-int v4, v7, v1

    .line 234
    .local v4, itemIndex:I
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/api/model/Document;

    move-object v8, v3

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v7, v4, v8}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindRowEntry(Lcom/google/android/finsky/api/model/Bucket;Lcom/google/android/finsky/api/model/Document;ILandroid/view/ViewGroup;)V

    .line 236
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 230
    .end local v4           #itemIndex:I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 238
    :cond_2
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 243
    .end local v1           #column:I
    .end local v2           #displayedColumns:I
    .end local v3           #docEntry:Landroid/view/View;
    .end local v6           #rowOfDocuments:Landroid/widget/LinearLayout;
    :cond_3
    return-void
.end method

.method private bindBucketHeader(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V
    .locals 10
    .parameter "bucket"
    .parameter "bucketView"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 597
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 598
    new-instance v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;

    invoke-direct {v1, v9}, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;-><init>(Lcom/google/android/finsky/adapters/BucketedListAdapter$1;)V

    .line 599
    .local v1, holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;
    const v4, 0x7f08005f

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    .line 600
    const v4, 0x7f080063

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->searchResultsView:Landroid/widget/TextView;

    .line 601
    const v4, 0x7f080064

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->corpusStrip:Landroid/view/View;

    .line 602
    const v4, 0x7f080062

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->sectionHeader:Landroid/widget/TextView;

    .line 603
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 605
    .end local v1           #holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;

    .line 607
    .restart local v1       #holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getChildCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 608
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 642
    :cond_1
    :goto_0
    return-void

    .line 611
    :cond_2
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 612
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->makeHeaderClickListener(Lcom/google/android/finsky/api/model/Bucket;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 614
    .local v0, headerClickHandler:Landroid/view/View$OnClickListener;
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->sectionHeader:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->sectionHeader:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 617
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->hasMoreItems()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 618
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    iget-object v7, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    if-eqz v0, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/view/View;->setClickable(Z)V

    .line 620
    iget-object v7, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    if-eqz v0, :cond_4

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 627
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getEstimatedResults()I

    move-result v2

    .line 628
    .local v2, numMatchingAssets:I
    if-lez v2, :cond_6

    .line 629
    iget-object v4, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v7, 0x7f0d

    invoke-virtual {v4, v7, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 632
    .local v3, template:Ljava/lang/String;
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->searchResultsView:Landroid/widget/TextView;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->searchResultsView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 638
    .end local v3           #template:Ljava/lang/String;
    :goto_4
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->corpusStrip:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 639
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->corpusStrip:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getBackend()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .end local v2           #numMatchingAssets:I
    :cond_3
    move v4, v6

    .line 619
    goto :goto_1

    :cond_4
    move v4, v6

    .line 620
    goto :goto_2

    .line 622
    :cond_5
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    .line 624
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->bucketHeader:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_3

    .line 635
    .restart local v2       #numMatchingAssets:I
    :cond_6
    iget-object v4, v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;->searchResultsView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method private bindDocument(Lcom/google/android/finsky/api/model/Document;Landroid/view/ViewGroup;ZI)V
    .locals 7
    .parameter "doc"
    .parameter "docEntry"
    .parameter "isOrdered"
    .parameter "itemIndex"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 480
    invoke-direct {p0, p2}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;

    move-result-object v1

    .line 482
    .local v1, holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    .line 483
    .local v0, docType:I
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getArtistDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v5

    if-eqz v5, :cond_2

    move v2, v4

    .line 485
    .local v2, isArtist:Z
    :goto_0
    const/16 v5, 0x10

    if-eq v0, v5, :cond_0

    const/16 v5, 0x11

    if-ne v0, v5, :cond_1

    :cond_0
    move v3, v4

    .line 487
    .local v3, isMagazine:Z
    :cond_1
    if-eqz v2, :cond_3

    iget-boolean v4, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mSwitchToCustomLayoutIfNecessary:Z

    if-eqz v4, :cond_3

    .line 488
    invoke-direct {p0, p1, v1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindArtistPromoLayer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;)V

    .line 494
    :goto_1
    return-void

    .end local v2           #isArtist:Z
    .end local v3           #isMagazine:Z
    :cond_2
    move v2, v3

    .line 483
    goto :goto_0

    .line 489
    .restart local v2       #isArtist:Z
    .restart local v3       #isMagazine:Z
    :cond_3
    if-eqz v3, :cond_4

    iget-boolean v4, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mSwitchToCustomLayoutIfNecessary:Z

    if-eqz v4, :cond_4

    .line 490
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindMagazinePromoLayer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;ZI)V

    goto :goto_1

    .line 492
    :cond_4
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindGenericLayer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;ZI)V

    goto :goto_1
.end method

.method private bindGenericLayer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;ZI)V
    .locals 6
    .parameter "doc"
    .parameter "holder"
    .parameter "isOrdered"
    .parameter "itemIndex"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 498
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setVisibility(I)V

    .line 499
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setVisibility(I)V

    .line 501
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    :cond_0
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setVisibility(I)V

    .line 505
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    :cond_1
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v2, p1, v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v5

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;ZLandroid/view/View$OnClickListener;)V

    .line 510
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getDisplayTitle(Lcom/google/android/finsky/api/model/Document;ZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setTitle(Ljava/lang/String;)V

    .line 511
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    iget v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mTitleForeground:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setTitleColor(I)V

    .line 512
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    iget v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    rem-int v1, p4, v1

    iget v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setRightSeparatorVisibility(Z)V

    .line 514
    return-void
.end method

.method private bindMagazinePromoLayer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;ZI)V
    .locals 6
    .parameter "doc"
    .parameter "holder"
    .parameter "isOrdered"
    .parameter "itemIndex"

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 536
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/MagazineBucketEntry;

    iput-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    .line 538
    iput-object v1, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineStub:Landroid/view/ViewStub;

    .line 540
    :cond_0
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setVisibility(I)V

    .line 542
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setVisibility(I)V

    .line 545
    :cond_1
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setVisibility(I)V

    .line 549
    :cond_2
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v2, p1, v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v5

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;ZLandroid/view/View$OnClickListener;)V

    .line 551
    iget-object v0, p2, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getDisplayTitle(Lcom/google/android/finsky/api/model/Document;ZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setTitle(Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method private bindMockDocument(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "bucket"
    .parameter "view"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 645
    invoke-direct {p0, p2}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;

    move-result-object v0

    .line 646
    .local v0, holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setVisibility(I)V

    .line 647
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    if-eqz v1, :cond_0

    .line 648
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setVisibility(I)V

    .line 650
    :cond_0
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    if-eqz v1, :cond_1

    .line 651
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setVisibility(I)V

    .line 654
    :cond_1
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getBackend()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setMockDocument(I)V

    .line 655
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    iget v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mLoadingForeground:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setTitleColor(I)V

    .line 657
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setClickable(Z)V

    .line 659
    return-void
.end method

.method private bindNoDocument(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "bucket"
    .parameter "view"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 662
    invoke-direct {p0, p2}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;

    move-result-object v0

    .line 663
    .local v0, holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setVisibility(I)V

    .line 664
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    if-eqz v1, :cond_0

    .line 665
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/ArtistBucketEntry;->setVisibility(I)V

    .line 667
    :cond_0
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    if-eqz v1, :cond_1

    .line 668
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/MagazineBucketEntry;->setVisibility(I)V

    .line 671
    :cond_1
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setNoDocument()V

    .line 673
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    iget-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setClickable(Z)V

    .line 675
    return-void
.end method

.method private getBucketView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 291
    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Bucket;

    .line 292
    .local v0, bucket:Lcom/google/android/finsky/api/model/Bucket;
    if-nez p2, :cond_0

    .line 293
    invoke-direct {p0, v0, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflateViewForBucket(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v1, p2

    .line 296
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindBucketEntries(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V

    move-object v1, p2

    .line 297
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindBucketHeader(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V

    .line 299
    return-object p2
.end method

.method private getBucketedListCount()I
    .locals 5

    .prologue
    .line 385
    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 387
    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getCount()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 389
    .local v0, count:I
    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Bucket;->hasContainerWithBannerTemplate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    add-int/lit8 v0, v0, 0x1

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->NONE:Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    if-eq v1, v2, :cond_1

    .line 393
    add-int/lit8 v0, v0, 0x1

    .line 398
    .end local v0           #count:I
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v0

    goto :goto_0
.end method

.method private getBucketedListItemViewType(I)I
    .locals 5
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 407
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getBucketedListCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 409
    .local v0, lastRow:I
    if-ne p1, v0, :cond_1

    .line 410
    sget-object v3, Lcom/google/android/finsky/adapters/BucketedListAdapter$3;->$SwitchMap$com$google$android$finsky$adapters$PaginatedListAdapter$FooterMode:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getFooterMode()Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/adapters/PaginatedListAdapter$FooterMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 423
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No footer or item at row "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :pswitch_0
    const/4 v1, 0x2

    .line 436
    :cond_0
    :goto_0
    return v1

    .line 414
    :pswitch_1
    const/4 v1, 0x3

    goto :goto_0

    .line 417
    :pswitch_2
    iget-object v3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 418
    goto :goto_0

    .line 427
    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 429
    iget-object v3, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Bucket;->hasContainerWithBannerTemplate()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 431
    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    move v1, v2

    .line 433
    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;
    .locals 2
    .parameter "docEntry"

    .prologue
    .line 461
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 462
    new-instance v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;-><init>(Lcom/google/android/finsky/adapters/BucketedListAdapter$1;)V

    .line 463
    .local v0, holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;
    const v1, 0x7f08001e

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/OverviewBucketEntry;

    iput-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

    .line 465
    const v1, 0x7f080082

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistStub:Landroid/view/ViewStub;

    .line 466
    const v1, 0x7f080015

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/ArtistBucketEntry;

    iput-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

    .line 468
    const v1, 0x7f080083

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineStub:Landroid/view/ViewStub;

    .line 469
    const v1, 0x7f08016a

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/MagazineBucketEntry;

    iput-object v1, v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;->magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

    .line 471
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 473
    .end local v0           #holder:Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;

    return-object v1
.end method

.method private getDisplayTitle(Lcom/google/android/finsky/api/model/Document;ZI)Ljava/lang/String;
    .locals 6
    .parameter "doc"
    .parameter "isOrdered"
    .parameter "itemIndex"

    .prologue
    .line 555
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, title:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 557
    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070268

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 560
    :cond_0
    return-object v0
.end method

.method private getDisplayedColumnsForBucket(Lcom/google/android/finsky/api/model/Bucket;I)I
    .locals 2
    .parameter "bucket"
    .parameter "row"

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getDisplayedRowsForBucket(Lcom/google/android/finsky/api/model/Bucket;)I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    mul-int/2addr v1, p2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDisplayedRowsForBucket(Lcom/google/android/finsky/api/model/Bucket;)I
    .locals 4
    .parameter "bucket"

    .prologue
    .line 279
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getChildCount()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mRowCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 329
    if-nez p1, :cond_0

    .line 330
    const v0, 0x7f04002b

    invoke-virtual {p0, v0, p2, v3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 333
    :cond_0
    const v0, 0x7f080084

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 334
    .local v6, background:Landroid/view/View;
    const v0, 0x7f080085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 335
    .local v8, imageView:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Bucket;->getContainerWithBannerTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;

    move-result-object v10

    .line 337
    .local v10, template:Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Bucket;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v7

    .line 338
    .local v7, bucketDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$ContainerWithBanner;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 342
    :cond_1
    iget v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mSmallestWidth:I

    iget v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mHeaderImageMaxHeight:I

    invoke-static {v7, v3, v0, v2}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getPageHeaderBannerUrlFromDocument(Lcom/google/android/finsky/api/model/Document;ZII)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, imageUrl:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/finsky/adapters/BucketedListAdapter$1;

    invoke-direct {v3, p0, v8}, Lcom/google/android/finsky/adapters/BucketedListAdapter$1;-><init>(Lcom/google/android/finsky/adapters/BucketedListAdapter;Landroid/widget/ImageView;)V

    iget v4, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mSmallestWidth:I

    iget v5, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mHeaderImageMaxHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v9

    .line 352
    .local v9, newContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v9}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 355
    .end local v9           #newContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    :cond_2
    return-object p1
.end method

.method private getPaginatedRow(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 362
    if-nez p2, :cond_0

    .line 365
    const v2, 0x7f040021

    invoke-virtual {p0, v2, p3, v5}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 366
    const/4 v0, 0x0

    .local v0, column:I
    :goto_0
    iget v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    if-ge v0, v2, :cond_0

    move-object v2, p2

    .line 367
    check-cast v2, Landroid/view/ViewGroup;

    iget v4, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCellLayoutId:I

    move-object v3, p2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0, v4, v3, v5}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v0           #column:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #column:I
    :goto_1
    iget v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    if-ge v0, v2, :cond_1

    .line 372
    iget v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    mul-int/2addr v2, p1

    add-int v1, v2, v0

    .line 373
    .local v1, itemIndex:I
    iget-object v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    move-object v4, p2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindRowEntry(Lcom/google/android/finsky/api/model/Bucket;Lcom/google/android/finsky/api/model/Document;ILandroid/view/ViewGroup;)V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 377
    .end local v1           #itemIndex:I
    :cond_1
    return-object p2
.end method

.method private getPaginatedRowIndex(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, decrement:I
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->hasHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    add-int/lit8 v0, v0, 0x1

    .line 174
    :cond_0
    sub-int v1, p1, v0

    return v1
.end method

.method private hasHeader()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Bucket;->hasContainerWithBannerTemplate()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private inflateViewForBucket(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "bucket"
    .parameter "parent"

    .prologue
    const/4 v11, 0x0

    .line 306
    const v9, 0x7f040022

    invoke-virtual {p0, v9, p2, v11}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 308
    .local v8, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getBucketHeaderLayoutId(Lcom/google/android/finsky/api/model/Bucket;)I

    move-result v2

    .line 309
    .local v2, bucketHeaderLayoutId:I
    const v9, 0x7f080067

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 310
    .local v1, bucketHeaderHolder:Landroid/view/ViewGroup;
    invoke-virtual {p0, v2, p2, v11}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 311
    .local v0, bucketHeader:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 313
    const v9, 0x7f080068

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 314
    .local v3, bucketItemHolder:Landroid/view/ViewGroup;
    const/4 v6, 0x0

    .local v6, row:I
    :goto_0
    iget v9, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mRowCount:I

    if-ge v6, v9, :cond_1

    .line 315
    const v9, 0x7f040021

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 317
    .local v7, rowOfBucketEntries:Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    iget v9, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mColumnCount:I

    if-ge v5, v9, :cond_0

    .line 318
    iget v9, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mCellLayoutId:I

    invoke-virtual {p0, v9, v7, v11}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 320
    .local v4, emptyEntry:Landroid/view/ViewGroup;
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 321
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 323
    .end local v4           #emptyEntry:Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 314
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 325
    .end local v5           #i:I
    .end local v7           #rowOfBucketEntries:Landroid/widget/LinearLayout;
    :cond_1
    return-object v8
.end method


# virtual methods
.method protected bindRowEntry(Lcom/google/android/finsky/api/model/Bucket;Lcom/google/android/finsky/api/model/Document;ILandroid/view/ViewGroup;)V
    .locals 3
    .parameter "bucket"
    .parameter "document"
    .parameter "itemIndex"
    .parameter "docEntry"

    .prologue
    const/4 v1, 0x0

    .line 255
    if-nez p2, :cond_3

    .line 257
    iget-object v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/BucketedList;->getCount()I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 258
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 259
    invoke-direct {p0, p1, p4}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindMockDocument(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V

    .line 273
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/BucketedList;->getCount()I

    move-result v2

    if-ne p3, v2, :cond_1

    const/4 v0, 0x1

    .line 262
    .local v0, isAfterTheLastDocument:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 263
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 264
    invoke-direct {p0, p1, p4}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindNoDocument(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V

    goto :goto_0

    .end local v0           #isAfterTheLastDocument:Z
    :cond_1
    move v0, v1

    .line 261
    goto :goto_1

    .line 266
    .restart local v0       #isAfterTheLastDocument:Z
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 270
    .end local v0           #isAfterTheLastDocument:Z
    :cond_3
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 271
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->isOrdered()Z

    move-result v1

    invoke-direct {p0, p2, p4, v1, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->bindDocument(Lcom/google/android/finsky/api/model/Document;Landroid/view/ViewGroup;ZI)V

    goto :goto_0
.end method

.method protected getBucketHeaderLayoutId(Lcom/google/android/finsky/api/model/Bucket;)I
    .locals 1
    .parameter "bucket"

    .prologue
    .line 593
    const v0, 0x7f04001e

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getBucketedListCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/api/model/BucketedList;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getBucketedListItemViewType(I)I

    move-result v0

    return v0
.end method

.method protected getLastRequestError()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/BucketedList;->getVolleyError()Lcom/android/volley/VolleyError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getBucketedListItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type for getView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getBucketedListItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 136
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getBucketView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 138
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getPaginatedRowIndex(I)I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getPaginatedRow(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 140
    :pswitch_3
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getLoadingFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 142
    :pswitch_4
    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getErrorFooterView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x5

    return v0
.end method

.method protected ignoreCustomTiles()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mSwitchToCustomLayoutIfNecessary:Z

    .line 128
    return-void
.end method

.method protected isMoreDataAvailable()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->isMoreAvailable()Z

    move-result v0

    return v0
.end method

.method protected makeHeaderClickListener(Lcom/google/android/finsky/api/model/Bucket;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "bucket"

    .prologue
    .line 568
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getBrowseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    new-instance v0, Lcom/google/android/finsky/adapters/BucketedListAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter$2;-><init>(Lcom/google/android/finsky/adapters/BucketedListAdapter;Lcom/google/android/finsky/api/model/Bucket;)V

    .line 577
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/BucketedList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 200
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 448
    return-void
.end method

.method protected retryLoadingItems()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->retryLoadItems()V

    .line 215
    return-void
.end method

.method public updateAdapterData(Lcom/google/android/finsky/api/model/BucketedList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, bucketedList:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<*>;"
    iput-object p1, p0, Lcom/google/android/finsky/adapters/BucketedListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    .line 684
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->notifyDataSetChanged()V

    .line 685
    return-void
.end method
