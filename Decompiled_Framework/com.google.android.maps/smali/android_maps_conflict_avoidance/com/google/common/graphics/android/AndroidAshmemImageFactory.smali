.class public Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory;
.super Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;
.source "AndroidAshmemImageFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createImage([BII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 1

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;

    invoke-direct {v0, p1, p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;-><init>([BII)V

    return-object v0
.end method
