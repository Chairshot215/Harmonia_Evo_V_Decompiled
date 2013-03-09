.class public final Lcom/htc/launcher/CellInfo;
.super Ljava/lang/Object;
.source "CellInfo.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/CellInfo$VacantCell;
    }
.end annotation


# instance fields
.field public cellX:I

.field public cellY:I

.field final current:Landroid/graphics/Rect;

.field public item:Lcom/htc/launcher/Draggee;

.field public m_nContainer:I

.field maxVacantSpanX:I

.field maxVacantSpanXSpanY:I

.field maxVacantSpanY:I

.field maxVacantSpanYSpanX:I

.field screen:I

.field public spanX:I

.field public spanY:I

.field final vacantCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/launcher/CellInfo$VacantCell;",
            ">;"
        }
    .end annotation
.end field

.field valid:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/launcher/CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/CellInfo;->current:Landroid/graphics/Rect;

    return-void
.end method

.method private static addVacantCell(Landroid/graphics/Rect;Lcom/htc/launcher/CellInfo;)V
    .locals 3
    .parameter "current"
    .parameter "cellInfo"

    .prologue
    .line 254
    invoke-static {}, Lcom/htc/launcher/CellInfo$VacantCell;->acquire()Lcom/htc/launcher/CellInfo$VacantCell;

    move-result-object v0

    .line 255
    .local v0, cell:Lcom/htc/launcher/CellInfo$VacantCell;
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/htc/launcher/CellInfo$VacantCell;->cellX:I

    .line 256
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/htc/launcher/CellInfo$VacantCell;->cellY:I

    .line 257
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanX:I

    .line 258
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanY:I

    .line 259
    iget v1, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanX:I

    iget v2, p1, Lcom/htc/launcher/CellInfo;->maxVacantSpanX:I

    if-le v1, v2, :cond_0

    .line 260
    iget v1, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/htc/launcher/CellInfo;->maxVacantSpanX:I

    .line 261
    iget v1, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/htc/launcher/CellInfo;->maxVacantSpanXSpanY:I

    .line 263
    :cond_0
    iget v1, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanY:I

    iget v2, p1, Lcom/htc/launcher/CellInfo;->maxVacantSpanY:I

    if-le v1, v2, :cond_1

    .line 264
    iget v1, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/htc/launcher/CellInfo;->maxVacantSpanY:I

    .line 265
    iget v1, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/htc/launcher/CellInfo;->maxVacantSpanYSpanX:I

    .line 267
    :cond_1
    iget-object v1, p1, Lcom/htc/launcher/CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method private clearVacantCells()V
    .locals 4

    .prologue
    .line 85
    iget-object v2, p0, Lcom/htc/launcher/CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 86
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/CellInfo$VacantCell;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 88
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/launcher/CellInfo$VacantCell;

    invoke-virtual {v3}, Lcom/htc/launcher/CellInfo$VacantCell;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 91
    return-void
.end method

.method static findIntersectingVacantCells(Lcom/htc/launcher/CellInfo;IIII[[Z)V
    .locals 1
    .parameter "cellInfo"
    .parameter "x"
    .parameter "y"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/high16 v0, -0x8000

    .line 199
    iput v0, p0, Lcom/htc/launcher/CellInfo;->maxVacantSpanX:I

    .line 200
    iput v0, p0, Lcom/htc/launcher/CellInfo;->maxVacantSpanXSpanY:I

    .line 201
    iput v0, p0, Lcom/htc/launcher/CellInfo;->maxVacantSpanY:I

    .line 202
    iput v0, p0, Lcom/htc/launcher/CellInfo;->maxVacantSpanYSpanX:I

    .line 203
    invoke-direct {p0}, Lcom/htc/launcher/CellInfo;->clearVacantCells()V

    .line 205
    aget-object v0, p5, p1

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/CellInfo;->current:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 211
    iget-object v0, p0, Lcom/htc/launcher/CellInfo;->current:Landroid/graphics/Rect;

    invoke-static {v0, p3, p4, p5, p0}, Lcom/htc/launcher/CellInfo;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/htc/launcher/CellInfo;)V

    goto :goto_0
.end method

.method static findVacantCell(Landroid/graphics/Rect;II[[ZLcom/htc/launcher/CellInfo;)V
    .locals 3
    .parameter "current"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"
    .parameter "cellInfo"

    .prologue
    .line 218
    invoke-static {p0, p4}, Lcom/htc/launcher/CellInfo;->addVacantCell(Landroid/graphics/Rect;Lcom/htc/launcher/CellInfo;)V

    .line 220
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_0

    .line 221
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/htc/launcher/CellInfo;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 223
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/launcher/CellInfo;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/htc/launcher/CellInfo;)V

    .line 224
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 228
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_1

    .line 229
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/htc/launcher/CellInfo;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 231
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/launcher/CellInfo;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/htc/launcher/CellInfo;)V

    .line 232
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 236
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_2

    .line 237
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/htc/launcher/CellInfo;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 239
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/launcher/CellInfo;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/htc/launcher/CellInfo;)V

    .line 240
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 244
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_3

    .line 245
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/htc/launcher/CellInfo;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 246
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 247
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/launcher/CellInfo;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/htc/launcher/CellInfo;)V

    .line 248
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 251
    :cond_3
    return-void
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 8
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 173
    const/4 v3, 0x0

    .local v3, x:I
    :goto_0
    if-ge v3, p3, :cond_7

    .line 174
    const/4 v4, 0x0

    .local v4, y:I
    :goto_1
    if-ge v4, p4, :cond_6

    .line 175
    aget-object v7, p5, v3

    aget-boolean v7, v7, v4

    if-nez v7, :cond_1

    move v0, v5

    .line 176
    .local v0, available:Z
    :goto_2
    move v1, v3

    .local v1, i:I
    :goto_3
    add-int v7, v3, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_0

    if-ge v3, p3, :cond_0

    .line 177
    move v2, v4

    .local v2, j:I
    :goto_4
    add-int v7, v4, p2

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_4

    if-ge v4, p4, :cond_4

    .line 178
    if-eqz v0, :cond_2

    aget-object v7, p5, v1

    aget-boolean v7, v7, v2

    if-nez v7, :cond_2

    move v0, v5

    .line 179
    :goto_5
    if-nez v0, :cond_3

    .line 183
    .end local v2           #j:I
    :cond_0
    if-eqz v0, :cond_5

    .line 184
    aput v3, p0, v6

    .line 185
    aput v4, p0, v5

    .line 191
    .end local v0           #available:Z
    .end local v1           #i:I
    .end local v4           #y:I
    :goto_6
    return v5

    .restart local v4       #y:I
    :cond_1
    move v0, v6

    .line 175
    goto :goto_2

    .restart local v0       #available:Z
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_2
    move v0, v6

    .line 178
    goto :goto_5

    .line 177
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 176
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 174
    .end local v2           #j:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 173
    .end local v0           #available:Z
    .end local v1           #i:I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v4           #y:I
    :cond_7
    move v5, v6

    .line 191
    goto :goto_6
.end method

.method private static isColumnEmpty(III[[Z)Z
    .locals 2
    .parameter "x"
    .parameter "top"
    .parameter "bottom"
    .parameter "occupied"

    .prologue
    .line 271
    move v0, p1

    .local v0, y:I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 272
    aget-object v1, p3, p0

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 273
    const/4 v1, 0x0

    .line 276
    :goto_1
    return v1

    .line 271
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isRowEmpty(III[[Z)Z
    .locals 2
    .parameter "y"
    .parameter "left"
    .parameter "right"
    .parameter "occupied"

    .prologue
    .line 280
    move v0, p1

    .local v0, x:I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 281
    aget-object v1, p3, v0

    aget-boolean v1, v1, p0

    if-eqz v1, :cond_0

    .line 282
    const/4 v1, 0x0

    .line 285
    :goto_1
    return v1

    .line 280
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public contains(Lcom/htc/launcher/CellInfo;)Z
    .locals 4
    .parameter "info"

    .prologue
    const/4 v0, 0x0

    .line 289
    iget v1, p1, Lcom/htc/launcher/CellInfo;->screen:I

    iget v2, p0, Lcom/htc/launcher/CellInfo;->screen:I

    if-eq v1, v2, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    iget v1, p1, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v2, p0, Lcom/htc/launcher/CellInfo;->cellX:I

    if-lt v1, v2, :cond_0

    iget v1, p1, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v2, p1, Lcom/htc/launcher/CellInfo;->spanX:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v3, p0, Lcom/htc/launcher/CellInfo;->spanX:I

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    iget v1, p1, Lcom/htc/launcher/CellInfo;->cellY:I

    iget v2, p0, Lcom/htc/launcher/CellInfo;->cellY:I

    if-lt v1, v2, :cond_0

    iget v1, p1, Lcom/htc/launcher/CellInfo;->cellY:I

    iget v2, p1, Lcom/htc/launcher/CellInfo;->spanY:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/launcher/CellInfo;->cellY:I

    iget v3, p0, Lcom/htc/launcher/CellInfo;->spanY:I

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    .line 295
    const/4 v0, 0x1

    goto :goto_0
.end method

.method findCellForSpan([III)Z
    .locals 8
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 125
    iget-object v4, p0, Lcom/htc/launcher/CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 126
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/launcher/CellInfo$VacantCell;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 128
    .local v1, count:I
    const/4 v2, 0x0

    .line 130
    .local v2, found:Z
    iget v5, p0, Lcom/htc/launcher/CellInfo;->spanX:I

    if-lt v5, p2, :cond_0

    iget v5, p0, Lcom/htc/launcher/CellInfo;->spanY:I

    if-lt v5, p3, :cond_0

    .line 131
    iget v5, p0, Lcom/htc/launcher/CellInfo;->cellX:I

    aput v5, p1, v6

    .line 132
    iget v5, p0, Lcom/htc/launcher/CellInfo;->cellY:I

    aput v5, p1, v7

    .line 133
    const/4 v2, 0x1

    .line 137
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 138
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellInfo$VacantCell;

    .line 139
    .local v0, cell:Lcom/htc/launcher/CellInfo$VacantCell;
    iget v5, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanX:I

    if-ne v5, p2, :cond_3

    iget v5, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanY:I

    if-ne v5, p3, :cond_3

    .line 140
    iget v5, v0, Lcom/htc/launcher/CellInfo$VacantCell;->cellX:I

    aput v5, p1, v6

    .line 141
    iget v5, v0, Lcom/htc/launcher/CellInfo$VacantCell;->cellY:I

    aput v5, p1, v7

    .line 142
    const/4 v2, 0x1

    .line 148
    .end local v0           #cell:Lcom/htc/launcher/CellInfo$VacantCell;
    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 149
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellInfo$VacantCell;

    .line 150
    .restart local v0       #cell:Lcom/htc/launcher/CellInfo$VacantCell;
    iget v5, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanX:I

    if-lt v5, p2, :cond_4

    iget v5, v0, Lcom/htc/launcher/CellInfo$VacantCell;->spanY:I

    if-lt v5, p3, :cond_4

    .line 151
    iget v5, v0, Lcom/htc/launcher/CellInfo$VacantCell;->cellX:I

    aput v5, p1, v6

    .line 152
    iget v5, v0, Lcom/htc/launcher/CellInfo$VacantCell;->cellY:I

    aput v5, p1, v7

    .line 153
    const/4 v2, 0x1

    .line 158
    .end local v0           #cell:Lcom/htc/launcher/CellInfo$VacantCell;
    :cond_2
    invoke-direct {p0}, Lcom/htc/launcher/CellInfo;->clearVacantCells()V

    .line 160
    return v2

    .line 137
    .restart local v0       #cell:Lcom/htc/launcher/CellInfo$VacantCell;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method findVacantCellsFromOccupied([ZII)V
    .locals 8
    .parameter "occupied"
    .parameter "xCount"
    .parameter "yCount"

    .prologue
    const/high16 v1, -0x8000

    .line 94
    iget v0, p0, Lcom/htc/launcher/CellInfo;->cellX:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/launcher/CellInfo;->cellY:I

    if-gez v0, :cond_1

    .line 95
    :cond_0
    iput v1, p0, Lcom/htc/launcher/CellInfo;->maxVacantSpanXSpanY:I

    iput v1, p0, Lcom/htc/launcher/CellInfo;->maxVacantSpanX:I

    .line 96
    iput v1, p0, Lcom/htc/launcher/CellInfo;->maxVacantSpanYSpanX:I

    iput v1, p0, Lcom/htc/launcher/CellInfo;->maxVacantSpanY:I

    .line 97
    invoke-direct {p0}, Lcom/htc/launcher/CellInfo;->clearVacantCells()V

    .line 108
    :goto_0
    return-void

    .line 101
    :cond_1
    filled-new-array {p2, p3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    .line 102
    .local v5, unflattened:[[Z
    const/4 v7, 0x0

    .local v7, y:I
    :goto_1
    if-ge v7, p3, :cond_3

    .line 103
    const/4 v6, 0x0

    .local v6, x:I
    :goto_2
    if-ge v6, p2, :cond_2

    .line 104
    aget-object v0, v5, v6

    mul-int v1, v7, p2

    add-int/2addr v1, v6

    aget-boolean v1, p1, v1

    aput-boolean v1, v0, v7

    .line 103
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 102
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 107
    .end local v6           #x:I
    :cond_3
    iget v1, p0, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v2, p0, Lcom/htc/launcher/CellInfo;->cellY:I

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/launcher/CellInfo;->findIntersectingVacantCells(Lcom/htc/launcher/CellInfo;IIII[[Z)V

    goto :goto_0
.end method

.method public getLayoutParams()Lcom/htc/launcher/CellLayout$LayoutParams;
    .locals 5

    .prologue
    .line 65
    new-instance v0, Lcom/htc/launcher/CellLayout$LayoutParams;

    iget v1, p0, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v2, p0, Lcom/htc/launcher/CellInfo;->cellY:I

    iget v3, p0, Lcom/htc/launcher/CellInfo;->spanX:I

    iget v4, p0, Lcom/htc/launcher/CellInfo;->spanY:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/launcher/CellLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 301
    iget v0, p0, Lcom/htc/launcher/CellInfo;->cellX:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/launcher/CellInfo;->cellY:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/launcher/CellInfo;->spanX:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/launcher/CellInfo;->spanY:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/launcher/CellInfo;->screen:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/launcher/CellInfo;->screen:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Draggee[view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/launcher/CellInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/launcher/CellInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], span=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/launcher/CellInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/launcher/CellInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/CellInfo;->item:Lcom/htc/launcher/Draggee;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
