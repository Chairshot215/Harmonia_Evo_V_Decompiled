.class public Lcom/google/android/finsky/exploreactivity/DrawingUtils;
.super Ljava/lang/Object;
.source "DrawingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/exploreactivity/DrawingUtils$2;,
        Lcom/google/android/finsky/exploreactivity/DrawingUtils$PoolingImageRequest;,
        Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;
    }
.end annotation


# static fields
.field private static final BASE_PLANE:Lcom/jme3/math/Plane;

.field public static final UNIT_QUAD:Lcom/jme3/scene/Mesh;

.field public static final UNIT_X:Lcom/jme3/math/Vector2f;

.field private static final sDecodeLock:Ljava/lang/Object;


# instance fields
.field private final click3d:Lcom/jme3/math/Vector3f;

.field private final dir:Lcom/jme3/math/Vector3f;

.field private final intersectionPoint:Lcom/jme3/math/Vector3f;

.field private final inverseMatrix:Lcom/jme3/math/Matrix4f;

.field private mBitmapPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapPoolBytes:I

.field private final mEdgeLineGlowWidth:F

.field private final mEdgeLineWidth:F

.field private final mGlowBackgroundColor:I

.field private final mGlowForegroundColor:I

.field private final mGlowingLineMaterial:Lcom/jme3/material/Material;

.field private final mInvisibleTexture:Lcom/jme3/material/Material;

.field private final mLineForegroundColor:I

.field private final mMaxBitmapPoolBytes:I

.field public final mNodeBitmapSize:F

.field private final mNodeGlowMaterial:Lcom/jme3/material/Material;

.field private final mNodeGlowOutlineWidth:F

.field public final mNodeGlowWidth:F

.field private final mUnshadedMaterial:Lcom/jme3/material/Material;

.field private final quat:Lcom/jme3/math/Quaternion;

.field private final ray:Lcom/jme3/math/Ray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 67
    new-instance v0, Lcom/jme3/math/Plane;

    sget-object v1, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v3}, Lcom/jme3/math/Plane;-><init>(Lcom/jme3/math/Vector3f;F)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->BASE_PLANE:Lcom/jme3/math/Plane;

    .line 73
    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0, v2, v3}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->UNIT_X:Lcom/jme3/math/Vector2f;

    .line 75
    new-instance v0, Lcom/jme3/scene/shape/Quad;

    invoke-direct {v0, v2, v2}, Lcom/jme3/scene/shape/Quad;-><init>(FF)V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->UNIT_QUAD:Lcom/jme3/scene/Mesh;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->sDecodeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;Landroid/content/res/Resources;I)V
    .locals 5
    .parameter "assetManager"
    .parameter "res"
    .parameter "maxBitmapPoolBytes"

    .prologue
    const/4 v4, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    .line 147
    iput v4, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPoolBytes:I

    .line 152
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->click3d:Lcom/jme3/math/Vector3f;

    .line 153
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    .line 154
    new-instance v1, Lcom/jme3/math/Ray;

    invoke-direct {v1}, Lcom/jme3/math/Ray;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->ray:Lcom/jme3/math/Ray;

    .line 155
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->intersectionPoint:Lcom/jme3/math/Vector3f;

    .line 156
    new-instance v1, Lcom/jme3/math/Quaternion;

    invoke-direct {v1}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->quat:Lcom/jme3/math/Quaternion;

    .line 157
    new-instance v1, Lcom/jme3/math/Matrix4f;

    invoke-direct {v1}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->inverseMatrix:Lcom/jme3/math/Matrix4f;

    .line 160
    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 162
    .local v0, dpiScaleFactor:F
    const/high16 v1, 0x3fc0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 163
    const/high16 v0, 0x3f80

    .line 165
    :cond_0
    const v1, 0x7f0c001a

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeBitmapSize:F

    .line 166
    const v1, 0x7f0c001c

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeGlowWidth:F

    .line 167
    const v1, 0x7f0a0042

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mGlowBackgroundColor:I

    .line 168
    const v1, 0x7f0a0043

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mGlowForegroundColor:I

    .line 169
    const v1, 0x7f0a0044

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mLineForegroundColor:I

    .line 170
    const v1, 0x7f0c001f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeGlowOutlineWidth:F

    .line 171
    const v1, 0x7f0c001d

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mEdgeLineGlowWidth:F

    .line 172
    const v1, 0x7f0c001e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mEdgeLineWidth:F

    .line 173
    new-instance v1, Lcom/jme3/material/Material;

    const-string v2, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v1, p1, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mUnshadedMaterial:Lcom/jme3/material/Material;

    .line 174
    invoke-virtual {p0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->createLineBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->convertBitmapToMaterial(Landroid/graphics/Bitmap;Z)Lcom/jme3/material/Material;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mGlowingLineMaterial:Lcom/jme3/material/Material;

    .line 175
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mGlowingLineMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v1}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    sget-object v2, Lcom/jme3/material/RenderState$BlendMode;->AlphaAdditive:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1, v2}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    .line 176
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getUnshadedMaterial()Lcom/jme3/material/Material;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mInvisibleTexture:Lcom/jme3/material/Material;

    .line 177
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mInvisibleTexture:Lcom/jme3/material/Material;

    const-string v2, "Color"

    sget-object v3, Lcom/jme3/math/ColorRGBA;->BlackNoAlpha:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    .line 178
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mInvisibleTexture:Lcom/jme3/material/Material;

    invoke-virtual {v1}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    sget-object v2, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1, v2}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    .line 179
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->createGlowBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->convertBitmapToMaterial(Landroid/graphics/Bitmap;Z)Lcom/jme3/material/Material;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeGlowMaterial:Lcom/jme3/material/Material;

    .line 180
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeGlowMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v1}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    sget-object v2, Lcom/jme3/material/RenderState$BlendMode;->AlphaAdditive:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1, v2}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    .line 181
    iput p3, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mMaxBitmapPoolBytes:I

    .line 182
    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->sDecodeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/exploreactivity/DrawingUtils;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private convertBlueToAlpha(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "bitmap"

    .prologue
    .line 503
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 504
    const/4 v3, 0x0

    .local v3, y:I
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 505
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 506
    .local v0, pix:I
    and-int/lit16 v1, v0, 0xff

    .line 507
    .local v1, v:I
    shl-int/lit8 v4, v1, 0x18

    const v5, 0xffffff

    or-int v0, v4, v5

    .line 508
    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 504
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 503
    .end local v0           #pix:I
    .end local v1           #v:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 511
    .end local v3           #y:I
    :cond_1
    return-void
.end method

.method private createGlowBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/high16 v7, 0x4000

    .line 453
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeBitmapSize:F

    div-float v3, v6, v7

    .line 454
    .local v3, innerRadius:F
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeGlowWidth:F

    add-float v4, v3, v6

    .line 455
    .local v4, outerRadius:F
    mul-float v6, v4, v7

    float-to-int v1, v6

    .line 456
    .local v1, bitmapSize:I
    invoke-direct {p0, v1, v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 457
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mGlowBackgroundColor:I

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 458
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 459
    .local v2, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 460
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 461
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 462
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeGlowOutlineWidth:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 463
    new-instance v6, Landroid/graphics/BlurMaskFilter;

    sub-float v7, v4, v3

    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v6, v7, v8}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 464
    iget v6, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mGlowForegroundColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 465
    invoke-virtual {v2, v4, v4, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 466
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 467
    invoke-virtual {v2, v4, v4, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 468
    invoke-direct {p0, v0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->convertBlueToAlpha(Landroid/graphics/Bitmap;)V

    .line 469
    return-object v0
.end method

.method private getAngle(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 518
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    iget v2, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v3, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/jme3/math/Vector3f;->x:F

    .line 519
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    iget v2, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/jme3/math/Vector3f;->y:F

    .line 520
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    iget v2, p2, Lcom/jme3/math/Vector3f;->z:F

    iget v3, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/jme3/math/Vector3f;->z:F

    .line 521
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    .line 522
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    sget-object v2, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->angleBetween(Lcom/jme3/math/Vector3f;)F

    move-result v0

    .line 523
    .local v0, ang:F
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 524
    neg-float v0, v0

    .line 526
    :cond_0
    return v0
.end method

.method private getBitmap(II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "w"
    .parameter "h"

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 289
    .local v1, b:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    monitor-enter v5

    .line 290
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 291
    iget-object v4, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 292
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    invoke-direct {p0, v3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->removeBitmapFromPool(I)Landroid/graphics/Bitmap;

    .line 294
    const-string v4, "recycled"

    invoke-direct {p0, v1, v4}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->poolLog(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 295
    add-int/lit8 v3, v3, -0x1

    .line 290
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v4, p2, :cond_2

    .line 297
    invoke-direct {p0, v3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->removeBitmapFromPool(I)Landroid/graphics/Bitmap;

    .line 298
    const-string v4, "hit"

    invoke-direct {p0, v1, v4}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->poolLog(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 304
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    if-eqz v1, :cond_3

    .line 306
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    move-object v2, v1

    .line 311
    .end local v1           #b:Landroid/graphics/Bitmap;
    .local v2, b:Landroid/graphics/Bitmap;
    :goto_2
    return-object v2

    .line 301
    .end local v2           #b:Landroid/graphics/Bitmap;
    .restart local v1       #b:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 304
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 309
    :cond_3
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 310
    const-string v4, "miss"

    invoke-direct {p0, v1, v4}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->poolLog(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    move-object v2, v1

    .line 311
    .end local v1           #b:Landroid/graphics/Bitmap;
    .restart local v2       #b:Landroid/graphics/Bitmap;
    goto :goto_2
.end method

.method public static getPolyCenter([Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)V
    .locals 9
    .parameter "poly"
    .parameter "center"

    .prologue
    const/high16 v8, 0x4000

    .line 597
    const/high16 v4, 0x7f80

    .line 598
    .local v4, minX:F
    const/high16 v2, -0x80

    .line 599
    .local v2, maxX:F
    const/high16 v5, 0x7f80

    .line 600
    .local v5, minY:F
    const/high16 v3, -0x80

    .line 601
    .local v3, maxY:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, p0

    if-ge v1, v7, :cond_0

    .line 602
    aget-object v7, p0, v1

    iget v7, v7, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 603
    aget-object v7, p0, v1

    iget v7, v7, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 604
    aget-object v7, p0, v1

    iget v7, v7, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 605
    aget-object v7, p0, v1

    iget v7, v7, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 601
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    :cond_0
    sub-float v6, v2, v4

    .line 608
    .local v6, width:F
    sub-float v0, v3, v5

    .line 609
    .local v0, height:F
    div-float v7, v6, v8

    add-float/2addr v7, v4

    iput v7, p1, Lcom/jme3/math/Vector2f;->x:F

    .line 610
    div-float v7, v0, v8

    add-float/2addr v7, v5

    iput v7, p1, Lcom/jme3/math/Vector2f;->y:F

    .line 611
    return-void
.end method

.method public static getPolySize([Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)V
    .locals 6
    .parameter "poly"
    .parameter "size"

    .prologue
    .line 618
    const v3, 0x7f7fffff

    .line 619
    .local v3, minX:F
    const/4 v1, 0x1

    .line 620
    .local v1, maxX:F
    const v4, 0x7f7fffff

    .line 621
    .local v4, minY:F
    const/4 v2, 0x1

    .line 622
    .local v2, maxY:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_0

    .line 623
    aget-object v5, p0, v0

    iget v5, v5, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 624
    aget-object v5, p0, v0

    iget v5, v5, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 625
    aget-object v5, p0, v0

    iget v5, v5, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 626
    aget-object v5, p0, v0

    iget v5, v5, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    :cond_0
    sub-float v5, v1, v3

    iput v5, p1, Lcom/jme3/math/Vector2f;->x:F

    .line 629
    sub-float v5, v2, v4

    iput v5, p1, Lcom/jme3/math/Vector2f;->y:F

    .line 630
    return-void
.end method

.method private getUnshadedMaterial()Lcom/jme3/material/Material;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mUnshadedMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->clone()Lcom/jme3/material/Material;

    move-result-object v0

    return-object v0
.end method

.method private getWorldCoordinates(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)V
    .locals 7
    .parameter "cam"
    .parameter "screenPosition"
    .parameter "zPos"
    .parameter "worldPosition"

    .prologue
    const/high16 v6, 0x4000

    const/high16 v5, 0x3f80

    .line 546
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->inverseMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewProjectionMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 547
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->inverseMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    .line 549
    iget v1, p2, Lcom/jme3/math/Vector2f;->x:F

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortLeft()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortLeft()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    mul-float/2addr v1, v6

    sub-float/2addr v1, v5

    iget v2, p2, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortBottom()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortTop()F

    move-result v3

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewPortBottom()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    mul-float/2addr v2, v6

    sub-float/2addr v2, v5

    mul-float v3, p3, v6

    sub-float/2addr v3, v5

    invoke-virtual {p4, v1, v2, v3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 555
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->inverseMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1, p4, p4}, Lcom/jme3/math/Matrix4f;->multProj(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    move-result v0

    .line 556
    .local v0, w:F
    div-float v1, v5, v0

    invoke-virtual {p4, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    .line 557
    return-void
.end method

.method private poolLog(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 11
    .parameter "b"
    .parameter "action"

    .prologue
    .line 375
    sget-boolean v6, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-nez v6, :cond_0

    .line 398
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v7, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    monitor-enter v7

    .line 379
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 380
    .local v2, histogram:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 381
    .local v0, bb:Landroid/graphics/Bitmap;
    const-string v6, "%dx%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 382
    .local v5, size:Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 383
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 397
    .end local v0           #bb:Landroid/graphics/Bitmap;
    .end local v2           #histogram:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #size:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 385
    .restart local v0       #bb:Landroid/graphics/Bitmap;
    .restart local v2       #histogram:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #size:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 388
    .end local v0           #bb:Landroid/graphics/Bitmap;
    .end local v5           #size:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .local v4, s:Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 390
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 395
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    const-string v6, "Pool %10s: %3dx%3d, now %2s/%8s: %s"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget v10, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPoolBytes:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private removeBitmapFromPool(I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "pos"

    .prologue
    .line 405
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 406
    .local v0, b:Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPoolBytes:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v3

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPoolBytes:I

    .line 407
    return-object v0
.end method


# virtual methods
.method convertBitmapToMaterial(Landroid/graphics/Bitmap;Z)Lcom/jme3/material/Material;
    .locals 7
    .parameter "inBitmap"
    .parameter "flipVertical"

    .prologue
    const/4 v3, 0x0

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 215
    .local v4, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 218
    .local v1, height:I
    sget-object v5, Lcom/google/android/finsky/exploreactivity/DrawingUtils$2;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 243
    :goto_0
    return-object v3

    .line 220
    :pswitch_0
    sget-object v0, Lcom/jme3/texture/Image$Format;->Alpha8:Lcom/jme3/texture/Image$Format;

    .line 235
    .local v0, fmt:Lcom/jme3/texture/Image$Format;
    :goto_1
    new-instance v2, Lcom/jme3/texture/Image;

    invoke-direct {v2, v0, v4, v1, v3}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;)V

    .line 236
    .local v2, image:Lcom/jme3/texture/Image;
    new-instance v5, Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;

    invoke-direct {v5, p0, p1, p2, v3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;-><init>(Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/graphics/Bitmap;ZLcom/google/android/finsky/exploreactivity/DrawingUtils$1;)V

    invoke-virtual {v2, v5}, Lcom/jme3/texture/Image;->setEfficentData(Ljava/lang/Object;)V

    .line 238
    invoke-direct {p0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getUnshadedMaterial()Lcom/jme3/material/Material;

    move-result-object v3

    .line 239
    .local v3, material:Lcom/jme3/material/Material;
    const-string v5, "ColorMap"

    new-instance v6, Lcom/jme3/texture/Texture2D;

    invoke-direct {v6, v2}, Lcom/jme3/texture/Texture2D;-><init>(Lcom/jme3/texture/Image;)V

    invoke-virtual {v3, v5, v6}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    .line 240
    invoke-virtual {v3}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v5

    sget-object v6, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v5, v6}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    .line 241
    invoke-virtual {v3}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/jme3/material/RenderState;->setAlphaTest(Z)V

    .line 242
    invoke-virtual {v3}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v5

    const v6, 0x3dcccccd

    invoke-virtual {v5, v6}, Lcom/jme3/material/RenderState;->setAlphaFallOff(F)V

    goto :goto_0

    .line 223
    .end local v0           #fmt:Lcom/jme3/texture/Image$Format;
    .end local v2           #image:Lcom/jme3/texture/Image;
    .end local v3           #material:Lcom/jme3/material/Material;
    :pswitch_1
    sget-object v0, Lcom/jme3/texture/Image$Format;->ARGB4444:Lcom/jme3/texture/Image$Format;

    .line 224
    .restart local v0       #fmt:Lcom/jme3/texture/Image$Format;
    goto :goto_1

    .line 226
    .end local v0           #fmt:Lcom/jme3/texture/Image$Format;
    :pswitch_2
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    .line 227
    .restart local v0       #fmt:Lcom/jme3/texture/Image$Format;
    goto :goto_1

    .line 229
    .end local v0           #fmt:Lcom/jme3/texture/Image$Format;
    :pswitch_3
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGB565:Lcom/jme3/texture/Image$Format;

    .line 230
    .restart local v0       #fmt:Lcom/jme3/texture/Image$Format;
    goto :goto_1

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method createLineBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/high16 v8, 0x3f00

    .line 477
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mEdgeLineGlowWidth:F

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mEdgeLineWidth:F

    add-float/2addr v2, v3

    float-to-int v7, v2

    .line 478
    .local v7, bitmapSize:I
    invoke-direct {p0, v7, v7}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 479
    .local v6, bitmap:Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mGlowBackgroundColor:I

    invoke-virtual {v6, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 480
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 481
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 482
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 483
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 484
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mEdgeLineWidth:F

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 485
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mEdgeLineGlowWidth:F

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 486
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mGlowForegroundColor:I

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 487
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mEdgeLineGlowWidth:F

    sub-float/2addr v2, v8

    int-to-float v3, v7

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mEdgeLineGlowWidth:F

    add-float/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 489
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 490
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mLineForegroundColor:I

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 491
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mEdgeLineGlowWidth:F

    sub-float/2addr v2, v8

    int-to-float v3, v7

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mEdgeLineGlowWidth:F

    add-float/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 493
    invoke-direct {p0, v6}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->convertBlueToAlpha(Landroid/graphics/Bitmap;)V

    .line 494
    return-object v6
.end method

.method public createNodeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "bitmap"

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 422
    .local v13, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 423
    .local v8, height:I
    invoke-static {v13, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 425
    .local v4, size:I
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 426
    .local v6, flipMat:Landroid/graphics/Matrix;
    const/high16 v0, 0x3f80

    const/high16 v1, -0x4080

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 427
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeBitmapSize:F

    int-to-float v1, v4

    div-float v12, v0, v1

    .line 428
    .local v12, scale:F
    invoke-virtual {v6, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 429
    sub-int v0, v13, v4

    div-int/lit8 v2, v0, 0x2

    sub-int v0, v8, v4

    div-int/lit8 v3, v0, 0x2

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->transformBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 432
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 433
    .local v9, paint:Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 435
    .local v7, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 436
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 437
    int-to-float v0, v4

    const/high16 v1, 0x4000

    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float v10, v0, v1

    .line 438
    .local v10, r1:F
    int-to-float v0, v4

    const/high16 v1, 0x4000

    div-float v11, v0, v1

    .line 439
    .local v11, r2:F
    sub-float v0, v10, v11

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 440
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 441
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 442
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 443
    int-to-float v0, v4

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    int-to-float v1, v4

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float v2, v10, v11

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-virtual {v7, v0, v1, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 445
    return-object p1
.end method

.method public createViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "view"

    .prologue
    .line 585
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 586
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 587
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 588
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 589
    return-object v0
.end method

.method public getBasePlaneCoords(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;)V
    .locals 3
    .parameter "cam"
    .parameter "screenCoords"
    .parameter "worldCoords"

    .prologue
    .line 570
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->click3d:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getWorldCoordinates(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)V

    .line 571
    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getWorldCoordinates(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)V

    .line 572
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->click3d:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Vector3f;->x:F

    .line 573
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->click3d:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Vector3f;->y:F

    .line 574
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->click3d:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Vector3f;->z:F

    .line 576
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->ray:Lcom/jme3/math/Ray;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->click3d:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Ray;->setOrigin(Lcom/jme3/math/Vector3f;)V

    .line 577
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->ray:Lcom/jme3/math/Ray;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->dir:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Ray;->setDirection(Lcom/jme3/math/Vector3f;)V

    .line 578
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->ray:Lcom/jme3/math/Ray;

    sget-object v1, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->BASE_PLANE:Lcom/jme3/math/Plane;

    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->intersectionPoint:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Ray;->intersectsWherePlane(Lcom/jme3/math/Plane;Lcom/jme3/math/Vector3f;)Z

    .line 579
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->intersectionPoint:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    iput v0, p3, Lcom/jme3/math/Vector2f;->x:F

    .line 580
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->intersectionPoint:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    iput v0, p3, Lcom/jme3/math/Vector2f;->y:F

    .line 581
    return-void
.end method

.method public getGlowingLineMaterial()Lcom/jme3/material/Material;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mGlowingLineMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->clone()Lcom/jme3/material/Material;

    move-result-object v0

    return-object v0
.end method

.method public getInvisibleMaterial()Lcom/jme3/material/Material;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mInvisibleTexture:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public getNodeGlowMaterial()Lcom/jme3/material/Material;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeGlowMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->clone()Lcom/jme3/material/Material;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailRequest(Lcom/google/android/finsky/exploreactivity/DocWrapper;Lcom/android/volley/Request$Priority;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter "docWrapper"
    .parameter "priority"
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/exploreactivity/DocWrapper;",
            "Lcom/android/volley/Request$Priority;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 683
    invoke-virtual {p1}, Lcom/google/android/finsky/exploreactivity/DocWrapper;->getDoc()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mNodeBitmapSize:F

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getCroppedIconUrlFromDocument(Lcom/google/android/finsky/api/model/Document;I)Ljava/lang/String;

    move-result-object v2

    .line 685
    .local v2, url:Ljava/lang/String;
    new-instance v0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$PoolingImageRequest;

    new-instance v4, Lcom/google/android/finsky/exploreactivity/DrawingUtils$1;

    invoke-direct {v4, p0, p1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils$1;-><init>(Lcom/google/android/finsky/exploreactivity/DrawingUtils;Lcom/google/android/finsky/exploreactivity/DocWrapper;)V

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/exploreactivity/DrawingUtils$PoolingImageRequest;-><init>(Lcom/google/android/finsky/exploreactivity/DrawingUtils;Ljava/lang/String;Lcom/android/volley/Request$Priority;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-object v0
.end method

.method public hasBitmapTexture(Lcom/jme3/scene/Geometry;)Z
    .locals 2
    .parameter "g"

    .prologue
    .line 412
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    const-string v1, "ColorMap"

    invoke-virtual {v0, v1}, Lcom/jme3/material/Material;->getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "b"

    .prologue
    .line 361
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    monitor-enter v1

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPoolBytes:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPoolBytes:I

    .line 365
    const-string v0, "return"

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->poolLog(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 366
    :goto_0
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPoolBytes:I

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mMaxBitmapPoolBytes:I

    if-le v0, v2, :cond_0

    .line 367
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->removeBitmapFromPool(I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 368
    const-string v0, "overrun"

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->poolLog(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    :cond_1
    return-void
.end method

.method public recycleMaterial(Lcom/jme3/scene/Geometry;)V
    .locals 7
    .parameter "g"

    .prologue
    .line 331
    if-nez p1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v2

    .line 335
    .local v2, mat:Lcom/jme3/material/Material;
    iget-object v6, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mInvisibleTexture:Lcom/jme3/material/Material;

    invoke-virtual {p1, v6}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    .line 337
    if-eqz v2, :cond_0

    .line 340
    const-string v6, "ColorMap"

    invoke-virtual {v2, v6}, Lcom/jme3/material/Material;->getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v3

    .line 341
    .local v3, mp:Lcom/jme3/material/MatParam;
    if-eqz v3, :cond_0

    .line 344
    invoke-virtual {v3}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 345
    .local v4, o:Ljava/lang/Object;
    instance-of v6, v4, Lcom/jme3/texture/Texture;

    if-eqz v6, :cond_0

    .line 348
    check-cast v4, Lcom/jme3/texture/Texture;

    .end local v4           #o:Ljava/lang/Object;
    invoke-virtual {v4}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v1

    .line 349
    .local v1, i:Lcom/jme3/texture/Image;
    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {v1}, Lcom/jme3/texture/Image;->getEfficentData()Ljava/lang/Object;

    move-result-object v5

    .line 353
    .local v5, oo:Ljava/lang/Object;
    instance-of v6, v5, Lcom/jme3/asset/AndroidImageInfo;

    if-eqz v6, :cond_0

    .line 356
    check-cast v5, Lcom/jme3/asset/AndroidImageInfo;

    .end local v5           #oo:Ljava/lang/Object;
    invoke-virtual {v5}, Lcom/jme3/asset/AndroidImageInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 357
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setupLine(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 4
    .parameter "geom"
    .parameter "start"
    .parameter "end"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 534
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->quat:Lcom/jme3/math/Quaternion;

    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getAngle(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    move-result v1

    invoke-virtual {v0, v2, v2, v1}, Lcom/jme3/math/Quaternion;->fromAngles(FFF)Lcom/jme3/math/Quaternion;

    .line 535
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->quat:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    .line 536
    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    .line 537
    invoke-virtual {p2, p3}, Lcom/jme3/math/Vector3f;->distance(Lcom/jme3/math/Vector3f;)F

    move-result v0

    invoke-virtual {p1, v0, v3, v3}, Lcom/jme3/scene/Spatial;->setLocalScale(FFF)V

    .line 538
    return-void
.end method

.method transformBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "m"

    .prologue
    .line 252
    move/from16 v6, p4

    .line 253
    .local v6, neww:I
    move/from16 v5, p5

    .line 254
    .local v5, newh:I
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 258
    .local v2, canvas:Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, p2, p4

    add-int v10, p3, p5

    move/from16 v0, p3

    invoke-direct {v8, p2, v0, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 259
    .local v8, srcR:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v0, p4

    int-to-float v11, v0

    move/from16 v0, p5

    int-to-float v12, v0

    invoke-direct {v4, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 261
    .local v4, dstR:Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 262
    .local v3, deviceR:Landroid/graphics/RectF;
    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 264
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 265
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 267
    invoke-direct {p0, v6, v5}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 269
    .local v1, bitmap:Landroid/graphics/Bitmap;
    iget v9, v3, Landroid/graphics/RectF;->left:F

    neg-float v9, v9

    iget v10, v3, Landroid/graphics/RectF;->top:F

    neg-float v10, v10

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 270
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 272
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 276
    .local v7, paint:Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 278
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 279
    invoke-virtual {v2, p1, v8, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 281
    return-object v1
.end method

.method public unloadCache()V
    .locals 2

    .prologue
    .line 319
    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    monitor-enter v1

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->mBitmapPoolBytes:I

    .line 322
    monitor-exit v1

    .line 323
    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
