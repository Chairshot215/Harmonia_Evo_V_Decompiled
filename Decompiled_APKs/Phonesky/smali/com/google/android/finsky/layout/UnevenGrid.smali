.class public Lcom/google/android/finsky/layout/UnevenGrid;
.super Landroid/view/ViewGroup;
.source "UnevenGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/UnevenGrid$1;,
        Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

.field private mCellHeight:I

.field private mCellWidth:I

.field mConvertViewTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

.field private mGutterSize:I

.field private mHasTopGutter:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/layout/CellBasedLayout$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mNumCellsWide:I

.field private mObserver:Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;

.field private mRebindNecessary:Z

.field private mShopperBitmap:Landroid/graphics/Bitmap;

.field private mShopperBitmapRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/UnevenGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attributeSet"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    .line 42
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mConvertViewTypeMap:Ljava/util/Map;

    .line 43
    iput-boolean v3, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mRebindNecessary:Z

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 69
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mNumCellsWide:I

    .line 70
    new-instance v1, Lcom/google/android/finsky/layout/CellBasedLayout;

    iget v2, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mNumCellsWide:I

    invoke-direct {v1, v2}, Lcom/google/android/finsky/layout/CellBasedLayout;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    .line 71
    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGutterSize:I

    .line 73
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mShopperBitmapRect:Landroid/graphics/Rect;

    .line 74
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020014

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mShopperBitmap:Landroid/graphics/Bitmap;

    .line 77
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/UnevenGrid;->setWillNotDraw(Z)V

    .line 78
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/finsky/layout/UnevenGrid;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mRebindNecessary:Z

    return p1
.end method

.method private measureChildren()I
    .locals 13

    .prologue
    const/high16 v12, 0x4000

    const/4 v7, 0x0

    .line 148
    const/4 v4, 0x0

    .line 149
    .local v4, maxHeight:I
    iget v8, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGutterSize:I

    div-int/lit8 v1, v8, 0x2

    .line 150
    .local v1, halfGutter:I
    const/4 v0, 0x0

    .local v0, child:I
    :goto_0
    iget-object v8, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 151
    iget-object v8, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/CellBasedLayout$Item;

    .line 152
    .local v2, item:Lcom/google/android/finsky/layout/CellBasedLayout$Item;
    iget-object v8, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    invoke-virtual {v8, v2}, Lcom/google/android/finsky/layout/CellBasedLayout;->isOnLeftEdge(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v3, v7

    .line 153
    .local v3, leftMargin:I
    :goto_1
    iget-object v8, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    invoke-virtual {v8, v2}, Lcom/google/android/finsky/layout/CellBasedLayout;->isOnRightEdge(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v6, v7

    .line 154
    .local v6, rightMargin:I
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/UnevenGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget v9, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellWidth:I

    invoke-interface {v2}, Lcom/google/android/finsky/layout/CellBasedLayout$Item;->getCellWidth()I

    move-result v10

    mul-int/2addr v9, v10

    add-int v10, v3, v6

    sub-int/2addr v9, v10

    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v10, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellHeight:I

    invoke-interface {v2}, Lcom/google/android/finsky/layout/CellBasedLayout$Item;->getCellHeight()I

    move-result v11

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGutterSize:I

    sub-int/2addr v10, v11

    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 161
    iget-object v8, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    invoke-virtual {v8, v2}, Lcom/google/android/finsky/layout/CellBasedLayout;->getTop(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)I

    move-result v8

    invoke-interface {v2}, Lcom/google/android/finsky/layout/CellBasedLayout$Item;->getCellHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3           #leftMargin:I
    .end local v6           #rightMargin:I
    :cond_0
    move v3, v1

    .line 152
    goto :goto_1

    .restart local v3       #leftMargin:I
    :cond_1
    move v6, v1

    .line 153
    goto :goto_2

    .line 163
    .end local v2           #item:Lcom/google/android/finsky/layout/CellBasedLayout$Item;
    .end local v3           #leftMargin:I
    :cond_2
    iget v7, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellHeight:I

    mul-int v5, v4, v7

    .line 164
    .local v5, result:I
    iget-boolean v7, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mHasTopGutter:Z

    if-nez v7, :cond_3

    .line 165
    iget v7, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGutterSize:I

    sub-int/2addr v5, v7

    .line 167
    :cond_3
    return v5
.end method

.method private rebindChildren()V
    .locals 8

    .prologue
    .line 216
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 217
    new-instance v5, Lcom/google/android/finsky/layout/CellBasedLayout;

    iget v6, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mNumCellsWide:I

    invoke-direct {v5, v6}, Lcom/google/android/finsky/layout/CellBasedLayout;-><init>(I)V

    iput-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    .line 218
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    invoke-virtual {v5}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 219
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/UnevenGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 222
    .local v3, oldChild:Landroid/view/View;
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mConvertViewTypeMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mConvertViewTypeMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    invoke-virtual {v6, v1}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->getItemViewType(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 224
    :cond_0
    if-eqz v3, :cond_1

    .line 225
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/UnevenGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/UnevenGrid;->removeViewInLayout(Landroid/view/View;)V

    .line 227
    :cond_1
    const/4 v3, 0x0

    .line 229
    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    invoke-virtual {v5, v1, v3, p0}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 230
    .local v4, view:Landroid/view/View;
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    invoke-virtual {v5, v1}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->getItem(I)Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;

    move-result-object v2

    .line 232
    .local v2, item:Lcom/google/android/finsky/layout/CellBasedLayout$Item;
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    invoke-virtual {v5, v2}, Lcom/google/android/finsky/layout/CellBasedLayout;->addItem(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)V

    .line 233
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    if-eq v4, v3, :cond_4

    .line 235
    if-eqz v3, :cond_3

    .line 236
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/UnevenGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/UnevenGrid;->removeViewInLayout(Landroid/view/View;)V

    .line 238
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v1, v5, v6}, Lcom/google/android/finsky/layout/UnevenGrid;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 239
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mConvertViewTypeMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    invoke-virtual {v7, v1}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->getItemViewType(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v2           #item:Lcom/google/android/finsky/layout/CellBasedLayout$Item;
    .end local v3           #oldChild:Landroid/view/View;
    .end local v4           #view:Landroid/view/View;
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getChildCount()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v5, v6, :cond_7

    .line 244
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 245
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mConvertViewTypeMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 247
    :cond_6
    iget-object v5, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getChildCount()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/google/android/finsky/layout/UnevenGrid;->removeViewsInLayout(II)V

    .line 249
    .end local v0           #i:I
    :cond_7
    return-void
.end method

.method private removeAllItems()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lcom/google/android/finsky/layout/CellBasedLayout;

    iget v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mNumCellsWide:I

    invoke-direct {v0, v1}, Lcom/google/android/finsky/layout/CellBasedLayout;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    .line 172
    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 173
    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mConvertViewTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 174
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->removeAllViewsInLayout()V

    .line 175
    return-void
.end method

.method private resetAdapter()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mObserver:Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mObserver:Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 203
    :cond_0
    return-void
.end method


# virtual methods
.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mShopperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 210
    iput-object v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mShopperBitmap:Landroid/graphics/Bitmap;

    .line 211
    iput-object v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mShopperBitmapRect:Landroid/graphics/Rect;

    .line 212
    invoke-direct {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->resetAdapter()V

    .line 213
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 90
    iget-object v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mShopperBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 92
    iget v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mShopperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mShopperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 94
    .local v0, scaledWidth:I
    iget-object v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mShopperBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellHeight:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 96
    iget-object v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mShopperBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mShopperBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v6, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 98
    .end local v0           #scaledWidth:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 99
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 103
    sub-int v4, p5, p3

    .line 104
    .local v4, height:I
    sub-int v11, p4, p2

    .line 105
    .local v11, width:I
    if-lez v11, :cond_0

    if-gtz v4, :cond_1

    .line 127
    :cond_0
    return-void

    .line 109
    :cond_1
    iget v12, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGutterSize:I

    div-int/lit8 v3, v12, 0x2

    .line 110
    .local v3, halfGutter:I
    const/4 v1, 0x0

    .local v1, child:I
    :goto_0
    iget-object v12, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v1, v12, :cond_0

    .line 111
    iget-object v12, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mItems:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/CellBasedLayout$Item;

    .line 112
    .local v5, item:Lcom/google/android/finsky/layout/CellBasedLayout$Item;
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/UnevenGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 113
    .local v2, childView:Landroid/view/View;
    iget-object v12, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    invoke-virtual {v12, v5}, Lcom/google/android/finsky/layout/CellBasedLayout;->getLeft(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)I

    move-result v12

    iget v13, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellWidth:I

    mul-int v6, v12, v13

    .line 114
    .local v6, left:I
    iget-object v12, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    invoke-virtual {v12, v5}, Lcom/google/android/finsky/layout/CellBasedLayout;->getTop(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)I

    move-result v12

    iget v13, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellHeight:I

    mul-int v10, v12, v13

    .line 115
    .local v10, top:I
    invoke-interface {v5}, Lcom/google/android/finsky/layout/CellBasedLayout$Item;->getCellWidth()I

    move-result v12

    iget v13, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellWidth:I

    mul-int/2addr v12, v13

    add-int v8, v6, v12

    .line 116
    .local v8, right:I
    invoke-interface {v5}, Lcom/google/android/finsky/layout/CellBasedLayout$Item;->getCellHeight()I

    move-result v12

    iget v13, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellHeight:I

    mul-int/2addr v12, v13

    add-int v0, v10, v12

    .line 117
    .local v0, bottom:I
    iget-object v12, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    invoke-virtual {v12, v5}, Lcom/google/android/finsky/layout/CellBasedLayout;->isOnLeftEdge(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v7, 0x0

    .line 118
    .local v7, leftMargin:I
    :goto_1
    iget-object v12, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGridData:Lcom/google/android/finsky/layout/CellBasedLayout;

    invoke-virtual {v12, v5}, Lcom/google/android/finsky/layout/CellBasedLayout;->isOnRightEdge(Lcom/google/android/finsky/layout/CellBasedLayout$Item;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v9, 0x0

    .line 120
    .local v9, rightMargin:I
    :goto_2
    iget-boolean v12, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mHasTopGutter:Z

    if-nez v12, :cond_2

    .line 121
    iget v12, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGutterSize:I

    sub-int/2addr v10, v12

    .line 122
    iget v12, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGutterSize:I

    sub-int/2addr v0, v12

    .line 124
    :cond_2
    add-int v12, v6, v7

    iget v13, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mGutterSize:I

    add-int/2addr v13, v10

    sub-int v14, v8, v9

    invoke-virtual {v2, v12, v13, v14, v0}, Landroid/view/View;->layout(IIII)V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v7           #leftMargin:I
    .end local v9           #rightMargin:I
    :cond_3
    move v7, v3

    .line 117
    goto :goto_1

    .restart local v7       #leftMargin:I
    :cond_4
    move v9, v3

    .line 118
    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mRebindNecessary:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->rebindChildren()V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mRebindNecessary:Z

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 136
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/layout/UnevenGrid;->setMeasuredDimension(II)V

    .line 145
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/layout/UnevenGrid;->setMeasuredDimension(II)V

    .line 142
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mNumCellsWide:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellWidth:I

    .line 143
    iget v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellWidth:I

    iput v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mCellHeight:I

    .line 144
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->measureChildren()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/layout/UnevenGrid;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setAdapter(Lcom/google/android/finsky/adapters/UnevenGridAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->resetAdapter()V

    .line 183
    invoke-direct {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->removeAllItems()V

    .line 185
    iput-object p1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mObserver:Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;-><init>(Lcom/google/android/finsky/layout/UnevenGrid;Lcom/google/android/finsky/layout/UnevenGrid$1;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mObserver:Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mObserver:Lcom/google/android/finsky/layout/UnevenGrid$UnevenGridAdapterObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 191
    invoke-direct {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->rebindChildren()V

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/UnevenGrid;->requestLayout()V

    .line 194
    return-void
.end method

.method public setHasTopGutter(Z)V
    .locals 0
    .parameter "hasTopGutter"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/UnevenGrid;->mHasTopGutter:Z

    .line 86
    return-void
.end method
