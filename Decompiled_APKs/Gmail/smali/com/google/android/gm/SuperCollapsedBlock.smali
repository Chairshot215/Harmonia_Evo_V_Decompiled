.class public Lcom/google/android/gm/SuperCollapsedBlock;
.super Landroid/widget/FrameLayout;
.source "SuperCollapsedBlock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gm/HeaderBlock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/SuperCollapsedBlock$OnClickListener;
    }
.end annotation


# instance fields
.field private mBackgroundView:Landroid/view/View;

.field private mClick:Lcom/google/android/gm/SuperCollapsedBlock$OnClickListener;

.field private mCountView:Landroid/widget/TextView;

.field private mEnd:I

.field private mIconView:Landroid/view/View;

.field private mStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/SuperCollapsedBlock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/SuperCollapsedBlock;->setActivated(Z)V

    .line 51
    invoke-virtual {p0, p0}, Lcom/google/android/gm/SuperCollapsedBlock;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/SuperCollapsedBlock;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/google/android/gm/SuperCollapsedBlock;->mStart:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/gm/SuperCollapsedBlock;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/google/android/gm/SuperCollapsedBlock;->mEnd:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/SuperCollapsedBlock;)Lcom/google/android/gm/SuperCollapsedBlock$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gm/SuperCollapsedBlock;->mClick:Lcom/google/android/gm/SuperCollapsedBlock$OnClickListener;

    return-object v0
.end method

.method public static attach(Landroid/view/ViewGroup;IILcom/google/android/gm/SuperCollapsedBlock$OnClickListener;)Lcom/google/android/gm/SuperCollapsedBlock;
    .locals 4
    .parameter "parent"
    .parameter "start"
    .parameter "end"
    .parameter "onClick"

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 58
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04004f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/SuperCollapsedBlock;

    .line 61
    .local v0, block:Lcom/google/android/gm/SuperCollapsedBlock;
    iput-object p3, v0, Lcom/google/android/gm/SuperCollapsedBlock;->mClick:Lcom/google/android/gm/SuperCollapsedBlock$OnClickListener;

    .line 62
    iput p1, v0, Lcom/google/android/gm/SuperCollapsedBlock;->mStart:I

    .line 63
    iput p2, v0, Lcom/google/android/gm/SuperCollapsedBlock;->mEnd:I

    .line 64
    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gm/SuperCollapsedBlock;->setCount(I)V

    .line 66
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    return-object v0
.end method

.method public static getCannedHeight(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0e0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0e002b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method public canSnap()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public getSnapView()Lcom/google/android/gm/MessageHeaderView;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 93
    const v0, 0x7f0f00ba

    invoke-virtual {p0, v0}, Lcom/google/android/gm/SuperCollapsedBlock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0091

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    iget-object v0, p0, Lcom/google/android/gm/SuperCollapsedBlock;->mCountView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/google/android/gm/SuperCollapsedBlock;->mClick:Lcom/google/android/gm/SuperCollapsedBlock$OnClickListener;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gm/SuperCollapsedBlock;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gm/SuperCollapsedBlock$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gm/SuperCollapsedBlock$1;-><init>(Lcom/google/android/gm/SuperCollapsedBlock;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 75
    const v1, 0x7f0f00b9

    invoke-virtual {p0, v1}, Lcom/google/android/gm/SuperCollapsedBlock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/SuperCollapsedBlock;->mIconView:Landroid/view/View;

    .line 76
    const v1, 0x7f0f00bb

    invoke-virtual {p0, v1}, Lcom/google/android/gm/SuperCollapsedBlock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/gm/SuperCollapsedBlock;->mCountView:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0f00b8

    invoke-virtual {p0, v1}, Lcom/google/android/gm/SuperCollapsedBlock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/SuperCollapsedBlock;->mBackgroundView:Landroid/view/View;

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gm/SuperCollapsedBlock;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 82
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 83
    iget-object v1, p0, Lcom/google/android/gm/SuperCollapsedBlock;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    return-void
.end method

.method public setCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gm/SuperCollapsedBlock;->mCountView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/gm/SuperCollapsedBlock;->mIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 89
    return-void
.end method

.method public setMarginBottom(I)V
    .locals 5
    .parameter "height"

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    const-string v0, "Gmail"

    const-string v1, "super-collapsed block yielded unexpected body height: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 134
    :cond_0
    return-void
.end method

.method public setStarDisplay(Z)V
    .locals 0
    .parameter "starred"

    .prologue
    .line 144
    return-void
.end method

.method public updateContactInfo()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method
