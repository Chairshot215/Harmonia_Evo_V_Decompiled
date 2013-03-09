.class public Lcom/android/browser/view/PieStackView;
.super Lcom/android/browser/view/BasePieView;
.source "PieStackView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/view/PieStackView$OnCurrentListener;
    }
.end annotation


# static fields
.field private static final SLOP:I = 0x5


# instance fields
.field private mCurrentListener:Lcom/android/browser/view/PieStackView$OnCurrentListener;

.field private mMinHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/browser/view/BasePieView;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/browser/view/PieStackView;->mMinHeight:I

    .line 42
    return-void
.end method

.method private layoutChildrenLinear()V
    .locals 8

    .prologue
    .line 75
    iget-object v6, p0, Lcom/android/browser/view/PieStackView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 76
    .local v2, n:I
    iget v3, p0, Lcom/android/browser/view/PieStackView;->mTop:I

    .line 77
    .local v3, top:I
    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    const/4 v0, 0x0

    .line 78
    .local v0, dy:I
    :goto_0
    iget-object v6, p0, Lcom/android/browser/view/PieStackView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 79
    .local v4, view:Landroid/view/View;
    iget v5, p0, Lcom/android/browser/view/PieStackView;->mLeft:I

    .line 80
    .local v5, x:I
    iget v6, p0, Lcom/android/browser/view/PieStackView;->mChildWidth:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/android/browser/view/PieStackView;->mChildHeight:I

    add-int/2addr v7, v3

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 81
    add-int/2addr v3, v0

    .line 82
    goto :goto_1

    .line 77
    .end local v0           #dy:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #view:Landroid/view/View;
    .end local v5           #x:I
    :cond_0
    iget v6, p0, Lcom/android/browser/view/PieStackView;->mHeight:I

    iget v7, p0, Lcom/android/browser/view/PieStackView;->mChildHeight:I

    sub-int/2addr v6, v7

    add-int/lit8 v7, v2, -0x1

    div-int v0, v6, v7

    goto :goto_0

    .line 83
    .restart local v0       #dy:I
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 87
    iget-object v2, p0, Lcom/android/browser/view/PieStackView;->mViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 88
    iget-object v2, p0, Lcom/android/browser/view/PieStackView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 89
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/browser/view/PieStackView;->mCurrent:I

    if-ge v0, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/android/browser/view/PieStackView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, p1}, Lcom/android/browser/view/PieStackView;->drawView(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    add-int/lit8 v0, v1, -0x1

    :goto_1
    iget v2, p0, Lcom/android/browser/view/PieStackView;->mCurrent:I

    if-le v0, v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/android/browser/view/PieStackView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, p1}, Lcom/android/browser/view/PieStackView;->drawView(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 92
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/android/browser/view/PieStackView;->mViews:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/browser/view/PieStackView;->mCurrent:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, p1}, Lcom/android/browser/view/PieStackView;->drawView(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 97
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_2
    return-void
.end method

.method protected findChildAt(I)I
    .locals 3
    .parameter "y"

    .prologue
    .line 101
    iget v1, p0, Lcom/android/browser/view/PieStackView;->mTop:I

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/android/browser/view/PieStackView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/browser/view/PieStackView;->mHeight:I

    div-int v0, v1, v2

    .line 102
    .local v0, ix:I
    return v0
.end method

.method public layout(IIZF)V
    .locals 3
    .parameter "anchorX"
    .parameter "anchorY"
    .parameter "left"
    .parameter "angle"

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/browser/view/BasePieView;->layout(IIZF)V

    .line 64
    invoke-virtual {p0}, Lcom/android/browser/view/PieStackView;->buildViews()V

    .line 65
    iget v0, p0, Lcom/android/browser/view/PieStackView;->mChildWidth:I

    iput v0, p0, Lcom/android/browser/view/PieStackView;->mWidth:I

    .line 66
    iget v0, p0, Lcom/android/browser/view/PieStackView;->mChildHeight:I

    iget-object v1, p0, Lcom/android/browser/view/PieStackView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/browser/view/PieStackView;->mMinHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/view/PieStackView;->mHeight:I

    .line 67
    if-eqz p3, :cond_1

    const/4 v0, 0x5

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/browser/view/PieStackView;->mLeft:I

    .line 68
    iget v0, p0, Lcom/android/browser/view/PieStackView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/browser/view/PieStackView;->mTop:I

    .line 69
    iget-object v0, p0, Lcom/android/browser/view/PieStackView;->mViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/android/browser/view/PieStackView;->layoutChildrenLinear()V

    .line 72
    :cond_0
    return-void

    .line 67
    :cond_1
    iget v0, p0, Lcom/android/browser/view/PieStackView;->mChildWidth:I

    add-int/lit8 v0, v0, 0x5

    neg-int v0, v0

    goto :goto_0
.end method

.method public setCurrent(I)V
    .locals 1
    .parameter "ix"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/browser/view/BasePieView;->setCurrent(I)V

    .line 51
    iget-object v0, p0, Lcom/android/browser/view/PieStackView;->mCurrentListener:Lcom/android/browser/view/PieStackView$OnCurrentListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/browser/view/PieStackView;->mCurrentListener:Lcom/android/browser/view/PieStackView$OnCurrentListener;

    invoke-interface {v0, p1}, Lcom/android/browser/view/PieStackView$OnCurrentListener;->onSetCurrent(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/browser/view/PieStackView;->buildViews()V

    .line 54
    invoke-direct {p0}, Lcom/android/browser/view/PieStackView;->layoutChildrenLinear()V

    .line 56
    :cond_0
    return-void
.end method

.method public setOnCurrentListener(Lcom/android/browser/view/PieStackView$OnCurrentListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/browser/view/PieStackView;->mCurrentListener:Lcom/android/browser/view/PieStackView$OnCurrentListener;

    .line 46
    return-void
.end method
