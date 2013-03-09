.class public abstract Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;
.super Ljava/lang/Object;
.source "GmmSettings.java"


# static fields
.field private static final FEATURE_TEST_DEFAULT_START:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;


# instance fields
.field private final defaultRemoteStringVersion:Ljava/lang/String;

.field protected isFirstInvocation:Z

.field private migrateLatitudeUserTermsPrefOnUpgrade:Z

.field private final remoteStringResource:Ljava/lang/String;

.field private requireTermsAndConditionsOnUpgrade:Z

.field private upgradeChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    const v1, 0x2625a00

    const v2, -0x59a5380

    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;-><init>(II)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->FEATURE_TEST_DEFAULT_START:Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->upgradeChecked:Z

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->requireTermsAndConditionsOnUpgrade:Z

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->migrateLatitudeUserTermsPrefOnUpgrade:Z

    const-string v1, "no-remote-strings"

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->defaultRemoteStringVersion:Ljava/lang/String;

    const-string v1, "/strings_remote_no-remote-strings.dat"

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->remoteStringResource:Ljava/lang/String;

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->isTermsAndConditionsPrefSet()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmSettings;->isFirstInvocation:Z

    return-void
.end method

.method public static isDebugBuild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static isTermsAndConditionsPrefSet()Z
    .locals 2

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v0

    const-string v1, "T_AND_C_ACCEPT"

    invoke-interface {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
