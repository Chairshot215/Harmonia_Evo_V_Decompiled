.class public Lcom/htc/wrap/android/content/res/HtcWrapResources;
.super Landroid/content/res/Resources;
.source "HtcWrapResources.java"


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3
    .parameter "res"

    .prologue
    .line 11
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 12
    return-void
.end method

.method public static isPreloading(Landroid/content/res/Resources;)Z
    .locals 1
    .parameter "res"

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/res/Resources;->isPreloading()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "id"
    .parameter "density"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableForOrientation(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "id"
    .parameter "orientation"

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getDrawableForOrientation(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableForScreenConfig(IIII)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "id"
    .parameter "density"
    .parameter "screenLayout"
    .parameter "minimumSize"

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;->getDrawableForScreenConfig(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isPreloading()Z
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/content/res/Resources;->isPreloading()Z

    move-result v0

    return v0
.end method
