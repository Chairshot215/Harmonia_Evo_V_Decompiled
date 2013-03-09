.class public Lcom/htc/lockscreen/view/HtcLockPatternView;
.super Lcom/android/internal/widget/LockPatternView;
.source "HtcLockPatternView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/lockscreen/view/HtcLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1

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

    instance-of v8, p0, Lcom/android/internal/widget/HtcIfLockPatternView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/lockscreen/view/HtcLockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/htc/R$styleable;->HtcLockPatternView:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v8, 0x0

    const v9, 0x1080111

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/4 v8, 0x1

    const v9, 0x1080113

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/4 v8, 0x2

    const v9, 0x108035a

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v8, 0x3

    const v9, 0x108035c

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/4 v8, 0x4

    const v9, 0x108035e

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object v6, p0

    const/4 v8, 0x1

    invoke-direct {p0, v2}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/android/internal/widget/HtcIfLockPatternView;->setBitmapFor(ILandroid/graphics/Bitmap;)V

    const/4 v8, 0x2

    invoke-direct {p0, v1}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/android/internal/widget/HtcIfLockPatternView;->setBitmapFor(ILandroid/graphics/Bitmap;)V

    const/4 v8, 0x3

    invoke-direct {p0, v3}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/android/internal/widget/HtcIfLockPatternView;->setBitmapFor(ILandroid/graphics/Bitmap;)V

    const/4 v8, 0x4

    invoke-direct {p0, v4}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/android/internal/widget/HtcIfLockPatternView;->setBitmapFor(ILandroid/graphics/Bitmap;)V

    const/4 v8, 0x5

    invoke-direct {p0, v5}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/android/internal/widget/HtcIfLockPatternView;->setBitmapFor(ILandroid/graphics/Bitmap;)V

    const/4 v8, 0x6

    const v9, 0x2080b98

    invoke-direct {p0, v9}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/android/internal/widget/HtcIfLockPatternView;->setBitmapFor(ILandroid/graphics/Bitmap;)V

    const/4 v8, 0x7

    const v9, 0x2080b99

    invoke-direct {p0, v9}, Lcom/htc/lockscreen/view/HtcLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/android/internal/widget/HtcIfLockPatternView;->setBitmapFor(ILandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
