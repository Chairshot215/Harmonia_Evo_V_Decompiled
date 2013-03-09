.class Lcom/google/android/maps/ZoomHelper$Snapshot;
.super Ljava/lang/Object;
.source "ZoomHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/ZoomHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Snapshot"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public fixedPoint:Lcom/google/android/maps/GeoPoint;

.field public final fixedPointCoords:[F

.field public final fixedPointScreenCoords:[F

.field public zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointCoords:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/maps/ZoomHelper$Snapshot;->fixedPointScreenCoords:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/ZoomHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/ZoomHelper$Snapshot;-><init>()V

    return-void
.end method
