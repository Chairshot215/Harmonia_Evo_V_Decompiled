.class public Lcom/htc/launcher/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field dropped:Z

.field public isDragging:Z

.field public m_bIsLockedToGrid:Z

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"

    .prologue
    const/4 v0, -0x1

    .line 1878
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->m_bIsLockedToGrid:Z

    .line 1879
    iput p1, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    .line 1880
    iput p2, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    .line 1881
    iput p3, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 1882
    iput p4, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 1883
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 1866
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1854
    iput-boolean v0, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->m_bIsLockedToGrid:Z

    .line 1867
    iput v0, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 1868
    iput v0, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 1869
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 1872
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1854
    iput-boolean v0, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->m_bIsLockedToGrid:Z

    .line 1873
    iput v0, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 1874
    iput v0, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 1875
    return-void
.end method


# virtual methods
.method public setHeight(I)V
    .locals 0
    .parameter "nHeight"

    .prologue
    .line 1931
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1932
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "nWidth"

    .prologue
    .line 1927
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1928
    return-void
.end method

.method public setX(I)V
    .locals 0
    .parameter "nX"

    .prologue
    .line 1935
    iput p1, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->x:I

    .line 1936
    return-void
.end method

.method public setY(I)V
    .locals 0
    .parameter "nY"

    .prologue
    .line 1939
    iput p1, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->y:I

    .line 1940
    return-void
.end method

.method public setup(IIII)V
    .locals 6
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "widthGap"
    .parameter "heightGap"

    .prologue
    .line 1887
    iget-boolean v4, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->m_bIsLockedToGrid:Z

    if-eqz v4, :cond_0

    .line 1888
    iget v0, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 1889
    .local v0, myCellHSpan:I
    iget v1, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 1890
    .local v1, myCellVSpan:I
    iget v2, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    .line 1891
    .local v2, myCellX:I
    iget v3, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    .line 1893
    .local v3, myCellY:I
    mul-int v4, v0, p1

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    iget v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1894
    mul-int v4, v1, p2

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    iget v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1895
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    iget v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->x:I

    .line 1896
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    iget v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->y:I

    .line 1898
    .end local v0           #myCellHSpan:I
    .end local v1           #myCellVSpan:I
    .end local v2           #myCellX:I
    .end local v3           #myCellY:I
    :cond_0
    return-void
.end method

.method public setup(IIIIIIII)V
    .locals 6
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "widthGap"
    .parameter "heightGap"
    .parameter "hStartPadding"
    .parameter "vStartPadding"
    .parameter "numHorizontalCell"
    .parameter "numVerticalCell"

    .prologue
    const/4 v5, -0x1

    .line 1903
    iget-boolean v4, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->m_bIsLockedToGrid:Z

    if-eqz v4, :cond_0

    .line 1904
    iget v4, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v4, v5, :cond_1

    move v0, p7

    .line 1905
    .local v0, myCellHSpan:I
    :goto_0
    iget v4, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v4, v5, :cond_2

    move v1, p8

    .line 1906
    .local v1, myCellVSpan:I
    :goto_1
    iget v2, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    .line 1907
    .local v2, myCellX:I
    iget v3, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    .line 1918
    .local v3, myCellY:I
    mul-int v4, v0, p1

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1919
    mul-int v4, v1, p2

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1920
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    add-int/2addr v4, p5

    iput v4, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->x:I

    .line 1921
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    add-int/2addr v4, p6

    iput v4, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->y:I

    .line 1924
    .end local v0           #myCellHSpan:I
    .end local v1           #myCellVSpan:I
    .end local v2           #myCellX:I
    .end local v3           #myCellY:I
    :cond_0
    return-void

    .line 1904
    :cond_1
    iget v0, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    goto :goto_0

    .line 1905
    .restart local v0       #myCellHSpan:I
    :cond_2
    iget v1, p0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_1
.end method
