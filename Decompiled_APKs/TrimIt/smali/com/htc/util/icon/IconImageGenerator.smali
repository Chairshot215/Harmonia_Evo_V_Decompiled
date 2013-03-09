.class public final Lcom/htc/util/icon/IconImageGenerator;
.super Ljava/lang/Object;
.source "IconImageGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "resLayoutID"

    .prologue
    const/4 v3, -0x1

    .line 21
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 22
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 25
    .local v1, layout:Landroid/view/View;
    invoke-static {v1, v3, v3}, Lcom/htc/util/icon/IconImageGenerator;->genBitmap(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static genBitmap(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "layout"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 47
    invoke-virtual {p0, v5, v5}, Landroid/view/View;->measure(II)V

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 51
    .local v1, res:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 52
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 57
    if-ne p1, v6, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 61
    :cond_0
    if-ne p2, v6, :cond_1

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 64
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-eq p2, v2, :cond_3

    .line 67
    :cond_2
    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 69
    :cond_3
    return-object v1
.end method

.method public static genLayout(Landroid/content/Context;I)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "resLayoutID"

    .prologue
    const/4 v3, 0x0

    .line 31
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 32
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 33
    .local v1, layout:Landroid/view/View;
    invoke-virtual {v1, v3, v3}, Landroid/view/View;->measure(II)V

    .line 35
    return-object v1
.end method
