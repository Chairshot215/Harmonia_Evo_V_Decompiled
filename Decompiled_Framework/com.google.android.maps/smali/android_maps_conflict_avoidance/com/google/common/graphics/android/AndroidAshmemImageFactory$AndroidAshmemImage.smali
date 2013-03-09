.class Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;
.super Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;
.source "AndroidAshmemImageFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidAshmemImage"
.end annotation


# static fields
.field private static final options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;->options:Landroid/graphics/BitmapFactory$Options;

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;->options:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory$AndroidAshmemImage;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImage;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method
