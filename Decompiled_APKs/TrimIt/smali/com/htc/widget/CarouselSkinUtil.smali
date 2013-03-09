.class final Lcom/htc/widget/CarouselSkinUtil;
.super Ljava/lang/Object;
.source "CarouselSkinUtil.java"


# static fields
.field public static final INVALID_FIELD:I = -0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrawable(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "attr"
    .parameter "resid"
    .parameter "resName"

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 26
    .local v3, res:Landroid/content/res/Resources;
    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    .line 27
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 28
    .local v2, out:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 31
    :try_start_0
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 42
    .end local v2           #out:Landroid/util/TypedValue;
    :goto_0
    return-object v4

    .line 32
    .restart local v2       #out:Landroid/util/TypedValue;
    :catch_0
    move-exception v0

    .line 33
    .local v0, eres:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 36
    .end local v0           #eres:Landroid/content/res/Resources$NotFoundException;
    .end local v2           #out:Landroid/util/TypedValue;
    :cond_0
    if-eqz p3, :cond_1

    .line 38
    invoke-static {p0, p3, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 39
    .local v1, id:I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 42
    .end local v1           #id:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getDrawerBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"

    .prologue
    .line 46
    const v0, 0x2010096

    const v1, 0x20806b7

    const-string v2, "common_app_bkg"

    invoke-static {p0, v0, v1, v2}, Lcom/htc/widget/CarouselSkinUtil;->getDrawable(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static isDefaultNoEditorMode()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public static isTextRequiredInWidget()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method
