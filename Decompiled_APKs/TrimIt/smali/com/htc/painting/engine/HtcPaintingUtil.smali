.class public Lcom/htc/painting/engine/HtcPaintingUtil;
.super Ljava/lang/Object;
.source "HtcPaintingUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcPaintingUtil"

.field private static final sClearPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/htc/painting/engine/HtcPaintingUtil;->sClearPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToInt([B)I
    .locals 3
    .parameter "bytes"

    .prologue
    .line 178
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int v0, v1, v2

    .line 181
    .local v0, result:I
    return v0
.end method

.method public static byteArrayToShort([B)S
    .locals 3
    .parameter "bytes"

    .prologue
    .line 173
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    int-to-short v0, v1

    .line 174
    .local v0, result:S
    return v0
.end method

.method public static byteArraytoLong([B)J
    .locals 6
    .parameter "bytes"

    .prologue
    const/4 v5, 0x0

    .line 185
    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static convertToPaint(Lcom/htc/painting/engine/StrokeProperties;)Landroid/graphics/Paint;
    .locals 3
    .parameter "dp"

    .prologue
    const/4 v2, 0x1

    .line 159
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 160
    .local v0, result:Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    invoke-virtual {p0}, Lcom/htc/painting/engine/StrokeProperties;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    invoke-virtual {p0}, Lcom/htc/painting/engine/StrokeProperties;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 163
    invoke-virtual {p0}, Lcom/htc/painting/engine/StrokeProperties;->getCap()Landroid/graphics/Paint$Cap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 164
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 166
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    return-object v0
.end method

.method public static drawUtil(Landroid/graphics/Bitmap;IILcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/AbsSerializeDAO;)Z
    .locals 3
    .parameter "bitmap"
    .parameter "groupId"
    .parameter "strokeId"
    .parameter "viewPort"
    .parameter "serializeDAO"

    .prologue
    .line 118
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 120
    :cond_0
    const-string v1, "HtcPaintingUtil"

    const-string v2, "drawUtil(), bitmap == null || strokeGroupId == null || absHtcPaintingViewPort == null || serializeDAO == null"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v1, 0x0

    .line 125
    :goto_0
    return v1

    .line 124
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-static {p1, p3, p4}, Lcom/htc/painting/engine/HtcPaintingUtil;->requestStrokeGroupFromSerialDAO(ILcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/AbsSerializeDAO;)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/htc/painting/engine/HtcPaintingUtil;->drawUtil(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;ILcom/htc/painting/engine/ViewPort;)Z

    move-result v1

    goto :goto_0
.end method

.method public static drawUtil(Landroid/graphics/Bitmap;ILcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/AbsSerializeDAO;)Z
    .locals 3
    .parameter "bitmap"
    .parameter "groupId"
    .parameter "viewPort"
    .parameter "serializeDAO"

    .prologue
    .line 91
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 93
    :cond_0
    const-string v1, "HtcPaintingUtil"

    const-string v2, "drawUtil(), bitmap == null || strokeGroupId == null || absHtcPaintingViewPort == null || serializeDAO == null"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const/4 v1, 0x0

    .line 98
    :goto_0
    return v1

    .line 97
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 98
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-static {p1, p2, p3}, Lcom/htc/painting/engine/HtcPaintingUtil;->requestStrokeGroupFromSerialDAO(ILcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/AbsSerializeDAO;)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/htc/painting/engine/HtcPaintingUtil;->drawUtil(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;Lcom/htc/painting/engine/ViewPort;)Z

    move-result v1

    goto :goto_0
.end method

.method public static drawUtil(Landroid/graphics/Bitmap;[I[Lcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/AbsSerializeDAO;)Z
    .locals 5
    .parameter "bitmap"
    .parameter "groupIds"
    .parameter "viewPorts"
    .parameter "serializeDAO"

    .prologue
    const/4 v2, 0x0

    .line 58
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 60
    :cond_0
    const-string v3, "HtcPaintingUtil"

    const-string v4, "drawUtil(), bitmap == null || drawerGroupIds == null || absHtcPaintingViewPorts == null || serializeDAO == null"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_1
    :goto_0
    return v2

    .line 62
    :cond_2
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_3

    .line 63
    const-string v3, "HtcPaintingUtil"

    const-string v4, "drawUtil(), drawerGroupIds.length != absHtcPaintingViewPorts.length"

    invoke-static {v3, v4}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 67
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x1

    .line 68
    .local v2, returnValue:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 69
    aget v3, p1, v1

    aget-object v4, p2, v1

    invoke-static {v3, v4, p3}, Lcom/htc/painting/engine/HtcPaintingUtil;->requestStrokeGroupFromSerialDAO(ILcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/AbsSerializeDAO;)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v3

    aget-object v4, p2, v1

    invoke-static {v0, v3, v4}, Lcom/htc/painting/engine/HtcPaintingUtil;->drawUtil(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;Lcom/htc/painting/engine/ViewPort;)Z

    move-result v3

    and-int/2addr v2, v3

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static drawUtil(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;ILcom/htc/painting/engine/ViewPort;)Z
    .locals 2
    .parameter "canvas"
    .parameter "group"
    .parameter "strokeId"
    .parameter "viewPort"

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p1, p3}, Lcom/htc/painting/engine/StrokeGroup;->setViewPort(Lcom/htc/painting/engine/ViewPort;)V

    .line 147
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 149
    invoke-virtual {p1, p0, p2}, Lcom/htc/painting/engine/StrokeGroup;->draw(Landroid/graphics/Canvas;I)V

    .line 150
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 151
    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    .line 153
    :cond_0
    const-string v0, "HtcPaintingUtil"

    const-string v1, "drawUtil(), strokeGroup == null"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static drawUtil(Landroid/graphics/Canvas;Lcom/htc/painting/engine/StrokeGroup;Lcom/htc/painting/engine/ViewPort;)Z
    .locals 3
    .parameter "canvas"
    .parameter "group"
    .parameter "viewPort"

    .prologue
    const/4 v0, 0x0

    .line 131
    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1, p2}, Lcom/htc/painting/engine/StrokeGroup;->setViewPort(Lcom/htc/painting/engine/ViewPort;)V

    .line 133
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 134
    invoke-virtual {p1, p0, v0}, Lcom/htc/painting/engine/StrokeGroup;->draw(Landroid/graphics/Canvas;Z)V

    .line 135
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 136
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    .line 138
    :cond_0
    const-string v1, "HtcPaintingUtil"

    const-string v2, "drawUtil(), strokeGroup == null"

    invoke-static {v1, v2}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getClearPaint()Landroid/graphics/Paint;
    .locals 3

    .prologue
    .line 288
    sget-object v0, Lcom/htc/painting/engine/HtcPaintingUtil;->sClearPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 290
    sget-object v0, Lcom/htc/painting/engine/HtcPaintingUtil;->sClearPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static getInvertedPoint([FLandroid/graphics/Matrix;)[F
    .locals 3
    .parameter "originalPoint"
    .parameter "matrix"

    .prologue
    .line 255
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 256
    .local v1, mappedPoint:[F
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 257
    .local v0, inverse:Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 259
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 260
    return-object v1
.end method

.method public static intToByteArray(I[B)V
    .locals 2
    .parameter "value"
    .parameter "dest"

    .prologue
    .line 207
    const/4 v0, 0x0

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 208
    const/4 v0, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 209
    const/4 v0, 0x2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 210
    const/4 v0, 0x3

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 211
    return-void
.end method

.method public static intToByteArray(I)[B
    .locals 3
    .parameter "value"

    .prologue
    .line 197
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 198
    .local v0, result:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 199
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 200
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 201
    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 203
    return-object v0
.end method

.method public static longToByteArray(J[B)V
    .locals 3
    .parameter "value"
    .parameter "dest"

    .prologue
    .line 239
    const/4 v0, 0x0

    const/16 v1, 0x38

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 240
    const/4 v0, 0x1

    const/16 v1, 0x30

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 241
    const/4 v0, 0x2

    const/16 v1, 0x28

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 242
    const/4 v0, 0x3

    const/16 v1, 0x20

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 243
    const/4 v0, 0x4

    const/16 v1, 0x18

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 244
    const/4 v0, 0x5

    const/16 v1, 0x10

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 245
    const/4 v0, 0x6

    const/16 v1, 0x8

    shr-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 246
    const/4 v0, 0x7

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 247
    return-void
.end method

.method public static longToByteArray(J)[B
    .locals 5
    .parameter "value"

    .prologue
    const/16 v4, 0x8

    .line 226
    new-array v0, v4, [B

    .line 227
    .local v0, result:[B
    const/4 v1, 0x0

    const/16 v2, 0x38

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 228
    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 229
    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 230
    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 231
    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 232
    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 233
    const/4 v1, 0x6

    shr-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 234
    const/4 v1, 0x7

    long-to-int v2, p0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 235
    return-object v0
.end method

.method public static recordReference(Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;Lcom/htc/painting/engine/StrokeGroup;Lcom/htc/painting/engine/ViewPort;Landroid/graphics/Matrix;)V
    .locals 3
    .parameter "data"
    .parameter "group"
    .parameter "viewport"
    .parameter "matrix"

    .prologue
    .line 274
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    if-eqz p2, :cond_0

    .line 277
    invoke-virtual {p2}, Lcom/htc/painting/engine/ViewPort;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 278
    .local v0, rectangle:Landroid/graphics/RectF;
    invoke-interface {p0, v0}, Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;->intersects(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {p1}, Lcom/htc/painting/engine/StrokeGroup;->getModificationIndex()J

    move-result-wide v1

    invoke-interface {p0, v1, v2}, Lcom/htc/painting/engine/cachebitmap/ICacheBitmapData;->setDrawingStamp(J)V

    goto :goto_0
.end method

.method private static requestStrokeGroupFromSerialDAO(ILcom/htc/painting/engine/ViewPort;Lcom/htc/painting/engine/AbsSerializeDAO;)Lcom/htc/painting/engine/StrokeGroup;
    .locals 5
    .parameter "groupId"
    .parameter "viewport"
    .parameter "serializeDAO"

    .prologue
    const/4 v1, 0x0

    .line 28
    if-ltz p0, :cond_0

    if-nez p2, :cond_1

    .line 29
    :cond_0
    const-string v2, "HtcPaintingUtil"

    const-string v3, "requestStrokeGroupFromSerialDAO(), strokeGroupId == null || serializeDAO == null"

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :goto_0
    return-object v1

    .line 32
    :cond_1
    invoke-virtual {p2, p0}, Lcom/htc/painting/engine/AbsSerializeDAO;->load(I)[B

    move-result-object v0

    .line 33
    .local v0, serializedByteArray:[B
    if-eqz v0, :cond_2

    .line 34
    new-instance v1, Lcom/htc/painting/engine/StrokeGroup;

    invoke-direct {v1, p0, p1}, Lcom/htc/painting/engine/StrokeGroup;-><init>(ILcom/htc/painting/engine/ViewPort;)V

    invoke-virtual {v1, v0}, Lcom/htc/painting/engine/StrokeGroup;->deserialize([B)Lcom/htc/painting/engine/StrokeGroup;

    move-result-object v1

    goto :goto_0

    .line 37
    :cond_2
    const-string v2, "HtcPaintingUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serializeDAO.load("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") == null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/painting/util/PaintingLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static shortToByteArray(S[B)V
    .locals 2
    .parameter "value"
    .parameter "dest"

    .prologue
    .line 221
    const/4 v0, 0x0

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 222
    const/4 v0, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 223
    return-void
.end method

.method public static shortToByteArray(S)[B
    .locals 3
    .parameter "value"

    .prologue
    .line 214
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 215
    .local v0, result:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 216
    const/4 v1, 0x1

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 217
    return-object v0
.end method
