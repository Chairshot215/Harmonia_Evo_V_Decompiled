.class public abstract Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedFontFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/common/graphics/FontFactory;


# instance fields
.field private iconProvider:Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createWrappedFont(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedFontFactory;->getIconProvider()Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedFontFactory;->getIconProvider()Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;)V

    goto :goto_0
.end method

.method public getIconProvider()Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedFontFactory;->iconProvider:Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;

    return-object v0
.end method

.method public setIconProvider(Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedFontFactory;->iconProvider:Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;

    return-void
.end method
