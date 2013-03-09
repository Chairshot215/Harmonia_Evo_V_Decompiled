.class public Lcom/htc/launcher/FolderCellLayout;
.super Landroid/view/ViewGroup;
.source "FolderCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/FolderCellLayout$ChildAnim;
    }
.end annotation


# static fields
.field private static DECELERATE_FACTOR:F

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field m_bOccupied:[[Z

.field private m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

.field private m_interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private m_nCellHeight:I

.field private m_nCellWidth:I

.field private m_nCountX:I

.field private m_nCountY:I

.field private m_nHeightGap:I

.field private m_nMaxGap:I

.field private m_nOriginalCellHeight:I

.field private m_nOriginalCellWidth:I

.field private m_nOriginalHeightGap:I

.field private m_nOriginalWidthGap:I

.field private final m_nTmpXY:[I

.field private m_nWidthGap:I

.field private m_naEffectOrder:[Lcom/htc/launcher/FolderCellLayout$ChildAnim;

.field private m_reorderAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/htc/launcher/CellLayout$LayoutParams;",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "FolderCellLayout"

    sput-object v0, Lcom/htc/launcher/FolderCellLayout;->LOG_TAG:Ljava/lang/String;

    .line 50
    const/high16 v0, 0x4000

    sput v0, Lcom/htc/launcher/FolderCellLayout;->DECELERATE_FACTOR:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/launcher/FolderCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/launcher/FolderCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_nTmpXY:[I

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_reorderAnimators:Ljava/util/HashMap;

    .line 49
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    sget v2, Lcom/htc/launcher/FolderCellLayout;->DECELERATE_FACTOR:F

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 63
    sget-object v1, Lcom/htc/launcher/R$styleable;->FolderCellLayout:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCellWidth:I

    iput v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_nOriginalCellWidth:I

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCellHeight:I

    iput v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_nOriginalCellHeight:I

    .line 67
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_nOriginalWidthGap:I

    iput v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_nWidthGap:I

    .line 68
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_nOriginalHeightGap:I

    iput v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_nHeightGap:I

    .line 69
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_nMaxGap:I

    .line 70
    invoke-static {}, Lcom/htc/launcher/LauncherModel;->getCellCountX()I

    move-result v1

    iput v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountX:I

    .line 71
    invoke-static {}, Lcom/htc/launcher/LauncherModel;->getCellCountY()I

    move-result v1

    iput v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountY:I

    .line 72
    iget v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountX:I

    iget v2, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountY:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_bOccupied:[[Z

    .line 74
    new-instance v1, Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-direct {v1, p1}, Lcom/htc/launcher/FolderCellLayoutChildren;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    .line 75
    iget-object v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    iget v2, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCellWidth:I

    iget v3, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCellHeight:I

    iget v4, p0, Lcom/htc/launcher/FolderCellLayout;->m_nWidthGap:I

    iget v5, p0, Lcom/htc/launcher/FolderCellLayout;->m_nHeightGap:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/launcher/FolderCellLayoutChildren;->setCellDimensions(IIII)V

    .line 76
    iget-object v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {p0, v1}, Lcom/htc/launcher/FolderCellLayout;->addView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/htc/launcher/FolderCellLayout;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/launcher/FolderCellLayout;->m_reorderAnimators:Ljava/util/HashMap;

    return-object v0
.end method

.method private clearOccupiedCells()V
    .locals 4

    .prologue
    .line 455
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    iget v2, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountX:I

    if-ge v0, v2, :cond_1

    .line 456
    const/4 v1, 0x0

    .local v1, y:I
    :goto_1
    iget v2, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountY:I

    if-ge v1, v2, :cond_0

    .line 457
    iget-object v2, p0, Lcom/htc/launcher/FolderCellLayout;->m_bOccupied:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 455
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    .end local v1           #y:I
    :cond_1
    return-void
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 6
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 198
    const/4 v2, 0x0

    .local v2, nY:I
    :goto_0
    if-ge v2, p4, :cond_3

    .line 199
    const/4 v1, 0x0

    .local v1, nX:I
    :goto_1
    if-ge v1, p3, :cond_2

    .line 200
    aget-object v5, p5, v1

    aget-boolean v5, v5, v2

    if-nez v5, :cond_0

    move v0, v3

    .line 211
    .local v0, available:Z
    :goto_2
    if-eqz v0, :cond_1

    .line 212
    aput v1, p0, v4

    .line 213
    aput v2, p0, v3

    .line 219
    .end local v0           #available:Z
    .end local v1           #nX:I
    :goto_3
    return v3

    .restart local v1       #nX:I
    :cond_0
    move v0, v4

    .line 200
    goto :goto_2

    .line 199
    .restart local v0       #available:Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 198
    .end local v0           #available:Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #nX:I
    :cond_3
    move v3, v4

    .line 219
    goto :goto_3
.end method

.method private getChildInterpolation(Lcom/htc/launcher/FolderCellLayout$ChildAnim;F)F
    .locals 7
    .parameter "c"
    .parameter "fInterpolation"

    .prologue
    .line 633
    iget-object v3, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v3}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildCount()I

    move-result v2

    .line 634
    .local v2, nChildCount:I
    move v0, p2

    .line 635
    .local v0, fResult:F
    if-nez v2, :cond_0

    move v1, v0

    .line 645
    .end local v0           #fResult:F
    .local v1, fResult:F
    :goto_0
    return v1

    .line 638
    .end local v1           #fResult:F
    .restart local v0       #fResult:F
    :cond_0
    iget v3, p1, Lcom/htc/launcher/FolderCellLayout$ChildAnim;->fStart:F

    cmpg-float v3, p2, v3

    if-gez v3, :cond_1

    .line 639
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    .line 645
    .end local v0           #fResult:F
    .restart local v1       #fResult:F
    goto :goto_0

    .line 642
    .end local v1           #fResult:F
    .restart local v0       #fResult:F
    :cond_1
    iget-object v3, p0, Lcom/htc/launcher/FolderCellLayout;->m_interpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v4, p1, Lcom/htc/launcher/FolderCellLayout$ChildAnim;->fStart:F

    sub-float v4, p2, v4

    const/high16 v5, 0x3f80

    iget v6, p1, Lcom/htc/launcher/FolderCellLayout$ChildAnim;->fStart:F

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_1
.end method

.method private markCellsForView(IIIIZ)V
    .locals 3
    .parameter "nCellX"
    .parameter "nCellY"
    .parameter "nSpanX"
    .parameter "nSpanY"
    .parameter "bValue"

    .prologue
    .line 436
    move v0, p1

    .local v0, x:I
    :goto_0
    add-int v2, p1, p3

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountX:I

    if-ge v0, v2, :cond_1

    .line 437
    move v1, p2

    .local v1, y:I
    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_0

    iget v2, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountY:I

    if-ge v1, v2, :cond_0

    .line 438
    iget-object v2, p0, Lcom/htc/launcher/FolderCellLayout;->m_bOccupied:[[Z

    aget-object v2, v2, v0

    aput-boolean p5, v2, v1

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 436
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    .end local v1           #y:I
    :cond_1
    return-void
.end method

.method private setupLp(Lcom/htc/launcher/CellLayout$LayoutParams;)V
    .locals 4
    .parameter "lp"

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCellWidth:I

    iget v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCellHeight:I

    iget v2, p0, Lcom/htc/launcher/FolderCellLayout;->m_nWidthGap:I

    iget v3, p0, Lcom/htc/launcher/FolderCellLayout;->m_nHeightGap:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/htc/launcher/CellLayout$LayoutParams;->setup(IIII)V

    .line 96
    return-void
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/htc/launcher/CellLayout$LayoutParams;Z)Z
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "childId"
    .parameter "params"
    .parameter "markCells"

    .prologue
    .line 225
    move-object v0, p4

    .line 229
    .local v0, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iget v1, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    if-ltz v1, :cond_3

    iget v1, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    iget v2, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountX:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_3

    iget v1, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    if-ltz v1, :cond_3

    iget v1, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    iget v2, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountY:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_3

    .line 232
    iget v1, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v1, :cond_0

    .line 233
    iget v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountX:I

    iput v1, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 234
    :cond_0
    iget v1, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v1, :cond_1

    .line 235
    iget v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountY:I

    iput v1, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 237
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 239
    iget-object v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v1, p1, p2, v0}, Lcom/htc/launcher/FolderCellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 241
    if-eqz p5, :cond_2

    .line 242
    invoke-virtual {p0, p1}, Lcom/htc/launcher/FolderCellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 244
    :cond_2
    const/4 v1, 0x1

    .line 246
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public animateChildToPosition(Landroid/view/View;IIII)Z
    .locals 13
    .parameter "child"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "duration"
    .parameter "delay"

    .prologue
    .line 100
    iget-object v10, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v10, p1}, Lcom/htc/launcher/FolderCellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    iget-object v10, p0, Lcom/htc/launcher/FolderCellLayout;->m_bOccupied:[[Z

    aget-object v10, v10, p2

    aget-boolean v10, v10, p3

    if-nez v10, :cond_1

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 102
    .local v2, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/ItemInfo;

    .line 105
    .local v1, info:Lcom/htc/launcher/ItemInfo;
    iget-object v10, p0, Lcom/htc/launcher/FolderCellLayout;->m_reorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 106
    iget-object v10, p0, Lcom/htc/launcher/FolderCellLayout;->m_reorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/ObjectAnimator;

    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 107
    iget-object v10, p0, Lcom/htc/launcher/FolderCellLayout;->m_reorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_0
    iget v5, v2, Lcom/htc/launcher/CellLayout$LayoutParams;->x:I

    .line 111
    .local v5, nOldX:I
    iget v6, v2, Lcom/htc/launcher/CellLayout$LayoutParams;->y:I

    .line 112
    .local v6, nOldY:I
    iget-object v10, p0, Lcom/htc/launcher/FolderCellLayout;->m_bOccupied:[[Z

    iget v11, v2, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    aget-object v10, v10, v11

    iget v11, v2, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    const/4 v12, 0x0

    aput-boolean v12, v10, v11

    .line 113
    iget-object v10, p0, Lcom/htc/launcher/FolderCellLayout;->m_bOccupied:[[Z

    aget-object v10, v10, p2

    const/4 v11, 0x1

    aput-boolean v11, v10, p3

    .line 115
    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/htc/launcher/CellLayout$LayoutParams;->m_bIsLockedToGrid:Z

    .line 116
    iput p2, v1, Lcom/htc/launcher/ItemInfo;->cellX:I

    iput p2, v2, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    .line 117
    move/from16 v0, p3

    iput v0, v1, Lcom/htc/launcher/ItemInfo;->cellY:I

    move/from16 v0, p3

    iput v0, v2, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    .line 118
    invoke-direct {p0, v2}, Lcom/htc/launcher/FolderCellLayout;->setupLp(Lcom/htc/launcher/CellLayout$LayoutParams;)V

    .line 119
    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/htc/launcher/CellLayout$LayoutParams;->m_bIsLockedToGrid:Z

    .line 120
    iget v3, v2, Lcom/htc/launcher/CellLayout$LayoutParams;->x:I

    .line 121
    .local v3, nNewX:I
    iget v4, v2, Lcom/htc/launcher/CellLayout$LayoutParams;->y:I

    .line 123
    .local v4, nNewY:I
    iput v5, v2, Lcom/htc/launcher/CellLayout$LayoutParams;->x:I

    .line 124
    iput v6, v2, Lcom/htc/launcher/CellLayout$LayoutParams;->y:I

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 127
    const-string v10, "x"

    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v5, v11, v12

    const/4 v12, 0x1

    aput v3, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 128
    .local v8, x:Landroid/animation/PropertyValuesHolder;
    const-string v10, "y"

    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v6, v11, v12

    const/4 v12, 0x1

    aput v4, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 129
    .local v9, y:Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    const/4 v11, 0x1

    aput-object v9, v10, v11

    invoke-static {v2, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 130
    .local v7, oa:Landroid/animation/ObjectAnimator;
    move/from16 v0, p4

    int-to-long v10, v0

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 131
    iget-object v10, p0, Lcom/htc/launcher/FolderCellLayout;->m_reorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v10, Lcom/htc/launcher/FolderCellLayout$1;

    invoke-direct {v10, p0, p1}, Lcom/htc/launcher/FolderCellLayout$1;-><init>(Lcom/htc/launcher/FolderCellLayout;Landroid/view/View;)V

    invoke-virtual {v7, v10}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 138
    new-instance v10, Lcom/htc/launcher/FolderCellLayout$2;

    invoke-direct {v10, p0, v2}, Lcom/htc/launcher/FolderCellLayout$2;-><init>(Lcom/htc/launcher/FolderCellLayout;Lcom/htc/launcher/CellLayout$LayoutParams;)V

    invoke-virtual {v7, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 161
    move/from16 v0, p5

    int-to-long v10, v0

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 162
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    .line 163
    const/4 v10, 0x1

    .line 165
    .end local v1           #info:Lcom/htc/launcher/ItemInfo;
    .end local v2           #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    .end local v3           #nNewX:I
    .end local v4           #nNewY:I
    .end local v5           #nOldX:I
    .end local v6           #nOldY:I
    .end local v7           #oa:Landroid/animation/ObjectAnimator;
    .end local v8           #x:Landroid/animation/PropertyValuesHolder;
    .end local v9           #y:Landroid/animation/PropertyValuesHolder;
    :goto_0
    return v10

    :cond_1
    const/4 v10, 0x0

    goto :goto_0
.end method

.method cellToCenterPoint(II[I)V
    .locals 5
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/htc/launcher/FolderCellLayout;->getPaddingLeft()I

    move-result v0

    .line 763
    .local v0, nHStartPadding:I
    invoke-virtual {p0}, Lcom/htc/launcher/FolderCellLayout;->getPaddingTop()I

    move-result v1

    .line 765
    .local v1, nVStartPadding:I
    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCellWidth:I

    iget v4, p0, Lcom/htc/launcher/FolderCellLayout;->m_nWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    iget v4, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCellWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, p3, v2

    .line 766
    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCellHeight:I

    iget v4, p0, Lcom/htc/launcher/FolderCellLayout;->m_nHeightGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCellHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, p3, v2

    .line 767
    return-void
.end method

.method public drawChildren(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/FolderCellLayoutChildren;->draw(Landroid/graphics/Canvas;)V

    .line 539
    return-void
.end method

.method findCellForSpan([III)Z
    .locals 7
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v4, -0x1

    .line 277
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/launcher/FolderCellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z
    .locals 12
    .parameter "nCellXY"
    .parameter "nSpanX"
    .parameter "nSpanY"
    .parameter "nIntersectX"
    .parameter "nIntersectY"
    .parameter "ignoreView"

    .prologue
    .line 284
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/htc/launcher/FolderCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 286
    const/4 v1, 0x0

    .line 288
    .local v1, bFoundCell:Z
    :goto_0
    const/4 v6, 0x0

    .line 289
    .local v6, nStartX:I
    if-ltz p4, :cond_0

    .line 290
    add-int/lit8 v10, p2, -0x1

    sub-int v10, p4, v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 292
    :cond_0
    iget v10, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountX:I

    add-int/lit8 v11, p2, -0x1

    sub-int v4, v10, v11

    .line 293
    .local v4, nEndX:I
    if-ltz p4, :cond_1

    .line 294
    add-int/lit8 v10, p2, -0x1

    add-int v11, p4, v10

    const/4 v10, 0x1

    if-ne p2, v10, :cond_4

    const/4 v10, 0x1

    :goto_1
    add-int/2addr v10, v11

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 296
    :cond_1
    const/4 v7, 0x0

    .line 297
    .local v7, nStartY:I
    if-ltz p5, :cond_2

    .line 298
    add-int/lit8 v10, p3, -0x1

    sub-int v10, p5, v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 300
    :cond_2
    iget v10, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountY:I

    add-int/lit8 v11, p3, -0x1

    sub-int v5, v10, v11

    .line 301
    .local v5, nEndY:I
    if-ltz p5, :cond_3

    .line 302
    add-int/lit8 v10, p3, -0x1

    add-int v11, p5, v10

    const/4 v10, 0x1

    if-ne p3, v10, :cond_5

    const/4 v10, 0x1

    :goto_2
    add-int/2addr v10, v11

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 305
    :cond_3
    move v8, v7

    .local v8, nY:I
    :goto_3
    if-ge v8, v5, :cond_b

    if-nez v1, :cond_b

    .line 306
    move v9, v6

    .local v9, x:I
    :goto_4
    if-ge v9, v4, :cond_a

    .line 307
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, p2, :cond_8

    .line 308
    const/4 v3, 0x0

    .local v3, j:I
    :goto_6
    if-ge v3, p3, :cond_7

    .line 309
    iget-object v10, p0, Lcom/htc/launcher/FolderCellLayout;->m_bOccupied:[[Z

    add-int v11, v9, v2

    aget-object v10, v10, v11

    add-int v11, v8, v3

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_6

    .line 312
    add-int/2addr v9, v2

    .line 306
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 294
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v5           #nEndY:I
    .end local v7           #nStartY:I
    .end local v8           #nY:I
    .end local v9           #x:I
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 302
    .restart local v5       #nEndY:I
    .restart local v7       #nStartY:I
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 308
    .restart local v2       #i:I
    .restart local v3       #j:I
    .restart local v8       #nY:I
    .restart local v9       #x:I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 307
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 317
    .end local v3           #j:I
    :cond_8
    if-eqz p1, :cond_9

    .line 318
    const/4 v10, 0x0

    aput v9, p1, v10

    .line 319
    const/4 v10, 0x1

    aput v8, p1, v10

    .line 321
    :cond_9
    const/4 v1, 0x1

    .line 305
    .end local v2           #i:I
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 325
    .end local v9           #x:I
    :cond_b
    const/4 v10, -0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_c

    const/4 v10, -0x1

    move/from16 v0, p5

    if-ne v0, v10, :cond_c

    .line 338
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/htc/launcher/FolderCellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 339
    return v1

    .line 331
    :cond_c
    const/16 p4, -0x1

    .line 332
    const/16 p5, -0x1

    .line 333
    goto/16 :goto_0
.end method

.method findNearestArea(IIIILandroid/view/View;Z[I)[I
    .locals 21
    .parameter "nPixelX"
    .parameter "nPixelY"
    .parameter "nSpanX"
    .parameter "nSpanY"
    .parameter "ignoreView"
    .parameter "bIgnoreOccupied"
    .parameter "nResult"

    .prologue
    .line 696
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/htc/launcher/FolderCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 701
    move/from16 v0, p1

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nCellWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nWidthGap:I

    move/from16 v17, v0

    add-int v16, v16, v17

    add-int/lit8 v17, p3, -0x1

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    sub-float v15, v15, v16

    float-to-int v0, v15

    move/from16 p1, v0

    .line 702
    move/from16 v0, p2

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nCellHeight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nHeightGap:I

    move/from16 v17, v0

    add-int v16, v16, v17

    add-int/lit8 v17, p4, -0x1

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x4000

    div-float v16, v16, v17

    sub-float v15, v15, v16

    float-to-int v0, v15

    move/from16 p2, v0

    .line 705
    if-eqz p7, :cond_1

    move-object/from16 v2, p7

    .line 706
    .local v2, bBestXY:[I
    :goto_0
    const-wide v4, 0x7fefffffffffffffL

    .line 708
    .local v4, dBestDistance:D
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/launcher/FolderCellLayout;->m_nCountX:I

    .line 709
    .local v9, nCountX:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/launcher/FolderCellLayout;->m_nCountY:I

    .line 710
    .local v10, nCountY:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/launcher/FolderCellLayout;->m_bOccupied:[[Z

    .line 712
    .local v3, bOccupied:[[Z
    const/4 v14, 0x0

    .local v14, nY:I
    :goto_1
    add-int/lit8 v15, p4, -0x1

    sub-int v15, v10, v15

    if-ge v14, v15, :cond_6

    .line 713
    const/4 v13, 0x0

    .local v13, nX:I
    :goto_2
    add-int/lit8 v15, p3, -0x1

    sub-int v15, v9, v15

    if-ge v13, v15, :cond_5

    .line 714
    if-eqz p6, :cond_4

    .line 715
    const/4 v11, 0x0

    .local v11, nI:I
    :goto_3
    move/from16 v0, p3

    if-ge v11, v0, :cond_4

    .line 716
    const/4 v12, 0x0

    .local v12, nJ:I
    :goto_4
    move/from16 v0, p4

    if-ge v12, v0, :cond_3

    .line 717
    add-int v15, v13, v11

    aget-object v15, v3, v15

    add-int v16, v14, v12

    aget-boolean v15, v15, v16

    if-eqz v15, :cond_2

    .line 720
    add-int/2addr v13, v11

    .line 713
    .end local v11           #nI:I
    .end local v12           #nJ:I
    :cond_0
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 705
    .end local v2           #bBestXY:[I
    .end local v3           #bOccupied:[[Z
    .end local v4           #dBestDistance:D
    .end local v9           #nCountX:I
    .end local v10           #nCountY:I
    .end local v13           #nX:I
    .end local v14           #nY:I
    :cond_1
    const/4 v15, 0x2

    new-array v2, v15, [I

    goto :goto_0

    .line 716
    .restart local v2       #bBestXY:[I
    .restart local v3       #bOccupied:[[Z
    .restart local v4       #dBestDistance:D
    .restart local v9       #nCountX:I
    .restart local v10       #nCountY:I
    .restart local v11       #nI:I
    .restart local v12       #nJ:I
    .restart local v13       #nX:I
    .restart local v14       #nY:I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 715
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 726
    .end local v11           #nI:I
    .end local v12           #nJ:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/launcher/FolderCellLayout;->m_nTmpXY:[I

    .line 727
    .local v8, nCellXY:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v8}, Lcom/htc/launcher/FolderCellLayout;->cellToCenterPoint(II[I)V

    .line 729
    const/4 v15, 0x0

    aget v15, v8, v15

    sub-int v15, v15, p1

    int-to-double v15, v15

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    const/16 v17, 0x1

    aget v17, v8, v17

    sub-int v17, v17, p2

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 730
    .local v6, dDistance:D
    cmpg-double v15, v6, v4

    if-gtz v15, :cond_0

    .line 731
    move-wide v4, v6

    .line 732
    const/4 v15, 0x0

    aput v13, v2, v15

    .line 733
    const/4 v15, 0x1

    aput v14, v2, v15

    goto :goto_5

    .line 712
    .end local v6           #dDistance:D
    .end local v8           #nCellXY:[I
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 738
    .end local v13           #nX:I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/htc/launcher/FolderCellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 741
    const-wide v15, 0x7fefffffffffffffL

    cmpl-double v15, v4, v15

    if-nez v15, :cond_7

    .line 742
    const/4 v15, 0x0

    const/16 v16, -0x1

    aput v16, v2, v15

    .line 743
    const/4 v15, 0x1

    const/16 v16, -0x1

    aput v16, v2, v15

    .line 746
    :cond_7
    return-object v2
.end method

.method findNearestArea(IIII[I)[I
    .locals 8
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    .line 669
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/htc/launcher/FolderCellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 81
    iget-object v4, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v4}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildCount()I

    move-result v3

    .line 82
    .local v3, nCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 83
    iget-object v4, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v4, v1}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 86
    .local v2, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iget v4, v2, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_0

    iget v4, v2, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    iget v5, v2, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, v2, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_0

    iget v4, v2, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    iget v5, v2, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_0

    .line 90
    .end local v0           #child:Landroid/view/View;
    .end local v2           #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    :goto_1
    return-object v0

    .line 82
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v0           #child:Landroid/view/View;
    .end local v2           #lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getChildrenLayout()Lcom/htc/launcher/FolderCellLayoutChildren;
    .locals 1

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/htc/launcher/FolderCellLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 772
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/launcher/FolderCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/FolderCellLayoutChildren;

    .line 774
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCountX()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountX:I

    return v0
.end method

.method getCountY()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .locals 4

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/htc/launcher/FolderCellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 256
    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/launcher/FolderCellLayout;->mPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/launcher/FolderCellLayout;->mPaddingBottom:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountY:I

    iget v3, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCellHeight:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountY:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/htc/launcher/FolderCellLayout;->m_nHeightGap:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    return v1
.end method

.method public getDesiredWidth()I
    .locals 4

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/htc/launcher/FolderCellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 251
    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/launcher/FolderCellLayout;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/launcher/FolderCellLayout;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountX:I

    iget v3, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCellWidth:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountX:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/htc/launcher/FolderCellLayout;->m_nWidthGap:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    return v1
.end method

.method public getVacantCell([III)Z
    .locals 6
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 192
    iget v3, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountX:I

    iget v4, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountY:I

    iget-object v5, p0, Lcom/htc/launcher/FolderCellLayout;->m_bOccupied:[[Z

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/launcher/FolderCellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v0

    return v0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 420
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    if-eq v0, v1, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 423
    .local v6, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iget v1, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    iget v2, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    iget v3, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/launcher/FolderCellLayout;->markCellsForView(IIIIZ)V

    goto :goto_0
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 428
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    if-eq v0, v1, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 431
    .local v6, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iget v1, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    iget v2, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    iget v3, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/launcher/FolderCellLayout;->markCellsForView(IIIIZ)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "bChanged"
    .parameter "nL"
    .parameter "nT"
    .parameter "nR"
    .parameter "nB"

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/htc/launcher/FolderCellLayout;->getChildCount()I

    move-result v1

    .line 346
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 347
    invoke-virtual {p0, v2}, Lcom/htc/launcher/FolderCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 348
    .local v0, child:Landroid/view/View;
    iget v3, p0, Lcom/htc/launcher/FolderCellLayout;->mPaddingLeft:I

    iget v4, p0, Lcom/htc/launcher/FolderCellLayout;->mPaddingTop:I

    sub-int v5, p4, p2

    iget v6, p0, Lcom/htc/launcher/FolderCellLayout;->mPaddingRight:I

    sub-int/2addr v5, v6

    sub-int v6, p5, p3

    iget v7, p0, Lcom/htc/launcher/FolderCellLayout;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 24
    .parameter "nWidthMeasureSpec"
    .parameter "nHeightMeasureSpec"

    .prologue
    .line 367
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 368
    .local v15, nWidthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 370
    .local v16, nWidthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 371
    .local v9, nHeightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 373
    .local v10, nHeightSpecSize:I
    if-eqz v15, :cond_0

    if-nez v9, :cond_1

    .line 374
    :cond_0
    new-instance v19, Ljava/lang/RuntimeException;

    const-string v20, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 377
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nCountX:I

    move/from16 v19, v0

    add-int/lit8 v14, v19, -0x1

    .line 378
    .local v14, nNumWidthGaps:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nCountY:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 380
    .local v13, nNumHeightGaps:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nOriginalWidthGap:I

    move/from16 v19, v0

    if-ltz v19, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nOriginalHeightGap:I

    move/from16 v19, v0

    if-gez v19, :cond_6

    .line 381
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->mPaddingLeft:I

    move/from16 v19, v0

    sub-int v19, v16, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->mPaddingRight:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 382
    .local v6, hSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->mPaddingTop:I

    move/from16 v19, v0

    sub-int v19, v10, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->mPaddingBottom:I

    move/from16 v20, v0

    sub-int v18, v19, v20

    .line 383
    .local v18, vSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nCountX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nOriginalCellWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v5, v6, v19

    .line 384
    .local v5, hFreeSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nCountY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nOriginalCellHeight:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v17, v18, v19

    .line 385
    .local v17, vFreeSpace:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nMaxGap:I

    move/from16 v20, v0

    if-lez v14, :cond_4

    div-int v19, v5, v14

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/FolderCellLayout;->m_nWidthGap:I

    .line 386
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nMaxGap:I

    move/from16 v20, v0

    if-lez v13, :cond_5

    div-int v19, v17, v13

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/FolderCellLayout;->m_nHeightGap:I

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nCellWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nCellHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nWidthGap:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nHeightGap:I

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Lcom/htc/launcher/FolderCellLayoutChildren;->setCellDimensions(IIII)V

    .line 394
    .end local v5           #hFreeSpace:I
    .end local v6           #hSpace:I
    .end local v17           #vFreeSpace:I
    .end local v18           #vSpace:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/FolderCellLayout;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0073

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/FolderCellLayout;->mPaddingTop:I

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/FolderCellLayout;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0074

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/FolderCellLayout;->mPaddingBottom:I

    .line 398
    move/from16 v12, v16

    .line 399
    .local v12, nNewWidth:I
    move v11, v10

    .line 400
    .local v11, nNewHeight:I
    const/high16 v19, -0x8000

    move/from16 v0, v19

    if-ne v15, v0, :cond_3

    .line 401
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->mPaddingLeft:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->mPaddingRight:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nCountX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nCellWidth:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nCountX:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nWidthGap:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v12, v19, v20

    .line 402
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->mPaddingTop:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->mPaddingBottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nCountY:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nCellHeight:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nCountY:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nHeightGap:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v11, v19, v20

    .line 403
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/htc/launcher/FolderCellLayout;->setMeasuredDimension(II)V

    .line 406
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/FolderCellLayout;->getChildCount()I

    move-result v8

    .line 407
    .local v8, nCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    if-ge v7, v8, :cond_7

    .line 408
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/launcher/FolderCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 409
    .local v2, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->mPaddingLeft:I

    move/from16 v19, v0

    sub-int v19, v12, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->mPaddingRight:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    const/high16 v20, 0x4000

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 411
    .local v3, childWidthMeasureSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->mPaddingTop:I

    move/from16 v19, v0

    sub-int v19, v11, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->mPaddingBottom:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    const/high16 v20, 0x4000

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 413
    .local v4, childheightMeasureSpec:I
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 407
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 385
    .end local v2           #child:Landroid/view/View;
    .end local v3           #childWidthMeasureSpec:I
    .end local v4           #childheightMeasureSpec:I
    .end local v7           #i:I
    .end local v8           #nCount:I
    .end local v11           #nNewHeight:I
    .end local v12           #nNewWidth:I
    .restart local v5       #hFreeSpace:I
    .restart local v6       #hSpace:I
    .restart local v17       #vFreeSpace:I
    .restart local v18       #vSpace:I
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 386
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 390
    .end local v5           #hFreeSpace:I
    .end local v6           #hSpace:I
    .end local v17           #vFreeSpace:I
    .end local v18           #vSpace:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nOriginalWidthGap:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/FolderCellLayout;->m_nWidthGap:I

    .line 391
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_nOriginalHeightGap:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/launcher/FolderCellLayout;->m_nHeightGap:I

    goto/16 :goto_2

    .line 415
    .restart local v7       #i:I
    .restart local v8       #nCount:I
    .restart local v11       #nNewHeight:I
    .restart local v12       #nNewWidth:I
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v11}, Lcom/htc/launcher/FolderCellLayout;->setMeasuredDimension(II)V

    .line 416
    return-void
.end method

.method public prepareFolderOpenCloseAnim(ZZ)V
    .locals 22
    .parameter "bFromLeft"
    .parameter "bFromTop"

    .prologue
    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildCount()I

    move-result v8

    .line 545
    .local v8, nChildCount:I
    new-array v0, v8, [Lcom/htc/launcher/FolderCellLayout$ChildAnim;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/launcher/FolderCellLayout;->m_naEffectOrder:[Lcom/htc/launcher/FolderCellLayout$ChildAnim;

    .line 547
    const/4 v10, 0x0

    .line 548
    .local v10, nIndex:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/launcher/FolderCellLayout;->m_nCountX:I

    .line 549
    .local v9, nCol:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/launcher/FolderCellLayout;->m_nCountX:I

    .line 550
    .local v13, nRow:I
    add-int v20, v13, v9

    add-int/lit8 v15, v20, -0x1

    .line 553
    .local v15, nSliceCount:I
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 554
    add-int/lit8 v11, v9, -0x1

    .line 568
    .local v11, nInterval:I
    :goto_0
    const/4 v12, 0x0

    .line 569
    .local v12, nRealSliceCount:I
    const/4 v14, 0x0

    .local v14, nSlice:I
    :goto_1
    if-ge v14, v15, :cond_e

    .line 570
    if-ge v14, v9, :cond_4

    add-int/lit8 v16, v14, 0x1

    .line 571
    .local v16, nSliceSize:I
    :goto_2
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 572
    if-ge v14, v9, :cond_5

    move/from16 v17, v14

    .line 584
    .local v17, nSliceStart:I
    :goto_3
    const/4 v3, 0x0

    .line 585
    .local v3, bValidSlice:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4
    move/from16 v0, v16

    if-ge v7, v0, :cond_c

    .line 586
    mul-int v20, v11, v7

    add-int v19, v17, v20

    .line 587
    .local v19, x:I
    move/from16 v0, v19

    if-ge v0, v8, :cond_0

    .line 588
    const/4 v3, 0x1

    .line 589
    new-instance v4, Lcom/htc/launcher/FolderCellLayout$ChildAnim;

    invoke-direct {v4}, Lcom/htc/launcher/FolderCellLayout$ChildAnim;-><init>()V

    .line 590
    .local v4, c:Lcom/htc/launcher/FolderCellLayout$ChildAnim;
    move/from16 v0, v19

    iput v0, v4, Lcom/htc/launcher/FolderCellLayout$ChildAnim;->nIndex:I

    .line 591
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v4, Lcom/htc/launcher/FolderCellLayout$ChildAnim;->fStart:F

    .line 592
    iput v12, v4, Lcom/htc/launcher/FolderCellLayout$ChildAnim;->nGroup:I

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_naEffectOrder:[Lcom/htc/launcher/FolderCellLayout$ChildAnim;

    move-object/from16 v20, v0

    aput-object v4, v20, v10

    .line 594
    add-int/lit8 v10, v10, 0x1

    .line 585
    .end local v4           #c:Lcom/htc/launcher/FolderCellLayout$ChildAnim;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 556
    .end local v3           #bValidSlice:Z
    .end local v7           #i:I
    .end local v11           #nInterval:I
    .end local v12           #nRealSliceCount:I
    .end local v14           #nSlice:I
    .end local v16           #nSliceSize:I
    .end local v17           #nSliceStart:I
    .end local v19           #x:I
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 557
    add-int/lit8 v11, v9, 0x1

    .restart local v11       #nInterval:I
    goto :goto_0

    .line 559
    .end local v11           #nInterval:I
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 560
    add-int/lit8 v11, v9, 0x1

    .restart local v11       #nInterval:I
    goto :goto_0

    .line 563
    .end local v11           #nInterval:I
    :cond_3
    add-int/lit8 v11, v9, -0x1

    .restart local v11       #nInterval:I
    goto :goto_0

    .line 570
    .restart local v12       #nRealSliceCount:I
    .restart local v14       #nSlice:I
    :cond_4
    sub-int v16, v15, v14

    goto :goto_2

    .line 572
    .restart local v16       #nSliceSize:I
    :cond_5
    sub-int v20, v14, v9

    add-int/lit8 v20, v20, 0x1

    mul-int v20, v20, v9

    add-int v17, v11, v20

    goto :goto_3

    .line 574
    :cond_6
    if-nez p1, :cond_8

    if-eqz p2, :cond_8

    .line 575
    if-ge v14, v9, :cond_7

    sub-int v20, v9, v14

    add-int/lit8 v17, v20, -0x1

    .restart local v17       #nSliceStart:I
    :goto_5
    goto :goto_3

    .end local v17           #nSliceStart:I
    :cond_7
    sub-int v20, v14, v9

    add-int/lit8 v20, v20, 0x1

    mul-int v17, v9, v20

    goto :goto_5

    .line 577
    :cond_8
    if-eqz p1, :cond_a

    if-nez p2, :cond_a

    .line 578
    if-ge v14, v9, :cond_9

    sub-int v20, v9, v14

    add-int/lit8 v20, v20, -0x1

    mul-int v17, v20, v9

    .restart local v17       #nSliceStart:I
    :goto_6
    goto :goto_3

    .end local v17           #nSliceStart:I
    :cond_9
    sub-int v20, v14, v9

    add-int/lit8 v17, v20, 0x1

    goto :goto_6

    .line 581
    :cond_a
    if-ge v14, v9, :cond_b

    sub-int v20, v9, v14

    add-int/lit8 v20, v20, -0x1

    mul-int v20, v20, v9

    add-int v17, v11, v20

    .restart local v17       #nSliceStart:I
    :goto_7
    goto :goto_3

    .end local v17           #nSliceStart:I
    :cond_b
    sub-int v20, v15, v14

    add-int/lit8 v17, v20, -0x1

    goto :goto_7

    .line 597
    .restart local v3       #bValidSlice:Z
    .restart local v7       #i:I
    .restart local v17       #nSliceStart:I
    :cond_c
    if-eqz v3, :cond_d

    .line 598
    add-int/lit8 v12, v12, 0x1

    .line 569
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 602
    .end local v3           #bValidSlice:Z
    .end local v7           #i:I
    .end local v16           #nSliceSize:I
    .end local v17           #nSliceStart:I
    :cond_e
    const/4 v6, 0x0

    .line 603
    .local v6, fStartDelay:F
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_8
    if-ge v7, v8, :cond_10

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_naEffectOrder:[Lcom/htc/launcher/FolderCellLayout$ChildAnim;

    move-object/from16 v20, v0

    aget-object v5, v20, v7

    .line 605
    .local v5, ca:Lcom/htc/launcher/FolderCellLayout$ChildAnim;
    iget v0, v5, Lcom/htc/launcher/FolderCellLayout$ChildAnim;->nGroup:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-int/lit8 v21, v12, 0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v6, v20, v21

    .line 606
    iput v6, v5, Lcom/htc/launcher/FolderCellLayout$ChildAnim;->fStart:F

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 608
    .local v18, v:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayerType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_f

    .line 609
    const/16 v20, 0x2

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 603
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 611
    .end local v5           #ca:Lcom/htc/launcher/FolderCellLayout$ChildAnim;
    .end local v18           #v:Landroid/view/View;
    :cond_10
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/htc/launcher/FolderCellLayout;->clearOccupiedCells()V

    .line 466
    iget-object v0, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v0}, Lcom/htc/launcher/FolderCellLayoutChildren;->removeAllViews()V

    .line 467
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v0}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 473
    invoke-direct {p0}, Lcom/htc/launcher/FolderCellLayout;->clearOccupiedCells()V

    .line 474
    iget-object v0, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v0}, Lcom/htc/launcher/FolderCellLayoutChildren;->removeAllViewsInLayout()V

    .line 476
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lcom/htc/launcher/FolderCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 487
    iget-object v0, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/FolderCellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 488
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/launcher/FolderCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 494
    iget-object v0, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/FolderCellLayoutChildren;->removeViewAt(I)V

    .line 495
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lcom/htc/launcher/FolderCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 501
    iget-object v0, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/FolderCellLayoutChildren;->removeViewInLayout(Landroid/view/View;)V

    .line 502
    return-void
.end method

.method public removeViewInLayout(Lcom/htc/launcher/ApplicationInfo;)V
    .locals 5
    .parameter "itemInfo"

    .prologue
    .line 506
    iget-object v4, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v4}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildCount()I

    move-result v2

    .line 507
    .local v2, nCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 508
    iget-object v4, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v4, v0}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 509
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/ApplicationInfo;

    .line 510
    .local v1, info:Lcom/htc/launcher/ApplicationInfo;
    if-ne v1, p1, :cond_1

    .line 511
    invoke-virtual {p0, v3}, Lcom/htc/launcher/FolderCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 512
    iget-object v4, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v4, v3}, Lcom/htc/launcher/FolderCellLayoutChildren;->removeViewInLayout(Landroid/view/View;)V

    .line 516
    .end local v1           #info:Lcom/htc/launcher/ApplicationInfo;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    return-void

    .line 507
    .restart local v1       #info:Lcom/htc/launcher/ApplicationInfo;
    .restart local v3       #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeViewWithoutMarkingCells(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/FolderCellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 481
    return-void
.end method

.method public removeViews(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 521
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v1, v0}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/launcher/FolderCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v1, p1, p2}, Lcom/htc/launcher/FolderCellLayoutChildren;->removeViews(II)V

    .line 525
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 530
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 531
    iget-object v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v1, v0}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/launcher/FolderCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v1, p1, p2}, Lcom/htc/launcher/FolderCellLayoutChildren;->removeViewsInLayout(II)V

    .line 534
    return-void
.end method

.method public setChildOpenCloseAnim(F)V
    .locals 9
    .parameter "fInterpolation"

    .prologue
    const/high16 v8, 0x3f80

    .line 614
    invoke-virtual {p0}, Lcom/htc/launcher/FolderCellLayout;->getPivotX()F

    move-result v1

    .line 615
    .local v1, fPivotX:F
    invoke-virtual {p0}, Lcom/htc/launcher/FolderCellLayout;->getPivotY()F

    move-result v2

    .line 616
    .local v2, fPivotY:F
    iget-object v6, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v6}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildCount()I

    move-result v5

    .line 619
    .local v5, nChildCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 620
    iget-object v6, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    iget-object v7, p0, Lcom/htc/launcher/FolderCellLayout;->m_naEffectOrder:[Lcom/htc/launcher/FolderCellLayout$ChildAnim;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/htc/launcher/FolderCellLayout$ChildAnim;->nIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/launcher/FolderCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 621
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_0

    .line 619
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 624
    :cond_0
    iget-object v6, p0, Lcom/htc/launcher/FolderCellLayout;->m_naEffectOrder:[Lcom/htc/launcher/FolderCellLayout$ChildAnim;

    aget-object v6, v6, v4

    invoke-direct {p0, v6, p1}, Lcom/htc/launcher/FolderCellLayout;->getChildInterpolation(Lcom/htc/launcher/FolderCellLayout$ChildAnim;F)F

    move-result v3

    .line 625
    .local v3, fValue:F
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 626
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 627
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v1, v6

    iget v7, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCellWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    sub-float v7, v8, v3

    mul-float/2addr v6, v7

    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 628
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v2, v6

    iget v7, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCellHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    sub-float v7, v8, v3

    mul-float/2addr v6, v7

    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 630
    .end local v0           #child:Landroid/view/View;
    .end local v3           #fValue:F
    :cond_1
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1
    .parameter "bEnabled"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/FolderCellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    .line 356
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "bEnabled"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/htc/launcher/FolderCellLayout;->m_children:Lcom/htc/launcher/FolderCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/FolderCellLayoutChildren;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 362
    return-void
.end method

.method public setGridSize(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 170
    sget-object v0, Lcom/htc/launcher/FolderCellLayout;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setGridSize %d %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iput p1, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountX:I

    .line 172
    iput p2, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountY:I

    .line 173
    iget v0, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountX:I

    iget v1, p0, Lcom/htc/launcher/FolderCellLayout;->m_nCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/htc/launcher/FolderCellLayout;->m_bOccupied:[[Z

    .line 174
    invoke-virtual {p0}, Lcom/htc/launcher/FolderCellLayout;->requestLayout()V

    .line 175
    return-void
.end method
