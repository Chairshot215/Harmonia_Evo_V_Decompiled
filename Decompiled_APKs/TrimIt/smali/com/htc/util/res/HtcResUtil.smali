.class public Lcom/htc/util/res/HtcResUtil;
.super Ljava/lang/Object;
.source "HtcResUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcResUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlurWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/util/res/HtcResUtil;->getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "context"
    .parameter "isLandscape"

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDrawableFromContext(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "name"

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, dw:Landroid/graphics/drawable/Drawable;
    const-string v3, "drawable"

    invoke-static {p0, p1, v3}, Lcom/htc/util/res/HtcResUtil;->getResourceIdFromContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 35
    .local v2, id:I
    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    :cond_0
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "HtcResUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found in Launcher."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getResourceIdFromContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 24
    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 27
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
