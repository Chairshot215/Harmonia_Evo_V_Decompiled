.class public Lcom/android/camera/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableImageView(Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public static disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setPressed(Z)V

    :cond_1
    return-void
.end method

.method public static disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/camera/ViewUtil;->disableImageView(Landroid/widget/ImageView;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setPressed(Z)V

    :cond_0
    invoke-static {p2}, Lcom/android/camera/ViewUtil;->disableTextView(Landroid/widget/TextView;)V

    return-void
.end method

.method public static disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setPressed(Z)V

    :cond_1
    return-void
.end method

.method public static disableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setPressed(Z)V

    :cond_1
    invoke-static {p2}, Lcom/android/camera/ViewUtil;->disableTextView(Landroid/widget/TextView;)V

    return-void
.end method

.method public static disableTextView(Landroid/widget/TextView;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public static enableImageView(Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public static enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public static enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 1

    invoke-static {p0}, Lcom/android/camera/ViewUtil;->enableImageView(Landroid/widget/ImageView;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    invoke-static {p2}, Lcom/android/camera/ViewUtil;->enableTextView(Landroid/widget/TextView;)V

    return-void
.end method

.method public static enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public static enableMainButton(Lcom/android/camera/widget/ImageTextView;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/ImageTextView;->setEnabled(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    invoke-static {p2}, Lcom/android/camera/ViewUtil;->enableTextView(Landroid/widget/TextView;)V

    return-void
.end method

.method public static enableTextView(Landroid/widget/TextView;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public static getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getModifiedRadioBtn(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const v5, 0x10100a0

    const v6, 0x101009c

    const v7, 0x10100a7

    const v8, 0x7f0a0020

    const v9, 0x2080078

    invoke-static {p0, v8, v9}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v8, 0x7f0a0021

    const v9, 0x20804c5

    invoke-static {p0, v8, v9}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v8, 0x7f0a0022

    const v9, 0x2080076

    invoke-static {p0, v8, v9}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v8, 0x7f0a0023

    const v9, 0x2080077

    invoke-static {p0, v8, v9}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v8, v12, [I

    aput v5, v8, v10

    aput v7, v8, v11

    invoke-virtual {v4, v8, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v8, v12, [I

    aput v5, v8, v10

    aput v6, v8, v11

    invoke-virtual {v4, v8, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v8, v12, [I

    aput v5, v8, v10

    neg-int v9, v6

    aput v9, v8, v11

    invoke-virtual {v4, v8, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v8, v12, [I

    neg-int v9, v5

    aput v9, v8, v10

    aput v7, v8, v11

    invoke-virtual {v4, v8, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v8, v12, [I

    neg-int v9, v5

    aput v9, v8, v10

    aput v6, v8, v11

    invoke-virtual {v4, v8, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v8, v12, [I

    neg-int v9, v5

    aput v9, v8, v10

    neg-int v9, v6

    aput v9, v8, v11

    invoke-virtual {v4, v8, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v4
.end method

.method public static setHeight(Landroid/view/View;I)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public static setSize(Landroid/view/View;II)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public static setWidth(Landroid/view/View;I)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method
