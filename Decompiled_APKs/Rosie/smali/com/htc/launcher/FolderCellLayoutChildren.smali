.class public Lcom/htc/launcher/FolderCellLayoutChildren;
.super Landroid/view/ViewGroup;
.source "FolderCellLayoutChildren.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CellLayoutChildren"


# instance fields
.field private m_nCellHeight:I

.field private m_nCellWidth:I

.field private m_nHeightGap:I

.field private final m_nTmpCellXY:[I

.field private m_nWidthGap:I

.field private final m_wallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/launcher/FolderCellLayoutChildren;->m_nTmpCellXY:[I

    .line 42
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/FolderCellLayoutChildren;->m_wallpaperManager:Landroid/app/WallpaperManager;

    .line 43
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 141
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 144
    invoke-virtual {p0}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildCount()I

    move-result v2

    .line 145
    .local v2, nCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 146
    invoke-virtual {p0, v1}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/launcher/FolderCellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    .line 47
    return-void
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildCount()I

    move-result v1

    .line 58
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 59
    invoke-virtual {p0, v2}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 62
    .local v3, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iget v4, v3, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_0

    iget v4, v3, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, v3, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_0

    iget v4, v3, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    iget v5, v3, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_0

    .line 67
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    :goto_1
    return-object v0

    .line 58
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 8
    .parameter "child"

    .prologue
    const/high16 v7, 0x4000

    .line 87
    iget v2, p0, Lcom/htc/launcher/FolderCellLayoutChildren;->m_nCellWidth:I

    .line 88
    .local v2, nCellWidth:I
    iget v1, p0, Lcom/htc/launcher/FolderCellLayoutChildren;->m_nCellHeight:I

    .line 89
    .local v1, nCellHeight:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 91
    .local v0, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iget v5, p0, Lcom/htc/launcher/FolderCellLayoutChildren;->m_nWidthGap:I

    iget v6, p0, Lcom/htc/launcher/FolderCellLayoutChildren;->m_nHeightGap:I

    invoke-virtual {v0, v2, v1, v5, v6}, Lcom/htc/launcher/CellLayout$LayoutParams;->setup(IIII)V

    .line 92
    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 93
    .local v4, nChildWidthMeasureSpec:I
    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 95
    .local v3, nChildHeightMeasureSpec:I
    invoke-virtual {p1, v4, v3}, Landroid/view/View;->measure(II)V

    .line 96
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildCount()I

    move-result v13

    .line 101
    .local v13, nCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v13, :cond_1

    .line 102
    invoke-virtual {p0, v9}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 103
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 104
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 106
    .local v10, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iget v11, v10, Lcom/htc/launcher/CellLayout$LayoutParams;->x:I

    .line 107
    .local v11, nChildLeft:I
    iget v12, v10, Lcom/htc/launcher/CellLayout$LayoutParams;->y:I

    .line 108
    .local v12, nChildTop:I
    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v0, v11

    iget v1, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, v12

    invoke-virtual {v8, v11, v12, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 110
    iget-boolean v0, v10, Lcom/htc/launcher/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/htc/launcher/CellLayout$LayoutParams;->dropped:Z

    .line 113
    iget-object v7, p0, Lcom/htc/launcher/FolderCellLayoutChildren;->m_nTmpCellXY:[I

    .line 114
    .local v7, cellXY:[I
    invoke-virtual {p0, v7}, Lcom/htc/launcher/FolderCellLayoutChildren;->getLocationOnScreen([I)V

    .line 115
    iget-object v0, p0, Lcom/htc/launcher/FolderCellLayoutChildren;->m_wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/htc/launcher/FolderCellLayoutChildren;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    const/4 v3, 0x0

    aget v3, v7, v3

    add-int/2addr v3, v11

    iget v4, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v4, v12

    iget v5, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 101
    .end local v7           #cellXY:[I
    .end local v10           #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    .end local v11           #nChildLeft:I
    .end local v12           #nChildTop:I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 120
    .end local v8           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildCount()I

    move-result v2

    .line 73
    .local v2, nCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 74
    invoke-virtual {p0, v1}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/htc/launcher/FolderCellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 78
    .local v4, nWidthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 79
    .local v3, nHeightSpecSize:I
    invoke-virtual {p0, v4, v3}, Lcom/htc/launcher/FolderCellLayoutChildren;->setMeasuredDimension(II)V

    .line 80
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 132
    if-eqz p1, :cond_0

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 134
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/htc/launcher/FolderCellLayoutChildren;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 137
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setCellDimensions(IIII)V
    .locals 0
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "widthGap"
    .parameter "heightGap"

    .prologue
    .line 50
    iput p1, p0, Lcom/htc/launcher/FolderCellLayoutChildren;->m_nCellWidth:I

    .line 51
    iput p2, p0, Lcom/htc/launcher/FolderCellLayoutChildren;->m_nCellHeight:I

    .line 52
    iput p3, p0, Lcom/htc/launcher/FolderCellLayoutChildren;->m_nWidthGap:I

    .line 53
    iput p4, p0, Lcom/htc/launcher/FolderCellLayoutChildren;->m_nHeightGap:I

    .line 54
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildCount()I

    move-result v1

    .line 154
    .local v1, nCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 155
    invoke-virtual {p0, v0}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 156
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 158
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 159
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 154
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 167
    return-void
.end method

.method public setupLp(Lcom/htc/launcher/CellLayout$LayoutParams;)V
    .locals 4
    .parameter "lp"

    .prologue
    .line 83
    iget v0, p0, Lcom/htc/launcher/FolderCellLayoutChildren;->m_nCellWidth:I

    iget v1, p0, Lcom/htc/launcher/FolderCellLayoutChildren;->m_nCellHeight:I

    iget v2, p0, Lcom/htc/launcher/FolderCellLayoutChildren;->m_nWidthGap:I

    iget v3, p0, Lcom/htc/launcher/FolderCellLayoutChildren;->m_nHeightGap:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/htc/launcher/CellLayout$LayoutParams;->setup(IIII)V

    .line 84
    return-void
.end method
