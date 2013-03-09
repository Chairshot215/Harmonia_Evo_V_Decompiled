.class public Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;
.super Lcom/google/android/finsky/adapters/BucketedListAdapter;
.source "EditorialBucketListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$1;,
        Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;
    }
.end annotation


# instance fields
.field private final mBucket:Lcom/google/android/finsky/api/model/Bucket;

.field mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

.field private final mInitialRestoreState:Landroid/os/Bundle;

.field private final mUseWideHeaderImage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/Bucket;Lcom/google/android/finsky/api/model/BucketedList;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .parameter "context"
    .parameter "navManager"
    .parameter "loader"
    .parameter "toc"
    .parameter "bucket"
    .parameter
    .parameter "currentPageUrl"
    .parameter "savedState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Lcom/google/android/finsky/utils/BitmapLoader;",
            "Lcom/google/android/finsky/api/model/DfeToc;",
            "Lcom/google/android/finsky/api/model/Bucket;",
            "Lcom/google/android/finsky/api/model/BucketedList",
            "<*>;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p6, listData:Lcom/google/android/finsky/api/model/BucketedList;,"Lcom/google/android/finsky/api/model/BucketedList<*>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/finsky/api/model/BucketedList;->getBackendId()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const v9, 0x7f040065

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/google/android/finsky/adapters/BucketedListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/BucketedList;IIILjava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mUseWideHeaderImage:Z

    .line 61
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mBucket:Lcom/google/android/finsky/api/model/Bucket;

    .line 62
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mInitialRestoreState:Landroid/os/Bundle;

    .line 63
    return-void

    .line 54
    :cond_0
    const v9, 0x7f04006a

    goto :goto_0
.end method

.method private bindEditorialDocument(Lcom/google/android/finsky/api/model/Document;Landroid/view/ViewGroup;I)V
    .locals 7
    .parameter "doc"
    .parameter "docEntry"
    .parameter "itemIndex"

    .prologue
    const/4 v2, 0x1

    .line 173
    invoke-direct {p0, p2}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;

    move-result-object v0

    .line 175
    .local v0, holder:Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;
    iget-object v3, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialEntry:Lcom/google/android/finsky/layout/EditorialBucketEntry;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v4, p1, v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/layout/EditorialBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v3, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialContent:Lcom/google/android/finsky/layout/EditorialBucketContent;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v6, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p1, v6}, Lcom/google/android/finsky/layout/EditorialBucketContent;->setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, title:Ljava/lang/String;
    iget-object v3, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialContent:Lcom/google/android/finsky/layout/EditorialBucketContent;

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/layout/EditorialBucketContent;->setTitle(Ljava/lang/String;)V

    .line 183
    iget-object v3, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialContent:Lcom/google/android/finsky/layout/EditorialBucketContent;

    iget v4, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mTitleForeground:I

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/layout/EditorialBucketContent;->setTitleColor(I)V

    .line 184
    iget v3, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mColumnCount:I

    if-le v3, v2, :cond_0

    add-int/lit8 v3, p3, 0x1

    iget v4, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mColumnCount:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 185
    .local v2, toShowLeftSeparator:Z
    :goto_0
    iget-object v3, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialEntry:Lcom/google/android/finsky/layout/EditorialBucketEntry;

    invoke-virtual {v3, v2}, Lcom/google/android/finsky/layout/EditorialBucketEntry;->setLeftSeparatorVisibility(Z)V

    .line 186
    return-void

    .line 184
    .end local v2           #toShowLeftSeparator:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private bindMockEditorialDocument(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "bucket"
    .parameter "view"

    .prologue
    .line 157
    invoke-direct {p0, p2}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;

    move-result-object v0

    .line 158
    .local v0, holder:Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;
    iget-object v1, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialContent:Lcom/google/android/finsky/layout/EditorialBucketContent;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getBackend()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/EditorialBucketContent;->setMockDocument(I)V

    .line 159
    iget-object v1, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialContent:Lcom/google/android/finsky/layout/EditorialBucketContent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/EditorialBucketContent;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v1, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialContent:Lcom/google/android/finsky/layout/EditorialBucketContent;

    iget v2, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mLoadingForeground:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/EditorialBucketContent;->setTitleColor(I)V

    .line 161
    return-void
.end method

.method private bindNoDocument(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "bucket"
    .parameter "view"

    .prologue
    .line 164
    invoke-direct {p0, p2}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;

    move-result-object v0

    .line 165
    .local v0, holder:Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;
    iget-object v1, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialContent:Lcom/google/android/finsky/layout/EditorialBucketContent;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/EditorialBucketContent;->setNoDocument()V

    .line 166
    iget-object v1, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialContent:Lcom/google/android/finsky/layout/EditorialBucketContent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/EditorialBucketContent;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    return-void
.end method

.method private getConvertView(Landroid/view/ViewGroup;)Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;
    .locals 2
    .parameter "docEntry"

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 195
    new-instance v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;-><init>(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$1;)V

    .line 196
    .local v0, holder:Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;
    const v1, 0x7f080108

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/EditorialBucketEntry;

    iput-object v1, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialEntry:Lcom/google/android/finsky/layout/EditorialBucketEntry;

    .line 198
    const v1, 0x7f080109

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/EditorialBucketContent;

    iput-object v1, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;->editorialContent:Lcom/google/android/finsky/layout/EditorialBucketContent;

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 203
    .end local v0           #holder:Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;

    return-object v1
.end method

.method private getEditorialHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    if-eqz v2, :cond_0

    move-object/from16 v9, p1

    .line 138
    .end local p1
    .local v9, convertView:Landroid/view/View;
    :goto_0
    return-object v9

    .line 102
    .end local v9           #convertView:Landroid/view/View;
    .restart local p1
    :cond_0
    const v2, 0x7f040069

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 104
    const v2, 0x7f08010f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/layout/DescriptionEditorialHeader;

    .line 106
    .local v8, antennaEpisodeHeader:Lcom/google/android/finsky/layout/DescriptionEditorialHeader;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mBucket:Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Bucket;->getEditorialSeriesContainer()Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    move-result-object v13

    .line 107
    .local v13, templateData:Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    invoke-virtual {v13}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getEpisodeSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/google/android/finsky/layout/DescriptionEditorialHeader;->showEpisodeInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const v2, 0x7f08010e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/layout/HeroGraphicView;

    .line 112
    .local v11, headerHero:Lcom/google/android/finsky/layout/HeroGraphicView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mBucket:Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Bucket;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v10

    .line 113
    .local v10, document:Lcom/google/android/finsky/api/model/Document;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mUseWideHeaderImage:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v10, v3, v4, v5}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getPageHeaderBannerUrlFromDocument(Lcom/google/android/finsky/api/model/Document;ZII)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v11, v2, v10, v3, v4}, Lcom/google/android/finsky/layout/HeroGraphicView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Z)V

    .line 116
    const v2, 0x7f080110

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/google/android/finsky/layout/HeroGraphicView;

    .line 117
    .local v16, videoView:Lcom/google/android/finsky/layout/HeroGraphicView;
    const/4 v2, 0x3

    invoke-virtual {v10, v2}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v14

    .line 118
    .local v14, videoImage:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    if-eqz v14, :cond_1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 119
    :cond_1
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->setVisibility(I)V

    .line 130
    :goto_1
    new-instance v2, Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-direct {v2}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;IZ)V

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    const v3, 0x7f080098

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v10}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mInitialRestoreState:Landroid/os/Bundle;

    move-object v4, v10

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->hideHeader()V

    move-object/from16 v9, p1

    .line 138
    .end local p1
    .restart local v9       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 121
    .end local v9           #convertView:Landroid/view/View;
    .restart local p1
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/HeroGraphicView;->setVisibility(I)V

    .line 122
    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/layout/HeroGraphicView;->getHeightRestriction()I

    move-result v3

    invoke-static {v10, v2, v3}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getPreviewUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v12

    .line 124
    .local v12, previewUrl:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v15

    .line 125
    .local v15, videoUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v10, v12, v3}, Lcom/google/android/finsky/layout/HeroGraphicView;->load(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Z)V

    .line 126
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/google/android/finsky/layout/HeroGraphicView;->showPlayIcon(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected bindRowEntry(Lcom/google/android/finsky/api/model/Bucket;Lcom/google/android/finsky/api/model/Document;ILandroid/view/ViewGroup;)V
    .locals 1
    .parameter "bucket"
    .parameter "document"
    .parameter "itemIndex"
    .parameter "docEntry"

    .prologue
    .line 144
    if-nez p2, :cond_1

    .line 146
    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mBucketedList:Lcom/google/android/finsky/api/model/BucketedList;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/BucketedList;->getCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 147
    invoke-direct {p0, p1, p4}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->bindMockEditorialDocument(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->bindNoDocument(Lcom/google/android/finsky/api/model/Bucket;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-direct {p0, p2, p4, p3}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->bindEditorialDocument(Lcom/google/android/finsky/api/model/Document;Landroid/view/ViewGroup;I)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    const/4 v0, 0x5

    .line 82
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 72
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0, p2, p3}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 69
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->getEditorialHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x6

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter;->onDestroyView()V

    .line 217
    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->onDestroyView()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    .line 221
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;->mDetailsTextViewBinder:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->saveInstanceState(Landroid/os/Bundle;)V

    .line 212
    :cond_0
    return-void
.end method
