.class public Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;
.super Ljava/lang/Object;
.source "Gunzipper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;
    }
.end annotation


# static fields
.field private static final instance:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;


# instance fields
.field private implementation:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;-><init>()V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->instance:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->instance:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;

    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->implementation:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;

    invoke-interface {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;->gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static setImplementation(Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;)V
    .locals 1

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->instance:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;

    iput-object p0, v0, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->implementation:Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;

    return-void
.end method
