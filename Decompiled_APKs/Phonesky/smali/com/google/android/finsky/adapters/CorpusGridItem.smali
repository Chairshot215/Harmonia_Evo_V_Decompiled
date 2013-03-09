.class public Lcom/google/android/finsky/adapters/CorpusGridItem;
.super Ljava/lang/Object;
.source "CorpusGridItem.java"

# interfaces
.implements Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;


# instance fields
.field private final mCellHeight:I

.field private final mContext:Landroid/content/Context;

.field private final mCurrentPageUrl:Ljava/lang/String;

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "navigationManager"
    .parameter "toc"
    .parameter "currentPageUrl"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 59
    iput-object p3, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 60
    iput-object p4, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mCurrentPageUrl:Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/CorpusGridItem;->approximateCellHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mCellHeight:I

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/adapters/CorpusGridItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mCurrentPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/adapters/CorpusGridItem;)Lcom/google/android/finsky/api/model/DfeToc;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/adapters/CorpusGridItem;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method private approximateCellHeight()I
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 76
    .local v0, corpusCount:I
    int-to-float v1, v0

    const v2, 0x3f19999a

    mul-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method private bindCorpusTile(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ZZIII)V
    .locals 8
    .parameter "inflater"
    .parameter "group"
    .parameter "title"
    .parameter "landingUrl"
    .parameter "isFirst"
    .parameter "isLast"
    .parameter "backendColor"
    .parameter "backgroundDrawableId"
    .parameter "backendId"

    .prologue
    .line 113
    const v6, 0x7f04002e

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 114
    .local v2, cell:Landroid/view/ViewGroup;
    const v6, 0x7f08008a

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 117
    .local v4, strip:Landroid/view/View;
    const v6, -0x3f000001

    and-int/2addr v6, p7

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 119
    const v6, 0x7f08008d

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 120
    .local v5, textView:Landroid/widget/TextView;
    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const v6, 0x7f08008e

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 123
    .local v3, corpusImageView:Landroid/widget/ImageView;
    move/from16 v0, p8

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    const v6, 0x7f08008b

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz p5, :cond_0

    const/4 v6, 0x2

    :goto_0
    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 136
    const v6, 0x7f08008c

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz p6, :cond_1

    const/4 v6, 0x2

    :goto_1
    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 138
    const v6, 0x7f080018

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 139
    .local v1, accessibilityOverlay:Landroid/view/View;
    new-instance v6, Lcom/google/android/finsky/adapters/CorpusGridItem$1;

    move/from16 v0, p9

    invoke-direct {v6, p0, v0, p4, p3}, Lcom/google/android/finsky/adapters/CorpusGridItem$1;-><init>(Lcom/google/android/finsky/adapters/CorpusGridItem;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {v1, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 154
    return-void

    .line 135
    .end local v1           #accessibilityOverlay:Landroid/view/View;
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    .line 136
    :cond_1
    const/4 v6, 0x1

    goto :goto_1
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;Z)V
    .locals 13
    .parameter "group"
    .parameter "showCorpusStrip"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 95
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 96
    .local v10, corporaCount:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v10, :cond_2

    .line 97
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 99
    .local v11, data:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    add-int/lit8 v0, v10, -0x1

    if-ne v12, v0, :cond_0

    const/4 v6, 0x1

    .line 100
    .local v6, isLast:Z
    :goto_1
    invoke-virtual {v11}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v9

    .line 102
    .local v9, backendId:I
    iget-object v0, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v7

    .line 103
    .local v7, backendHintColor:I
    invoke-static {v9}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusWatermarkIconBig(I)I

    move-result v8

    .line 105
    .local v8, backendDrawable:I
    invoke-virtual {v11}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v12, :cond_1

    const/4 v5, 0x1

    :goto_2
    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/adapters/CorpusGridItem;->bindCorpusTile(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ZZIII)V

    .line 96
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 99
    .end local v6           #isLast:Z
    .end local v7           #backendHintColor:I
    .end local v8           #backendDrawable:I
    .end local v9           #backendId:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 105
    .restart local v6       #isLast:Z
    .restart local v7       #backendHintColor:I
    .restart local v8       #backendDrawable:I
    .restart local v9       #backendId:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 108
    .end local v6           #isLast:Z
    .end local v7           #backendHintColor:I
    .end local v8           #backendDrawable:I
    .end local v9           #backendId:I
    .end local v11           #data:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_2
    return-void
.end method

.method public getCellHeight()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/google/android/finsky/adapters/CorpusGridItem;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x2

    return v0
.end method

.method public getGridItemType()Lcom/google/android/finsky/adapters/UnevenGridItemType;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/google/android/finsky/adapters/UnevenGridItemType;->CORPUS_2xN:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f04002f

    return v0
.end method
