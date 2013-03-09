.class public Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "GeneralFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 416
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 399
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;->gravity:I

    .line 417
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "gravity"

    .prologue
    .line 432
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 399
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;->gravity:I

    .line 433
    iput p3, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;->gravity:I

    .line 434
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    .line 405
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 399
    iput v2, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;->gravity:I

    .line 407
    sget-object v1, Lcom/android/internal/R$styleable;->FrameLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 408
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;->gravity:I

    .line 409
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 410
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 440
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;->gravity:I

    .line 441
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 447
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 399
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/common/GeneralFrameLayout$LayoutParams;->gravity:I

    .line 448
    return-void
.end method
