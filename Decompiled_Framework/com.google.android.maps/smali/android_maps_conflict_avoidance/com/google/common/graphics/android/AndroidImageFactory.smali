.class public Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;
.super Ljava/lang/Object;
.source "AndroidImageFactory.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;


# instance fields
.field private final context:Landroid/content/Context;

.field private stringIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createImage(II)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 1

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    invoke-direct {v0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;-><init>(II)V

    return-object v0
.end method

.method public createImage(IIZ)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 1

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    invoke-direct {v0, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;-><init>(IIZ)V

    return-object v0
.end method

.method public createImage([BII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 1

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    invoke-direct {v0, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;-><init>([BII)V

    return-object v0
.end method

.method public createUnscaledImage(Ljava/lang/String;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 4

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;->stringIdMap:Ljava/util/Map;

    if-nez v0, :cond_0

    :cond_0
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;->context:Landroid/content/Context;

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;->stringIdMap:Ljava/util/Map;

    sget-object v3, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;->AUTO_SCALE_DISABLED:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;

    invoke-direct {v0, v1, v2, p1, v3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage$AutoScale;)V

    return-object v0
.end method

.method public setStringIdMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;->stringIdMap:Ljava/util/Map;

    return-void
.end method
