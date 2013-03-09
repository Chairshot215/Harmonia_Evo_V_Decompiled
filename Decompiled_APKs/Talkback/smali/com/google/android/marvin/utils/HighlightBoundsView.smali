.class public Lcom/google/android/marvin/utils/HighlightBoundsView;
.super Landroid/view/View;
.source "HighlightBoundsView.java"


# instance fields
.field private final SCREEN_LOCATION:[I

.field private mHighlightColor:I

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mNodes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final mPaint:Landroid/graphics/Paint;

.field private final mTemp:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->SCREEN_LOCATION:[I

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->mTemp:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->mPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->mNodes:Ljava/util/HashSet;

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->mMatrix:Landroid/graphics/Matrix;

    .line 56
    iget-object v0, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    const/high16 v0, -0x1

    iput v0, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->mHighlightColor:I

    .line 61
    return-void
.end method

.method private isValidNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z
    .locals 5
    .parameter "node"

    .prologue
    const/4 v4, 0x1

    .line 135
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getParent()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    .line 137
    .local v3, parent:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-eqz v3, :cond_0

    .line 138
    invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 153
    :goto_0
    return v4

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v1

    .line 144
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v1, :cond_1

    .line 153
    const/4 v4, 0x0

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 147
    .local v0, child:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0

    .line 144
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public add(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 115
    .local v0, clone:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    iget-object v1, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->mNodes:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->mNodes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    iget-object v1, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->mNodes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 101
    return-void

    .line 96
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 97
    .local v0, node:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 73
    .local v1, saveCount:I
    iget-object v2, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->SCREEN_LOCATION:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->SCREEN_LOCATION:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    iget-object v2, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 76
    iget-object v2, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->mHighlightColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object v2, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->mNodes:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 83
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 84
    return-void

    .line 78
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 79
    .local v0, node:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    iget-object v3, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->mTemp:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 80
    iget-object v3, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->mTemp:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 65
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 67
    iget-object v0, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->SCREEN_LOCATION:[I

    invoke-virtual {p0, v0}, Lcom/google/android/marvin/utils/HighlightBoundsView;->getLocationOnScreen([I)V

    .line 68
    return-void
.end method

.method public removeInvalidNodes()V
    .locals 3

    .prologue
    .line 122
    iget-object v2, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->mNodes:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 124
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    return-void

    .line 125
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 127
    .local v1, node:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-direct {p0, v1}, Lcom/google/android/marvin/utils/HighlightBoundsView;->isValidNode(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 129
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    goto :goto_0
.end method

.method public setHighlightColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 92
    iput p1, p0, Lcom/google/android/marvin/utils/HighlightBoundsView;->mHighlightColor:I

    .line 93
    return-void
.end method
