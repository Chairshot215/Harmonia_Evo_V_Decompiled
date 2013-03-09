.class public Lcom/htc/fusion/fx/controls/FxDynamicImage;
.super Lcom/htc/fusion/fx/FxTimelineControl;
.source "FxDynamicImage.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;-><init>(I)V

    return-void
.end method

.method private native setImageNativeFromPath(Landroid/content/res/AssetManager;Ljava/lang/String;)V
.end method


# virtual methods
.method public native getSize()Landroid/graphics/PointF;
.end method

.method public native setFailed()V
.end method

.method public setImage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context or path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImageNativeFromPath(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-void
.end method

.method public native setImage(Landroid/graphics/Bitmap;)V
.end method

.method public native setImage(Landroid/graphics/drawable/Drawable;)V
.end method

.method public native setLoading()V
.end method
