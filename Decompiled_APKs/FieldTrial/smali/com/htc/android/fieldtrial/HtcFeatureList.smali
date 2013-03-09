.class public Lcom/htc/android/fieldtrial/HtcFeatureList;
.super Ljava/lang/Object;
.source "HtcFeatureList.java"


# static fields
.field public static FEATURE_SPRINT_PCS:Z

.field public static FEATURE_SUPPORT_WIMAX:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 16
    const-string v0, "persist.wimax.0.MAC"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/android/fieldtrial/HtcFeatureList;->FEATURE_SUPPORT_WIMAX:Z

    .line 19
    sput-boolean v1, Lcom/htc/android/fieldtrial/HtcFeatureList;->FEATURE_SPRINT_PCS:Z

    return-void

    .line 16
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
