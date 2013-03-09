.class public Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFontFactory;
.super Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedFontFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedFontFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getFont(IZZIZ)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;
    .locals 6

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;-><init>(IZZIZ)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFontFactory;->createWrappedFont(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;

    move-result-object v0

    return-object v0
.end method
