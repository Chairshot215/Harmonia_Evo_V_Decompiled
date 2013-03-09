.class public Lcom/google/android/voicesearch/EditorLayout;
.super Landroid/widget/LinearLayout;
.source "EditorLayout.java"


# instance fields
.field private mHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method private setMinHeight(I)V
    .locals 4
    .parameter "windowHeight"

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/voicesearch/EditorLayout;->mHeight:I

    .line 47
    .local v0, height:I
    invoke-virtual {p0}, Lcom/google/android/voicesearch/EditorLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 49
    .local v1, resourceHeight:I
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/voicesearch/EditorLayout;->mHeight:I

    .line 51
    iget v2, p0, Lcom/google/android/voicesearch/EditorLayout;->mHeight:I

    if-eq v0, v2, :cond_0

    .line 52
    iget v2, p0, Lcom/google/android/voicesearch/EditorLayout;->mHeight:I

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/EditorLayout;->setMinimumHeight(I)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/voicesearch/EditorLayout;->updateLayout()V

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 39
    sub-int v0, p5, p3

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/EditorLayout;->setMinHeight(I)V

    .line 40
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 42
    return-void
.end method

.method public updateLayout()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/google/android/voicesearch/EditorLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/voicesearch/EditorLayout$1;-><init>(Lcom/google/android/voicesearch/EditorLayout;)V

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/EditorLayout;->post(Ljava/lang/Runnable;)Z

    .line 67
    return-void
.end method
