.class public Lcom/google/android/talk/DividerDrawingListItem;
.super Landroid/widget/LinearLayout;
.source "DividerDrawingListItem.java"


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerDrawRect:Landroid/graphics/Rect;

.field private mDividerHeight:I

.field private mShoveDistance:I

.field private mShoverEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mDividerDrawRect:Landroid/graphics/Rect;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mShoveDistance:I

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mShoverEnabled:Z

    .line 21
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0x333334

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 26
    invoke-direct {p0}, Lcom/google/android/talk/DividerDrawingListItem;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mDividerDrawRect:Landroid/graphics/Rect;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mShoveDistance:I

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mShoverEnabled:Z

    .line 21
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0x333334

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-direct {p0}, Lcom/google/android/talk/DividerDrawingListItem;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/android/talk/DividerDrawingListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mShoveDistance:I

    .line 37
    invoke-virtual {p0}, Lcom/google/android/talk/DividerDrawingListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mDividerHeight:I

    .line 38
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 53
    iget-object v2, p0, Lcom/google/android/talk/DividerDrawingListItem;->mDividerDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/talk/DividerDrawingListItem;->shoverEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mShoveDistance:I

    :goto_0
    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 54
    iget-object v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mDividerDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/talk/DividerDrawingListItem;->getRight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 55
    iget-object v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mDividerDrawRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 56
    iget-object v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mDividerDrawRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/talk/DividerDrawingListItem;->mDividerHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 58
    iget-object v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mDivider:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/talk/DividerDrawingListItem;->mDividerDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 59
    iget-object v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 60
    return-void

    :cond_0
    move v0, v1

    .line 53
    goto :goto_0
.end method

.method public setShoverEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/android/talk/DividerDrawingListItem;->mShoverEnabled:Z

    .line 42
    return-void
.end method

.method protected shoverEnabled()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/talk/DividerDrawingListItem;->mShoverEnabled:Z

    return v0
.end method
