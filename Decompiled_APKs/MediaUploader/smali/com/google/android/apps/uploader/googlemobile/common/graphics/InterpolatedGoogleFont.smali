.class public Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;


# static fields
.field private static final dimensions:[I


# instance fields
.field private final font:Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;

.field private final iconProvider:Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->dimensions:[I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->font:Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;

    iput-object p2, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->iconProvider:Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;

    return-void
.end method


# virtual methods
.method public charWidth(C)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->font:Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;

    invoke-interface {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;->charWidth(C)I

    move-result v0

    goto :goto_0
.end method

.method public charsWidth([CII)I
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->stringWidth(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public drawChars(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;[CIIII)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, p3, p4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, p1, v0, p5, p6}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->drawString(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;Ljava/lang/String;II)V

    return-void
.end method

.method public drawString(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;Ljava/lang/String;II)V
    .locals 8

    invoke-interface {p1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->getFont()Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;

    move-result-object v7

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->font:Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->iconProvider:Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->drawInterpolatedString(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;Ljava/lang/String;II[ILcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, v7}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->setFont(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1, v7}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->setFont(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;)V

    throw v0
.end method

.method public drawSubstring(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;Ljava/lang/String;IIII)V
    .locals 10

    invoke-interface {p1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->getFont()Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;

    move-result-object v9

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->font:Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->iconProvider:Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->drawInterpolatedSubstring(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;Ljava/lang/String;IIII[ILcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1, v9}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->setFont(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1, v9}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->setFont(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;)V

    throw v0
.end method

.method public getBaseGoogleFont()Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->getOriginalFont()Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;

    move-result-object v0

    move-object p0, v0

    :goto_0
    instance-of v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->getOriginalFont()Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;

    move-result-object v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public getBaselinePosition()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->font:Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;->getBaselinePosition()I

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->font:Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;->getColor()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->font:Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIconProvider()Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->iconProvider:Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;

    return-object v0
.end method

.method public getOriginalFont()Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->font:Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;

    return-object v0
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->font:Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;

    invoke-interface {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;->setColor(I)V

    return-void
.end method

.method public stringWidth(Ljava/lang/String;)I
    .locals 8

    sget-object v7, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->dimensions:[I

    monitor-enter v7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->font:Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->dimensions:[I

    iget-object v6, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->iconProvider:Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->drawInterpolatedString(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;Ljava/lang/String;II[ILcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;)V

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->dimensions:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    monitor-exit v7

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public substringWidth(Ljava/lang/String;II)I
    .locals 10

    sget-object v9, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->dimensions:[I

    monitor-enter v9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->font:Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->dimensions:[I

    iget-object v8, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->iconProvider:Lcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/Utils;->drawInterpolatedSubstring(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;Ljava/lang/String;IIII[ILcom/google/android/apps/uploader/googlemobile/common/graphics/IconProvider;)V

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/InterpolatedGoogleFont;->dimensions:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    monitor-exit v9

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
