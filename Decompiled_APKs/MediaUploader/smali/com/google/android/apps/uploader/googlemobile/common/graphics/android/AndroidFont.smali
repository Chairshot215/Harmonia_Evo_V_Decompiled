.class public Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleFont;


# static fields
.field private static final FONT_SIZE_MULTIPLIER:I = 0x2

.field private static final MIN_FONT_SIZE:I = 0xc

.field private static final paint:Landroid/graphics/Paint;


# instance fields
.field private final bold:Z

.field private color:I

.field private final explicitColor:Z

.field private final size:I

.field private final underlined:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->paint:Landroid/graphics/Paint;

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public constructor <init>(IZZIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->color:I

    iput p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->size:I

    iput-boolean p2, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->bold:Z

    iput-boolean p3, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->underlined:Z

    iput-boolean p5, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->explicitColor:Z

    iput p4, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->color:I

    return-void
.end method

.method private static getCanvas(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;)Landroid/graphics/Canvas;
    .locals 1

    check-cast p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidGraphics;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidGraphics;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method private getPaint()Landroid/graphics/Paint;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->explicitColor:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->color:I

    const/high16 v2, -0x100

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->paint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->bold:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->paint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->underlined:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->getSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->paint:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public charWidth(C)I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [F

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    new-array v2, v4, [C

    aput-char p1, v2, v3

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    aget v0, v0, v3

    float-to-int v0, v0

    return v0
.end method

.method public charsWidth([CII)I
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public drawChars(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;[CIIII)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->getCanvas(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;)Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v4, p5

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v1, p6, v1

    int-to-float v5, v1

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawString(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;Ljava/lang/String;II)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->getCanvas(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;)Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, p3

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v2, p4, v2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawSubstring(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;Ljava/lang/String;IIII)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->getCanvas(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;)Landroid/graphics/Canvas;

    move-result-object v0

    add-int v3, p3, p4

    int-to-float v4, p5

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v1, p6, v1

    int-to-float v5, v1

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getBaselinePosition()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    return v0
.end method

.method public getBold()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->bold:Z

    return v0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->color:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->size:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getUnderlined()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->underlined:Z

    return v0
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->color:I

    return-void
.end method

.method public stringWidth(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->substringWidth(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public substringWidth(Ljava/lang/String;II)I
    .locals 2

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidFont;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    add-int v1, p2, p3

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
