.class public Lcom/google/android/voicesearch/ui/WindowUtils;
.super Ljava/lang/Object;
.source "WindowUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setWindowSizeAndPosition(Landroid/view/Window;)V
    .locals 1
    .parameter "window"

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/voicesearch/ui/WindowUtils;->setWindowSizeAndPosition(Landroid/view/Window;Z)V

    .line 40
    return-void
.end method

.method public static setWindowSizeAndPosition(Landroid/view/Window;Z)V
    .locals 6
    .parameter "window"
    .parameter "setHeight"

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 52
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 53
    .local v2, params:Landroid/view/WindowManager$LayoutParams;
    const v5, 0x7f090008

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 55
    if-eqz p1, :cond_0

    .line 56
    const v5, 0x7f090009

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 58
    .local v0, height:I
    if-eqz v0, :cond_2

    .line 59
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 65
    .end local v0           #height:I
    :cond_0
    :goto_0
    const v5, 0x7f09000c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 66
    .local v4, top:I
    const v5, 0x7f09000b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 68
    .local v1, left:I
    const/16 v5, 0x30

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 69
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 73
    if-eqz v1, :cond_1

    .line 74
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    or-int/lit8 v5, v5, 0x3

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 75
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 78
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 79
    return-void

    .line 61
    .end local v1           #left:I
    .end local v4           #top:I
    .restart local v0       #height:I
    :cond_2
    const/4 v5, -0x1

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method
