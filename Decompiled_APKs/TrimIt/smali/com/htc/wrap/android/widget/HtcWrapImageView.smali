.class public Lcom/htc/wrap/android/widget/HtcWrapImageView;
.super Landroid/widget/ImageView;
.source "HtcWrapImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public static setImageBitmapWithoutRelayout(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "obj"
    .parameter "bm"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmapWithoutRelayout(Landroid/graphics/Bitmap;)V

    .line 97
    return-void
.end method

.method public static setImageDrawableWithoutRelayout(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "obj"
    .parameter "drawable"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    .line 88
    return-void
.end method

.method public static setImageResourceWithoutRelayout(Landroid/widget/ImageView;I)V
    .locals 0
    .parameter "obj"
    .parameter "resId"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    .line 70
    return-void
.end method

.method public static setImageURIWithoutRelayout(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 0
    .parameter "obj"
    .parameter "uri"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageURIWithoutRelayout(Landroid/net/Uri;)V

    .line 79
    return-void
.end method


# virtual methods
.method public setImageBitmapWithoutRelayout(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bm"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmapWithoutRelayout(Landroid/graphics/Bitmap;)V

    .line 59
    return-void
.end method

.method public setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawableWithoutRelayout(Landroid/graphics/drawable/Drawable;)V

    .line 50
    return-void
.end method

.method public setImageResourceWithoutRelayout(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    .line 32
    return-void
.end method

.method public setImageURIWithoutRelayout(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURIWithoutRelayout(Landroid/net/Uri;)V

    .line 41
    return-void
.end method
