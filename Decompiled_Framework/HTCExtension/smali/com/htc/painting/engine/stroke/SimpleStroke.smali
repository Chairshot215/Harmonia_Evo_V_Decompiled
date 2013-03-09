.class public Lcom/htc/painting/engine/stroke/SimpleStroke;
.super Lcom/htc/painting/engine/stroke/Stroke;
.source "SimpleStroke.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;
    }
.end annotation


# static fields
.field private static final METAINFO_BYTESIZE:I = 0xe

.field private static final MOTION_POINT_BYTESIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SimpleStroke"

.field private static final VERSION:B = 0x1t


# instance fields
.field private mCircirPaint:Landroid/graphics/Paint;

.field private mHalfWidth:F

.field private final mNotDrawingPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mPointCount:I

.field private mPointCountNew:I

.field private mPreviousPoint:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

.field private final mSegment:Landroid/graphics/Path;

.field private final mSimplePath:Landroid/graphics/Path;

.field private final mSimplePathNew:Landroid/graphics/Path;

.field private mThickness:F

.field private final mVOPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/htc/painting/engine/stroke/Stroke;-><init>(I)V

    invoke-direct {p0}, Lcom/htc/painting/engine/stroke/SimpleStroke;->init()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePathNew:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mNotDrawingPaths:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILcom/htc/painting/engine/StrokeProperties;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/stroke/Stroke;-><init>(ILcom/htc/painting/engine/StrokeProperties;)V

    invoke-direct {p0}, Lcom/htc/painting/engine/stroke/SimpleStroke;->init()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePathNew:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mNotDrawingPaths:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/io/ByteArrayInputStream;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/htc/painting/engine/stroke/Stroke;-><init>(ILjava/io/ByteArrayInputStream;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePathNew:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mNotDrawingPaths:Ljava/util/List;

    return-void
.end method

.method public static final ComputeControlsOfFirstPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;F)V
    .locals 5

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->p:F

    mul-float v2, p2, v3

    neg-float v3, v2

    iget v4, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->uy:F

    mul-float v0, v3, v4

    iget v3, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->ux:F

    mul-float v1, v2, v3

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    add-float/2addr v3, v1

    iput v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    sub-float/2addr v3, v0

    iput v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    return-void
.end method

.method public static final ComputeControlsOfLastPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;F)V
    .locals 5

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->p:F

    mul-float v2, p1, v3

    neg-float v3, v2

    iget v4, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->uy:F

    mul-float v0, v3, v4

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->ux:F

    mul-float v1, v2, v3

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    add-float/2addr v3, v1

    iput v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    sub-float/2addr v3, v0

    iput v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    return-void
.end method

.method public static final ComputeControlsOfPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;F)V
    .locals 10

    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->ux:F

    iget v9, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->ux:F

    add-float v6, v8, v9

    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->uy:F

    iget v9, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->uy:F

    add-float v7, v8, v9

    mul-float v8, v6, v6

    mul-float v9, v7, v7

    add-float v5, v8, v9

    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-eqz v8, :cond_0

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->p:F

    mul-float v2, p2, v8

    mul-float v8, v2, v7

    float-to-double v8, v8

    div-double/2addr v8, v3

    double-to-float v8, v8

    neg-float v0, v8

    mul-float v8, v2, v6

    float-to-double v8, v8

    div-double/2addr v8, v3

    double-to-float v1, v8

    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    add-float/2addr v8, v0

    iput v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    add-float/2addr v8, v1

    iput v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    sub-float/2addr v8, v0

    iput v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    sub-float/2addr v8, v1

    iput v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    :goto_0
    return-void

    :cond_0
    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    iput v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    iput v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    iput v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    iput v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    goto :goto_0
.end method

.method private final addFirstSegment(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V
    .locals 11

    const/high16 v10, 0x3f00

    iget v0, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    iget v4, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    iget v1, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    iget v5, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    add-float/2addr v8, v9

    mul-float v2, v10, v8

    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    add-float/2addr v8, v9

    mul-float v6, v10, v8

    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    add-float/2addr v8, v9

    mul-float v3, v10, v8

    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    add-float/2addr v8, v9

    mul-float v7, v10, v8

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v0, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePath:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mNotDrawingPaths:Ljava/util/List;

    new-instance v9, Landroid/graphics/Path;

    iget-object v10, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-direct {v9, v10}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePathNew:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private final addLastSegment(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V
    .locals 11

    const/high16 v10, 0x3f00

    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    add-float/2addr v8, v9

    mul-float v0, v10, v8

    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    add-float/2addr v8, v9

    mul-float v4, v10, v8

    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    add-float/2addr v8, v9

    mul-float v1, v10, v8

    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    add-float/2addr v8, v9

    mul-float v5, v10, v8

    iget v2, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    iget v6, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    iget v3, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    iget v7, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v0, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePath:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mNotDrawingPaths:Ljava/util/List;

    new-instance v9, Landroid/graphics/Path;

    iget-object v10, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-direct {v9, v10}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePathNew:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private final addSegment(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V
    .locals 11

    const/high16 v10, 0x3f00

    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    add-float/2addr v8, v9

    mul-float v0, v10, v8

    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    add-float/2addr v8, v9

    mul-float v4, v10, v8

    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    add-float/2addr v8, v9

    mul-float v1, v10, v8

    iget v8, p1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    add-float/2addr v8, v9

    mul-float v5, v10, v8

    iget v8, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    iget v9, p3, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    add-float/2addr v8, v9

    mul-float v2, v10, v8

    iget v8, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    iget v9, p3, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    add-float/2addr v8, v9

    mul-float v6, v10, v8

    iget v8, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    iget v9, p3, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    add-float/2addr v8, v9

    mul-float v3, v10, v8

    iget v8, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    iget v9, p3, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    add-float/2addr v8, v9

    mul-float v7, v10, v8

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v0, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x1:F

    iget v10, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y1:F

    invoke-virtual {v8, v9, v10, v2, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    iget v9, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x2:F

    iget v10, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y2:F

    invoke-virtual {v8, v9, v10, v1, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePath:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mNotDrawingPaths:Ljava/util/List;

    new-instance v9, Landroid/graphics/Path;

    iget-object v10, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-direct {v9, v10}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePathNew:Landroid/graphics/Path;

    iget-object v9, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {v8, v9}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private final endPath()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    invoke-virtual {p0, v3}, Lcom/htc/painting/engine/stroke/SimpleStroke;->addPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPreviousPoint:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    invoke-static {v1, v3}, Lcom/htc/painting/engine/stroke/SimpleStroke;->ComputeControlsOfLastPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;F)V

    invoke-direct {p0, v0, v1}, Lcom/htc/painting/engine/stroke/SimpleStroke;->addFirstSegment(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    invoke-direct {p0, v0, v1}, Lcom/htc/painting/engine/stroke/SimpleStroke;->addLastSegment(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    if-le v3, v6, :cond_0

    iget-object v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    iget-object v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPreviousPoint:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    invoke-static {v2, v3}, Lcom/htc/painting/engine/stroke/SimpleStroke;->ComputeControlsOfLastPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;F)V

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/painting/engine/stroke/SimpleStroke;->addSegment(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    invoke-direct {p0, v1, v2}, Lcom/htc/painting/engine/stroke/SimpleStroke;->addLastSegment(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    goto :goto_0
.end method

.method private init()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/painting/engine/stroke/SimpleStroke;->prepareDefaultPaint()V

    return-void
.end method

.method private prepareDefaultPaint()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v1}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v1}, Lcom/htc/painting/engine/StrokeProperties;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mCircirPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mCircirPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mCircirPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mCircirPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v1}, Lcom/htc/painting/engine/StrokeProperties;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private final updatePathWithPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V
    .locals 5

    const/4 v4, 0x2

    iget v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPreviousPoint:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    invoke-static {v2, p1, v3}, Lcom/htc/painting/engine/stroke/SimpleStroke;->ComputeControlsOfFirstPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPreviousPoint:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    invoke-static {v2, p1, v3}, Lcom/htc/painting/engine/stroke/SimpleStroke;->ComputeControlsOfPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;F)V

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPreviousPoint:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    invoke-direct {p0, v0, v2}, Lcom/htc/painting/engine/stroke/SimpleStroke;->addFirstSegment(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    if-le v2, v4, :cond_0

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPreviousPoint:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    invoke-static {v2, p1, v3}, Lcom/htc/painting/engine/stroke/SimpleStroke;->ComputeControlsOfPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;F)V

    iget-object v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPreviousPoint:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/painting/engine/stroke/SimpleStroke;->addSegment(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    goto :goto_0
.end method


# virtual methods
.method public final addPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V
    .locals 1

    iget v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPreviousPoint:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    invoke-static {p1, v0}, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->computeDistance(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/painting/engine/stroke/SimpleStroke;->updatePathWithPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPreviousPoint:Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    iget v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    iget v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCountNew:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCountNew:I

    return-void
.end method

.method public deserialize(Ljava/io/ByteArrayInputStream;)I
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/high16 v2, -0x8000

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    new-array v10, v2, [B

    const/4 v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v21, v0

    const/4 v2, 0x4

    new-array v15, v2, [B

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayInputStream;->read([B)I

    const/4 v2, 0x0

    aget-byte v23, v10, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayInputStream;->read([B)I

    const/4 v2, 0x0

    aget-byte v2, v10, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mIsEffective:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static {v15}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v19

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v14, v0, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v21 .. v21}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v12

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v21 .. v21}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v13

    int-to-float v2, v12

    add-float v25, v16, v2

    int-to-float v2, v13

    add-float v26, v17, v2

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    move-object/from16 v27, v0

    new-instance v2, Lcom/htc/painting/engine/MotionPoint;

    move/from16 v0, v25

    float-to-int v3, v0

    move/from16 v0, v26

    float-to-int v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/htc/painting/engine/MotionPoint;-><init>(IIFFFJ)V

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v16, v25

    move/from16 v17, v26

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v19, -0x1

    if-ne v14, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    add-float v3, v25, v16

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v4, v26, v17

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_3

    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static {v15}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/painting/engine/stroke/SimpleStroke;->setStrokeId(I)V

    new-instance v18, Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct/range {v18 .. v18}, Lcom/htc/painting/engine/StrokeProperties;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static/range {v21 .. v21}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToShort([B)S

    move-result v24

    move/from16 v0, v24

    int-to-float v2, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/htc/painting/engine/StrokeProperties;->setWidth(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/ByteArrayInputStream;->read([B)I

    invoke-static {v15}, Lcom/htc/painting/engine/HtcPaintingUtil;->byteArrayToInt([B)I

    move-result v11

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/htc/painting/engine/StrokeProperties;->setColor(I)V

    new-instance v20, Landroid/graphics/RectF;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    new-instance v2, Landroid/graphics/RectF;

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move/from16 v0, v24

    int-to-float v4, v0

    sub-float/2addr v3, v4

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move/from16 v0, v24

    int-to-float v5, v0

    sub-float/2addr v4, v5

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/RectF;->right:F

    move/from16 v0, v24

    int-to-float v6, v0

    add-float/2addr v5, v6

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v0, v24

    int-to-float v7, v0

    add-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-direct/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/SimpleStroke;->prepareDefaultPaint()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/painting/engine/stroke/SimpleStroke;->getId()I

    move-result v2

    goto/16 :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    invoke-virtual {p0, p1, v0}, Lcom/htc/painting/engine/stroke/SimpleStroke;->drawOnePoint(Landroid/graphics/Canvas;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawOnePoint(Landroid/graphics/Canvas;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V
    .locals 4

    iget v0, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    iget v1, p2, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    iget v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    iget-object v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mCircirPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getTotalBytes()I
    .locals 2

    const/4 v0, 0x0

    add-int/lit8 v0, v0, 0xe

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v1, 0xe

    :cond_0
    return v0
.end method

.method protected onEnd(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/htc/painting/engine/stroke/SimpleStroke;->endPath()V

    iget v4, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mVOPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    invoke-virtual {p0, p1, v3}, Lcom/htc/painting/engine/stroke/SimpleStroke;->drawOnePoint(Landroid/graphics/Canvas;Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    iget v4, v3, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    iget v5, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mThickness:F

    sub-float/2addr v4, v5

    iget v5, v3, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    iget v6, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mThickness:F

    sub-float/2addr v5, v6

    iget v6, v3, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->x:F

    iget v7, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mThickness:F

    add-float/2addr v6, v7

    iget v7, v3, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;->y:F

    iget v8, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mThickness:F

    add-float/2addr v7, v8

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mNotDrawingPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    invoke-virtual {p0, p1, v1}, Lcom/htc/painting/engine/stroke/SimpleStroke;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v6, v6, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget v4, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    neg-float v4, v4

    iget v5, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    neg-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {p2, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    iget v4, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    neg-float v4, v4

    iget v5, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    neg-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mNotDrawingPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method protected onMove(Landroid/graphics/Canvas;FFFFLandroid/graphics/RectF;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v3, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;

    invoke-direct {v3, p2, p3, p4}, Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;-><init>(FFF)V

    invoke-virtual {p0, v3}, Lcom/htc/painting/engine/stroke/SimpleStroke;->addPoint(Lcom/htc/painting/engine/stroke/SimpleStroke$VOPoint;)V

    iget-object v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mNotDrawingPaths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    iget-object v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    invoke-virtual {p0, p1, v3}, Lcom/htc/painting/engine/stroke/SimpleStroke;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v5, v5, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSegment:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    neg-float v3, v3

    iget v4, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {p6, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mNotDrawingPaths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected onStart(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCount:I

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mPointCountNew:I

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mThickness:F

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v0}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mSimplePathNew:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method public serialize(Ljava/io/ByteArrayOutputStream;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v12, 0x1

    invoke-virtual {p1, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Lcom/htc/painting/engine/stroke/SimpleStroke;->isEffective()Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    :goto_0
    int-to-byte v12, v12

    invoke-virtual {p1, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v12, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v12, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    mul-int/lit8 v12, v12, 0x4

    new-array v5, v12, [B

    const/4 v3, 0x0

    :goto_1
    iget-object v12, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v3, v12, :cond_3

    iget-object v12, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v12}, Lcom/htc/painting/engine/MotionPoint;->getX()I

    move-result v10

    iget-object v12, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPoints:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/painting/engine/MotionPoint;

    invoke-virtual {v12}, Lcom/htc/painting/engine/MotionPoint;->getY()I

    move-result v11

    sub-int v12, v10, v6

    const/16 v13, 0x7fff

    if-le v12, v13, :cond_1

    const/16 v1, 0x7fff

    :goto_2
    sub-int v12, v11, v7

    const/16 v13, 0x7fff

    if-le v12, v13, :cond_2

    const/16 v2, 0x7fff

    :goto_3
    mul-int/lit8 v12, v3, 0x4

    add-int/lit8 v12, v12, 0x0

    shr-int/lit8 v13, v1, 0x8

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    mul-int/lit8 v12, v3, 0x4

    add-int/lit8 v12, v12, 0x1

    int-to-byte v13, v1

    aput-byte v13, v5, v12

    mul-int/lit8 v12, v3, 0x4

    add-int/lit8 v12, v12, 0x2

    shr-int/lit8 v13, v2, 0x8

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    mul-int/lit8 v12, v3, 0x4

    add-int/lit8 v12, v12, 0x3

    int-to-byte v13, v2

    aput-byte v13, v5, v12

    move v6, v10

    move v7, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    sub-int v12, v10, v6

    int-to-short v1, v12

    goto :goto_2

    :cond_2
    sub-int v12, v11, v7

    int-to-short v2, v12

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/htc/painting/engine/stroke/SimpleStroke;->getId()I

    move-result v12

    invoke-static {v12}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I)[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v12, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v12}, Lcom/htc/painting/engine/StrokeProperties;->getWidth()F

    move-result v12

    float-to-int v12, v12

    int-to-short v12, v12

    invoke-static {v12}, Lcom/htc/painting/engine/HtcPaintingUtil;->shortToByteArray(S)[B

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v12, p0, Lcom/htc/painting/engine/stroke/Stroke;->mStrokeProperties:Lcom/htc/painting/engine/StrokeProperties;

    invoke-virtual {v12}, Lcom/htc/painting/engine/StrokeProperties;->getColor()I

    move-result v12

    invoke-static {v12}, Lcom/htc/painting/engine/HtcPaintingUtil;->intToByteArray(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v12, 0x1

    return v12
.end method

.method protected updateBoundingRect(Landroid/graphics/RectF;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lcom/htc/painting/engine/stroke/Stroke;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    neg-float v1, v1

    iget v2, p0, Lcom/htc/painting/engine/stroke/SimpleStroke;->mHalfWidth:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method
