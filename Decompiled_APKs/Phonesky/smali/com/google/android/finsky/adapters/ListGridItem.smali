.class public Lcom/google/android/finsky/adapters/ListGridItem;
.super Ljava/lang/Object;
.source "ListGridItem.java"

# interfaces
.implements Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;
    }
.end annotation


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mBucket:Lcom/google/android/finsky/api/model/Bucket;

.field private final mColumns:I

.field private final mContext:Landroid/content/Context;

.field private final mHeight:I

.field private mMaxRowCount:I

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mReferrerUrl:Ljava/lang/String;

.field private final mRows:I

.field private final mToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private final mWidth:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;IIIILcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 1
    .parameter "context"
    .parameter "doc"
    .parameter "itemWidth"
    .parameter "itemHeight"
    .parameter "rows"
    .parameter "columns"
    .parameter "bitmapLoader"
    .parameter "navigationManager"
    .parameter "referrerUrl"
    .parameter "toc"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {p2}, Lcom/google/android/finsky/api/model/Document;->convertToBucket(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Bucket;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBucket:Lcom/google/android/finsky/api/model/Bucket;

    .line 86
    iput-object p8, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 87
    iput-object p10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 88
    iput-object p7, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 89
    iput-object p9, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mReferrerUrl:Ljava/lang/String;

    .line 90
    iput p3, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mWidth:I

    .line 91
    iput p4, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mHeight:I

    .line 92
    iput p5, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mRows:I

    .line 93
    iput p6, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mColumns:I

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 11
    .parameter "context"
    .parameter "doc"
    .parameter "bitmapLoader"
    .parameter "navigationManager"
    .parameter "referrerUrl"
    .parameter "toc"

    .prologue
    .line 70
    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/google/android/finsky/adapters/ListGridItem;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;IIIILcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/adapters/ListGridItem;)Lcom/google/android/finsky/api/model/Bucket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBucket:Lcom/google/android/finsky/api/model/Bucket;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/adapters/ListGridItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mReferrerUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/adapters/ListGridItem;)Lcom/google/android/finsky/api/model/DfeToc;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/adapters/ListGridItem;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method private bindBucketEntry(Lcom/google/android/finsky/api/model/Bucket;IILandroid/view/ViewGroup;)V
    .locals 10
    .parameter "bucket"
    .parameter "row"
    .parameter "column"
    .parameter "docEntry"

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 186
    iget v5, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mColumns:I

    mul-int/2addr v5, p2

    add-int v3, v5, p3

    .line 187
    .local v3, itemIndex:I
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    .line 188
    .local v1, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;

    .line 189
    .local v2, holder:Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;
    if-nez v2, :cond_0

    .line 190
    new-instance v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;

    .end local v2           #holder:Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;
    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;-><init>(Lcom/google/android/finsky/adapters/ListGridItem$1;)V

    .line 191
    .restart local v2       #holder:Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;
    const v5, 0x7f08001f

    invoke-virtual {p4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/DocImageView;

    iput-object v5, v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->bitmapView:Lcom/google/android/finsky/layout/DocImageView;

    .line 192
    const v5, 0x7f080022

    invoke-virtual {p4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->title:Landroid/widget/TextView;

    .line 193
    const v5, 0x7f080023

    invoke-virtual {p4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v5, v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->creator:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 194
    const v5, 0x7f080163

    invoke-virtual {p4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->reason:Landroid/widget/TextView;

    .line 195
    const v5, 0x7f080107

    invoke-virtual {p4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->bottomSeparator:Landroid/view/View;

    .line 196
    const v5, 0x7f080161

    invoke-virtual {p4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->leftSeparator:Landroid/view/View;

    .line 197
    const v5, 0x7f080162

    invoke-virtual {p4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->rightSeparator:Landroid/view/View;

    .line 198
    const v5, 0x7f080018

    invoke-virtual {p4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->accessibilityOverlay:Landroid/view/View;

    .line 199
    invoke-virtual {p4, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 202
    :cond_0
    iget-object v5, v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->accessibilityOverlay:Landroid/view/View;

    iget-object v8, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v9, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mReferrerUrl:Ljava/lang/String;

    invoke-virtual {v8, v1, v9}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, title:Ljava/lang/String;
    iget-object v5, v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v5, v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->creator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v5, v7}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 210
    iget-object v5, v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->creator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v5, v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->reason:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getRecommendationReason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v5, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v8, v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->creator:Lcom/google/android/finsky/layout/DecoratedTextView;

    const/4 v9, -0x1

    invoke-static {v1, v5, v8, v9}, Lcom/google/android/finsky/utils/BadgeUtils;->configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;I)V

    .line 216
    iget-object v8, v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->bottomSeparator:Landroid/view/View;

    iget v5, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mMaxRowCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne p2, v5, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v8, v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->leftSeparator:Landroid/view/View;

    if-nez p3, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v5, v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->rightSeparator:Landroid/view/View;

    iget v8, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mColumns:I

    add-int/lit8 v8, v8, -0x1

    if-ne p3, v8, :cond_3

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 223
    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentDescriptionResource(I)I

    move-result v0

    .line 225
    .local v0, descriptionStringId:I
    iget-object v5, v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->accessibilityOverlay:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {v6, v0, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v5, v2, Lcom/google/android/finsky/adapters/ListGridItem$BucketEntryViewHolder;->bitmapView:Lcom/google/android/finsky/layout/DocImageView;

    iget-object v6, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v5, v1, v6}, Lcom/google/android/finsky/layout/DocImageView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 229
    return-void

    .end local v0           #descriptionStringId:I
    :cond_1
    move v5, v7

    .line 216
    goto :goto_0

    :cond_2
    move v5, v7

    .line 218
    goto :goto_1

    :cond_3
    move v6, v7

    .line 220
    goto :goto_2
.end method

.method private getDisplayedColumns(Lcom/google/android/finsky/api/model/Bucket;I)I
    .locals 2
    .parameter "bucket"
    .parameter "row"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/ListGridItem;->getDisplayedRows(Lcom/google/android/finsky/api/model/Bucket;)I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mColumns:I

    mul-int/2addr v1, p2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mColumns:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDisplayedRows(Lcom/google/android/finsky/api/model/Bucket;)I
    .locals 4
    .parameter "bucket"

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Bucket;->getChildCount()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mColumns:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;Z)V
    .locals 13
    .parameter "view"
    .parameter "showCorpusStrip"

    .prologue
    const/4 v12, 0x0

    .line 118
    iget-object v10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 119
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f08005f

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 120
    .local v0, bucketHeader:Landroid/widget/LinearLayout;
    new-instance v10, Lcom/google/android/finsky/adapters/ListGridItem$1;

    invoke-direct {v10, p0}, Lcom/google/android/finsky/adapters/ListGridItem$1;-><init>(Lcom/google/android/finsky/adapters/ListGridItem;)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v10, 0x7f080062

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 129
    .local v5, headerText:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBucket:Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v10}, Lcom/google/android/finsky/api/model/Bucket;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBucket:Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/Bucket;->getBackend()I

    move-result v11

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendForegroundColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBucket:Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v10}, Lcom/google/android/finsky/api/model/Bucket;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 135
    const v10, 0x7f080068

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 136
    .local v1, bucketRowHolder:Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    .local v7, row:I
    :goto_0
    iget v10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mRows:I

    if-ge v7, v10, :cond_5

    .line 137
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 139
    .local v9, rowOfBucketEntries:Landroid/widget/LinearLayout;
    iget-object v10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBucket:Lcom/google/android/finsky/api/model/Bucket;

    invoke-direct {p0, v10}, Lcom/google/android/finsky/adapters/ListGridItem;->getDisplayedRows(Lcom/google/android/finsky/api/model/Bucket;)I

    move-result v10

    iput v10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mMaxRowCount:I

    .line 140
    iget v10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mMaxRowCount:I

    if-ge v7, v10, :cond_3

    .line 141
    if-nez v9, :cond_0

    .line 142
    const v10, 0x7f040021

    invoke-virtual {v6, v10, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .end local v9           #rowOfBucketEntries:Landroid/widget/LinearLayout;
    check-cast v9, Landroid/widget/LinearLayout;

    .line 144
    .restart local v9       #rowOfBucketEntries:Landroid/widget/LinearLayout;
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 146
    .local v8, rowLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 147
    const/high16 v10, 0x3f80

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 148
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    .end local v8           #rowLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    iget-object v10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBucket:Lcom/google/android/finsky/api/model/Bucket;

    invoke-direct {p0, v10, v7}, Lcom/google/android/finsky/adapters/ListGridItem;->getDisplayedColumns(Lcom/google/android/finsky/api/model/Bucket;I)I

    move-result v3

    .line 152
    .local v3, displayedColumns:I
    const/4 v2, 0x0

    .local v2, column:I
    :goto_1
    iget v10, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mColumns:I

    if-ge v2, v10, :cond_4

    .line 153
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 154
    .local v4, docEntry:Landroid/view/View;
    if-nez v4, :cond_1

    .line 155
    const v10, 0x7f040091

    invoke-virtual {v6, v10, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 157
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    :cond_1
    if-ge v2, v3, :cond_2

    .line 161
    iget-object v11, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mBucket:Lcom/google/android/finsky/api/model/Bucket;

    move-object v10, v4

    check-cast v10, Landroid/view/ViewGroup;

    invoke-direct {p0, v11, v7, v2, v10}, Lcom/google/android/finsky/adapters/ListGridItem;->bindBucketEntry(Lcom/google/android/finsky/api/model/Bucket;IILandroid/view/ViewGroup;)V

    .line 162
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 164
    :cond_2
    const/4 v10, 0x4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 168
    .end local v2           #column:I
    .end local v3           #displayedColumns:I
    .end local v4           #docEntry:Landroid/view/View;
    :cond_3
    if-eqz v9, :cond_4

    .line 169
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 172
    .end local v9           #rowOfBucketEntries:Landroid/widget/LinearLayout;
    :cond_5
    return-void
.end method

.method public getCellHeight()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/google/android/finsky/adapters/ListGridItem;->mWidth:I

    return v0
.end method

.method public getGridItemType()Lcom/google/android/finsky/adapters/UnevenGridItemType;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/google/android/finsky/adapters/UnevenGridItemType;->LIST_FOUR_BLOCK_4x2:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 98
    const v0, 0x7f040090

    return v0
.end method
