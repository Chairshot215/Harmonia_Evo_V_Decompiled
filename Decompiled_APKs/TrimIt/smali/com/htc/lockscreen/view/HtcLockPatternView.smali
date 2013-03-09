.class public Lcom/htc/lockscreen/view/HtcLockPatternView;
.super Lcom/android/internal/widget/LockPatternView;
.source "HtcLockPatternView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lockscreen/view/HtcLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "resId"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected loadAssets(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    instance-of v8, p0, Lcom/android/internal/widget/HtcIfLockPatternView;

    if-eqz v8, :cond_0

    .line 27
    iget-object v8, p0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 28
    .local v7, r:Landroid/content/res/Resources;
    sget-object v8, Lcom/htc/R$styleable;->HtcLockPatternView:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const v9, 0x1080111

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 31
    .local v2, btnResId:I
    const/4 v8, 0x1

    const v9, 0x1080113

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 32
    .local v1, btnPressResId:I
    const/4 v8, 0x2

    const v9, 0x108035c

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 33
    .local v3, circleDefId:I
    const/4 v8, 0x3

    const v9, 0x108035e

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 34
    .local v4, circleGreenId:I
    const/4 v8, 0x4

    const v9, 0x1080360

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 36
    .local v5, circleRedId:I
    move-object v6, p0

    .line 38
    .local v6, instance:Lcom/android/internal/widget/HtcIfLockPatternView;
    const/4 v8, 0x1

    invoke-direct {p0, v2}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/android/internal/widget/HtcIfLockPatternView;->setBitmapFor(ILandroid/graphics/Bitmap;)V

    .line 39
    const/4 v8, 0x2

    invoke-direct {p0, v1}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/android/internal/widget/HtcIfLockPatternView;->setBitmapFor(ILandroid/graphics/Bitmap;)V

    .line 40
    const/4 v8, 0x3

    invoke-direct {p0, v3}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/android/internal/widget/HtcIfLockPatternView;->setBitmapFor(ILandroid/graphics/Bitmap;)V

    .line 41
    const/4 v8, 0x4

    invoke-direct {p0, v4}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/android/internal/widget/HtcIfLockPatternView;->setBitmapFor(ILandroid/graphics/Bitmap;)V

    .line 42
    const/4 v8, 0x5

    invoke-direct {p0, v5}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/android/internal/widget/HtcIfLockPatternView;->setBitmapFor(ILandroid/graphics/Bitmap;)V

    .line 44
    const/4 v8, 0x6

    const v9, 0x1080358

    invoke-direct {p0, v9}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/android/internal/widget/HtcIfLockPatternView;->setBitmapFor(ILandroid/graphics/Bitmap;)V

    .line 46
    const/4 v8, 0x7

    const v9, 0x108035a

    invoke-direct {p0, v9}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/android/internal/widget/HtcIfLockPatternView;->setBitmapFor(ILandroid/graphics/Bitmap;)V

    .line 49
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #btnPressResId:I
    .end local v2           #btnResId:I
    .end local v3           #circleDefId:I
    .end local v4           #circleGreenId:I
    .end local v5           #circleRedId:I
    .end local v6           #instance:Lcom/android/internal/widget/HtcIfLockPatternView;
    .end local v7           #r:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method
