.class public Landroid_maps_conflict_avoidance/com/google/common/util/RuntimeCheck;
.super Ljava/lang/Object;
.source "RuntimeCheck.java"


# static fields
.field private static isStartupComplete:Z

.field private static isTrackingStartup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/util/RuntimeCheck;->isTrackingStartup:Z

    sput-boolean v0, Landroid_maps_conflict_avoidance/com/google/common/util/RuntimeCheck;->isStartupComplete:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
