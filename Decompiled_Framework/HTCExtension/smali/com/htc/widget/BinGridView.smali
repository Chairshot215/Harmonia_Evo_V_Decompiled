.class Lcom/htc/widget/BinGridView;
.super Landroid/widget/GridView;
.source "BinGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/htc/widget/DragSource;
.implements Lcom/htc/widget/DropTarget;


# static fields
.field private static final BLANK_SIZE:I = 0x2

.field private static final LOCAL_LOGV:Z


# instance fields
.field private mColumnWidth:I

.field private mDragId:J

.field private mDragItemView:Landroid/view/View;

.field private mDragger:Lcom/htc/widget/DragController;

.field private mIsDrop:Z

.field private mIsFocused:Z

.field private mIsRemove:Z

.field private mIsUnremovable:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPoolFocusWidth:I

.field private mRemoveUri:Landroid/net/Uri;

.field private mWidgetHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/htc/widget/BinGridView;->gInit()V

    const/4 v0, 0x0

    const-string v1, "list_selector_holo_dark"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/BinGridView;->setSelector(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->setColumnWidthByCurrentMode()V

    invoke-direct {p0}, Lcom/htc/widget/BinGridView;->gInit()V

    const/4 v0, 0x0

    const-string v1, "list_selector_holo_dark"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/BinGridView;->setSelector(I)V

    :cond_0
    return-void
.end method

.method private gInit()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/BinGridView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/htc/widget/BinGridView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iput-boolean v2, p0, Lcom/htc/widget/BinGridView;->mIsFocused:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/BinGridView;->mDragger:Lcom/htc/widget/DragController;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/BinGridView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0, v2}, Lcom/htc/widget/BinGridView;->setStretchMode(I)V

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20d0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinGridView;->mPoolFocusWidth:I

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20500b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/BinGridView;->mWidgetHeight:I

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->initFlags()V

    iput-boolean v2, p0, Lcom/htc/widget/BinGridView;->mIsUnremovable:Z

    return-void
.end method

.method private getLocationForNewItem([I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x2

    new-array v1, v3, [I

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/BinGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/htc/widget/BinGridView;->getLocationOnScreen([I)V

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, p1, v6

    iget v4, p0, Lcom/htc/widget/BinGridView;->mColumnWidth:I

    add-int/2addr v3, v4

    aput v3, p1, v6

    aget v3, p1, v6

    iget v4, p0, Lcom/htc/widget/BinGridView;->mColumnWidth:I

    add-int/2addr v3, v4

    aget v4, v1, v6

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    aget v2, p1, v7

    invoke-virtual {p0, v6}, Lcom/htc/widget/BinGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    aput v3, p1, v7

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget v3, v1, v6

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, p1, v6

    aget v3, v1, v7

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, p1, v7

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)Z
    .locals 2

    move-object v0, p6

    check-cast v0, Lcom/htc/widget/TaskInfo;

    check-cast p1, Lcom/htc/widget/DropTarget;

    if-eq p0, p1, :cond_0

    iget v1, v0, Lcom/htc/widget/TaskInfo;->isRemovable:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addtoDB()V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/BinAdapter;

    invoke-virtual {v7}, Lcom/htc/widget/BinAdapter;->getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "is_host"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v0, :cond_0

    const/16 v1, 0x3e9

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/BinGridView;->mRemoveUri:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, Lcom/htc/widget/BinGridView;->mDragId:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/BinGridView;->mIsDrop:Z

    iput-boolean v10, p0, Lcom/htc/widget/BinGridView;->mIsRemove:Z

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "hanlde is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    const/high16 v11, 0x4120

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v6, p0, Lcom/htc/widget/BinGridView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    iget-object v4, p0, Lcom/htc/widget/BinGridView;->mPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->getLeft()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    const/high16 v7, 0x4000

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->getRight()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->getBottom()I

    move-result v9

    iget v10, p0, Lcom/htc/widget/BinGridView;->mWidgetHeight:I

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v6, 0x2

    new-array v3, v6, [I

    invoke-virtual {p0, v3}, Lcom/htc/widget/BinGridView;->getLocationInWindow([I)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/widget/BinGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v6, p0, Lcom/htc/widget/BinGridView;->mIsFocused:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/htc/widget/BinGridView;->mIsUnremovable:Z

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x20a0051

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_1
    iget-object v6, p0, Lcom/htc/widget/BinGridView;->mPath:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v5, v11, v11, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-super {p0, p1}, Landroid/widget/GridView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v6, p0, Lcom/htc/widget/BinGridView;->mPoolFocusWidth:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v5, v11, v11, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_2
    iget-boolean v6, p0, Lcom/htc/widget/BinGridView;->mIsDrop:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/htc/widget/BinGridView;->mIsRemove:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/widget/BinGridView;->mDragger:Lcom/htc/widget/DragController;

    check-cast v6, Lcom/htc/widget/CarouselHost;

    invoke-virtual {v6}, Lcom/htc/widget/CarouselHost;->removeIndicator()V

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->initFlags()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "app_selection_highlight"

    const v9, 0x20a0030

    invoke-static {v7, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/GridView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method initFlags()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/BinGridView;->mIsDrop:Z

    iput-boolean v0, p0, Lcom/htc/widget/BinGridView;->mIsRemove:Z

    return-void
.end method

.method protected layoutChildren()V
    .locals 1

    invoke-super {p0}, Landroid/widget/GridView;->layoutChildren()V

    iget-boolean v0, p0, Lcom/htc/widget/BinGridView;->mIsDrop:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/BinGridView;->mIsRemove:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/BinGridView;->mIsDrop:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/BinGridView;->mIsRemove:Z

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/GridView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->setColumnWidthByCurrentMode()V

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->initFlags()V

    return-void
.end method

.method public onDragEnter(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/BinGridView;->setFocus(Z)V

    move-object v0, p6

    check-cast v0, Lcom/htc/widget/TaskInfo;

    iget v1, v0, Lcom/htc/widget/TaskInfo;->isRemovable:I

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/htc/widget/BinGridView;->mIsUnremovable:Z

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->invalidate()V

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/BinGridView;->mIsUnremovable:Z

    goto :goto_0
.end method

.method public onDragExit(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/BinGridView;->setFocus(Z)V

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->invalidate()V

    return-void
.end method

.method public onDragOver(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 9

    const/4 v6, 0x2

    new-array v2, v6, [I

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->initFlags()V

    move-object v6, p1

    check-cast v6, Lcom/htc/widget/DropTarget;

    if-eq p0, v6, :cond_1

    move-object v1, p6

    check-cast v1, Lcom/htc/widget/TaskInfo;

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/BinAdapter;->getUri()Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v6, "gId"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "remove"

    invoke-static {v3, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "gId"

    invoke-virtual {v6, v7, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/BinGridView;->mRemoveUri:Landroid/net/Uri;

    iget-wide v6, v1, Lcom/htc/widget/TaskInfo;->_id:J

    iput-wide v6, p0, Lcom/htc/widget/BinGridView;->mDragId:J

    invoke-direct {p0, v2}, Lcom/htc/widget/BinGridView;->getLocationForNewItem([I)V

    iget-object v6, p0, Lcom/htc/widget/BinGridView;->mDragger:Lcom/htc/widget/DragController;

    check-cast v6, Lcom/htc/widget/CarouselHost;

    const/4 v7, 0x0

    aget v7, v2, v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v8, v2, v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    instance-of v6, p1, Lcom/htc/widget/CarouselWidget;

    if-eqz v6, :cond_0

    check-cast p1, Lcom/htc/widget/CarouselWidget;

    invoke-virtual {p1, p0}, Lcom/htc/widget/CarouselWidget;->doAnimationForDifferentTarget(Lcom/htc/widget/DropTarget;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/htc/widget/BinGridView;->mDragItemView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v6, p0, Lcom/htc/widget/BinGridView;->mDragger:Lcom/htc/widget/DragController;

    check-cast v6, Lcom/htc/widget/CarouselHost;

    const/4 v7, 0x0

    aget v7, v2, v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v8, v2, v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    goto :goto_0
.end method

.method public onDropAnimationEnd(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    check-cast p1, Lcom/htc/widget/DragSource;

    if-ne p0, p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/BinGridView;->mDragItemView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/BinGridView;->mDragItemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/BinGridView;->mDragger:Lcom/htc/widget/DragController;

    check-cast v0, Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->removeIndicator()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/BinGridView;->mDragItemView:Landroid/view/View;

    :cond_2
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 4

    if-eqz p2, :cond_1

    check-cast p1, Lcom/htc/widget/DragSource;

    if-ne p0, p1, :cond_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Lcom/htc/widget/BinGridView;->mDragItemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/htc/widget/BinGridView;->mDragger:Lcom/htc/widget/DragController;

    check-cast v1, Lcom/htc/widget/CarouselHost;

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/htc/widget/BinGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-object p2, p0, Lcom/htc/widget/BinGridView;->mDragItemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->initFlags()V

    iget-object v1, p0, Lcom/htc/widget/BinGridView;->mDragger:Lcom/htc/widget/DragController;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p2, p0, v2, v0}, Lcom/htc/widget/DragController;->startDrag(Landroid/view/View;Lcom/htc/widget/DragSource;Ljava/lang/Object;I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method setColumnWidthByCurrentMode()V
    .locals 5

    iget-object v3, p0, Lcom/htc/widget/BinGridView;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20500bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/BinGridView;->mColumnWidth:I

    :goto_0
    iget v3, p0, Lcom/htc/widget/BinGridView;->mColumnWidth:I

    invoke-virtual {p0, v3}, Lcom/htc/widget/BinGridView;->setColumnWidth(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/BinGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20500be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/BinGridView;->mColumnWidth:I

    goto :goto_0
.end method

.method public setDragger(Lcom/htc/widget/DragController;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/BinGridView;->mDragger:Lcom/htc/widget/DragController;

    return-void
.end method

.method public setFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/BinGridView;->mIsFocused:Z

    return-void
.end method
