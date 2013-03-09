.class final Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;
.super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "MipmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/MipmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MipmapContainerState"
.end annotation


# instance fields
.field private mMipmapHeights:[I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;Landroid/graphics/drawable/MipmapDrawable;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->mMipmapHeights:[I

    iput-object v0, p0, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->mMipmapHeights:[I

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->setConstantSize(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->mMipmapHeights:[I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;)[I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->mMipmapHeights:[I

    return-object v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;[I)[I
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->mMipmapHeights:[I

    return-object p1
.end method


# virtual methods
.method public addDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    if-lez v1, :cond_0

    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    add-int/lit8 v5, v1, -0x1

    aget-object v2, v4, v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v4, v1

    iget-object v4, p0, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->mMipmapHeights:[I

    aput v3, v4, v1

    iget-object v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    add-int/lit8 v5, v1, -0x1

    aput-object p1, v4, v5

    iget-object v4, p0, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->mMipmapHeights:[I

    add-int/lit8 v5, v1, -0x1

    aput v0, v4, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected computeConstantSize()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v3, v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    iget-object v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mDrawables:[Landroid/graphics/drawable/Drawable;

    add-int/lit8 v4, v0, -0x1

    aget-object v1, v3, v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mComputedConstantSize:Z

    return-void

    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantHeight:I

    iput v3, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantWidth:I

    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumHeight:I

    iput v4, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->mConstantMinimumWidth:I

    goto :goto_0
.end method

.method public growArray(II)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    new-array v0, p2, [I

    iget-object v1, p0, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->mMipmapHeights:[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->mMipmapHeights:[I

    return-void
.end method

.method public indexForBounds(Landroid/graphics/Rect;)I
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;->mMipmapHeights:[I

    aget v3, v3, v2

    if-gt v1, v3, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    add-int/lit8 v2, v0, -0x1

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/MipmapDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/MipmapDrawable;-><init>(Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;Landroid/content/res/Resources;Landroid/graphics/drawable/MipmapDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/MipmapDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/MipmapDrawable;-><init>(Landroid/graphics/drawable/MipmapDrawable$MipmapContainerState;Landroid/content/res/Resources;Landroid/graphics/drawable/MipmapDrawable$1;)V

    return-object v0
.end method
