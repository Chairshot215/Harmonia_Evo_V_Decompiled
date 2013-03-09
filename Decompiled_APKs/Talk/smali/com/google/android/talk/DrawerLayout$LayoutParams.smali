.class public Lcom/google/android/talk/DrawerLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public contractedWidth:I

.field public leftMargin:I

.field public weight:F


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 431
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 432
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/talk/DrawerLayout$LayoutParams;->weight:F

    .line 433
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 417
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 419
    sget-object v1, Lcom/google/android/talk/R$styleable;->DrawerLayoutChild:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 420
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x64

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/DrawerLayout$LayoutParams;->contractedWidth:I

    .line 422
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/talk/DrawerLayout$LayoutParams;->weight:F

    .line 423
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/DrawerLayout$LayoutParams;->leftMargin:I

    .line 424
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 425
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 441
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    return-void
.end method
