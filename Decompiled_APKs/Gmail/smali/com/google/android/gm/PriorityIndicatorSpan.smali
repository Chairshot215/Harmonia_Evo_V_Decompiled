.class public Lcom/google/android/gm/PriorityIndicatorSpan;
.super Landroid/text/style/ReplacementSpan;
.source "PriorityIndicatorSpan.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mPaddingH:I

.field private mPaddingV:I

.field private mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 0
    .parameter "context"
    .parameter "resId"
    .parameter "paddingV"
    .parameter "paddingH"

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/gm/PriorityIndicatorSpan;->mContext:Landroid/content/Context;

    .line 40
    iput p2, p0, Lcom/google/android/gm/PriorityIndicatorSpan;->mResId:I

    .line 41
    iput p3, p0, Lcom/google/android/gm/PriorityIndicatorSpan;->mPaddingV:I

    .line 42
    iput p4, p0, Lcom/google/android/gm/PriorityIndicatorSpan;->mPaddingH:I

    .line 43
    return-void
.end method

.method private getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 52
    iget-object v1, p0, Lcom/google/android/gm/PriorityIndicatorSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 53
    .local v1, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    .line 55
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 58
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez v0, :cond_1

    .line 59
    invoke-direct {p0}, Lcom/google/android/gm/PriorityIndicatorSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 60
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/android/gm/PriorityIndicatorSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 63
    :cond_1
    return-object v0
.end method

.method private getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    iget-object v1, p0, Lcom/google/android/gm/PriorityIndicatorSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gm/PriorityIndicatorSpan;->mResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 47
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 48
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 4
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "top"
    .parameter "y"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/gm/PriorityIndicatorSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 86
    .local v0, b:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 88
    add-int v2, p6, p8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 90
    .local v1, transY:I
    iget v2, p0, Lcom/google/android/gm/PriorityIndicatorSpan;->mPaddingH:I

    int-to-float v2, v2

    add-float/2addr v2, p5

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 91
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 93
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/gm/PriorityIndicatorSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 71
    .local v1, rect:Landroid/graphics/Rect;
    if-eqz p5, :cond_0

    .line 72
    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 73
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, p0, Lcom/google/android/gm/PriorityIndicatorSpan;->mPaddingV:I

    sub-int/2addr v2, v3

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 74
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 75
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, p0, Lcom/google/android/gm/PriorityIndicatorSpan;->mPaddingV:I

    add-int/2addr v2, v3

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 76
    iget v2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, p0, Lcom/google/android/gm/PriorityIndicatorSpan;->mPaddingV:I

    add-int/2addr v2, v3

    iput v2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 79
    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/google/android/gm/PriorityIndicatorSpan;->mPaddingH:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    return v2
.end method
