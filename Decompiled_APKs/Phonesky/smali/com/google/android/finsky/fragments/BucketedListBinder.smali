.class public Lcom/google/android/finsky/fragments/BucketedListBinder;
.super Lcom/google/android/finsky/fragments/ViewBinder;
.source "BucketedListBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/ViewBinder",
        "<",
        "Lcom/google/android/finsky/api/model/BucketedList",
        "<*>;>;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/google/android/finsky/api/model/OnDataChangedListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

.field private final mCellLayoutId:I

.field private mContentLayout:Landroid/view/ViewGroup;

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mHasLoadedAtLeastOnce:Z

.field private mListView:Landroid/widget/ListView;

.field protected mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>(ILcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/DfeApi;)V
    .locals 0
    .parameter "cellLayoutId"
    .parameter "toc"
    .parameter "dfeApi"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/ViewBinder;-><init>()V

    .line 39
    iput p1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mCellLayoutId:I

    .line 40
    iput-object p2, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 41
    iput-object p3, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 42
    return-void
.end method

.method private detachFromData()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/BucketedList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/BucketedList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    .line 115
    :cond_0
    return-void
.end method

.method private getAdapterForBucketType(Lcom/google/android/finsky/api/model/Bucket;IILjava/lang/String;Landroid/os/Bundle;)Lcom/google/android/finsky/adapters/BucketedListAdapter;
    .locals 13
    .parameter "bucket"
    .parameter "columnCount"
    .parameter "rowCount"
    .parameter "currentPageUrl"
    .parameter "savedInstanceState"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getBucketCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v10, 0x1

    .line 137
    .local v10, hasOneBucket:Z
    :goto_0
    if-eqz v10, :cond_1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->hasRecommendationsTemplate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    new-instance v0, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v5, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v6, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/finsky/api/model/BucketedList;

    iget-object v8, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/adapters/RecommendationsListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/BucketedList;Ljava/lang/String;Landroid/widget/ListView;)V

    .line 150
    :goto_1
    return-object v0

    .line 135
    .end local v10           #hasOneBucket:Z
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 140
    .restart local v10       #hasOneBucket:Z
    :cond_1
    if-eqz v10, :cond_2

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->hasEditorialSeriesContainer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getEditorialSeriesContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    move-result-object v12

    .line 142
    .local v12, templateData:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContentLayout:Landroid/view/ViewGroup;

    const v1, 0x7f08010f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/layout/EditorialPageHeader;

    .line 144
    .local v11, pageHeaderPanel:Lcom/google/android/finsky/layout/EditorialPageHeader;
    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getSeriesTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getSeriesSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v0, v1, v2}, Lcom/google/android/finsky/layout/EditorialPageHeader;->showSeriesInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v6, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/finsky/api/model/BucketedList;

    move-object v5, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/Bucket;Lcom/google/android/finsky/api/model/BucketedList;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 150
    .end local v11           #pageHeaderPanel:Lcom/google/android/finsky/layout/EditorialPageHeader;
    .end local v12           #templateData:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    :cond_2
    new-instance v0, Lcom/google/android/finsky/adapters/BucketedListAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mNavManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v5, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/finsky/api/model/BucketedList;

    iget v8, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mCellLayoutId:I

    move v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/adapters/BucketedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/BucketedList;IIILjava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;IILcom/google/android/finsky/api/model/Bucket;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .parameter "root"
    .parameter "columnCount"
    .parameter "rowCount"
    .parameter "bucket"
    .parameter "currentPageUrl"
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f080112

    .line 57
    iput-object p1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContentLayout:Landroid/view/ViewGroup;

    .line 58
    const v0, 0x7f080065

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 61
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/google/android/finsky/api/model/Bucket;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 63
    .local v6, noResultsView:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 65
    invoke-virtual {p0, v6}, Lcom/google/android/finsky/fragments/BucketedListBinder;->configureEmptyUi(Landroid/view/View;)V

    .line 85
    .end local v6           #noResultsView:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->onDestroyView()V

    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->onDestroy()V

    :cond_3
    move-object v0, p0

    move-object v1, p4

    move v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 75
    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/fragments/BucketedListBinder;->getAdapterForBucketType(Lcom/google/android/finsky/api/model/Bucket;IILjava/lang/String;Landroid/os/Bundle;)Lcom/google/android/finsky/adapters/BucketedListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    .line 79
    iget-boolean v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mHasLoadedAtLeastOnce:Z

    if-eqz v0, :cond_4

    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 84
    :goto_1
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 82
    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected configureEmptyUi(Landroid/view/View;)V
    .locals 0
    .parameter "emptyUiView"

    .prologue
    .line 107
    return-void
.end method

.method public onDataChanged()V
    .locals 3

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mHasLoadedAtLeastOnce:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mContentLayout:Landroid/view/ViewGroup;

    const v2, 0x7f080112

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mHasLoadedAtLeastOnce:Z

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->notifyDataSetChanged()V

    .line 104
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BucketedListBinder;->detachFromData()V

    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->onDestroyView()V

    .line 121
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->onDestroy()V

    .line 122
    iput-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    .line 124
    :cond_0
    iput-object v1, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    .line 125
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->triggerFooterErrorMode()V

    .line 92
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mAdapter:Lcom/google/android/finsky/adapters/BucketedListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    :cond_0
    return-void
.end method

.method public setData(Lcom/google/android/finsky/api/model/BucketedList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, data:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<*>;"
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/BucketedListBinder;->detachFromData()V

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/ViewBinder;->setData(Ljava/lang/Object;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mHasLoadedAtLeastOnce:Z

    .line 49
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/BucketedList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/finsky/fragments/BucketedListBinder;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/BucketedList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 53
    :cond_0
    return-void
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    check-cast p1, Lcom/google/android/finsky/api/model/BucketedList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/BucketedListBinder;->setData(Lcom/google/android/finsky/api/model/BucketedList;)V

    return-void
.end method
