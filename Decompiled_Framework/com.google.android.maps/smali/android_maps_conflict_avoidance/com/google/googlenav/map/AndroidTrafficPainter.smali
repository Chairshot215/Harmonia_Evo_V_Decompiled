.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;
.super Ljava/lang/Object;
.source "AndroidTrafficPainter.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$1;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;
    }
.end annotation


# static fields
.field private static final MAJOR_DASH_INTERVALS:[F

.field private static final MINOR_DASH_INTERVALS:[F


# instance fields
.field private canvas:Landroid/graphics/Canvas;

.field private isPreserveLabels:Z

.field private mainXfermode:Landroid/graphics/Xfermode;

.field private final majorDash:Landroid/graphics/PathEffect;

.field private final minorDash:Landroid/graphics/PathEffect;

.field private final paint:Landroid/graphics/Paint;

.field private final preserveLabels:Landroid/graphics/AvoidXfermode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->MAJOR_DASH_INTERVALS:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->MINOR_DASH_INTERVALS:[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0xc0t 0x40t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0xc0t 0x40t
        0x0t 0x0t 0x40t 0x41t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/DashPathEffect;

    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->MAJOR_DASH_INTERVALS:[F

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->majorDash:Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/DashPathEffect;

    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->MINOR_DASH_INTERVALS:[F

    const/high16 v2, 0x40c0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->minorDash:Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/AvoidXfermode;

    const v1, -0xbfbfc0

    const/16 v2, 0xfd

    sget-object v3, Landroid/graphics/AvoidXfermode$Mode;->AVOID:Landroid/graphics/AvoidXfermode$Mode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/AvoidXfermode;-><init>(IILandroid/graphics/AvoidXfermode$Mode;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->preserveLabels:Landroid/graphics/AvoidXfermode;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->canvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public addTrafficLine(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;II)V
    .locals 5

    const/4 v3, 0x0

    shr-int/lit8 p3, p3, 0x8

    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->isPreserveLabels:Z

    if-eqz v2, :cond_0

    const v2, -0x2f000001

    if-ne p2, v2, :cond_0

    const/4 p2, -0x1

    add-int/lit8 p3, p3, 0x2

    :cond_0
    const/high16 v2, -0x64

    if-ne p2, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    int-to-float v4, p3

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->majorDash:Landroid/graphics/PathEffect;

    :goto_1
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->mainXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    check-cast p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;

    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->canvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->minorDash:Landroid/graphics/PathEffect;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    const/high16 v4, -0x100

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move-object v2, v3

    goto :goto_1
.end method

.method public createPathObject()Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    .locals 2

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$1;)V

    return-object v0
.end method

.method public setup(Landroid/graphics/Canvas;)V
    .locals 2

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->canvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/labs/android/TrafficWithLabelsLab;->INSTANCE:Landroid_maps_conflict_avoidance/com/google/googlenav/labs/android/TrafficWithLabelsLab;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/labs/android/TrafficWithLabelsLab;->isActive()Z

    move-result v0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->isPreserveLabels:Z

    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->isPreserveLabels:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->preserveLabels:Landroid/graphics/AvoidXfermode;

    :goto_0
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->mainXfermode:Landroid/graphics/Xfermode;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
