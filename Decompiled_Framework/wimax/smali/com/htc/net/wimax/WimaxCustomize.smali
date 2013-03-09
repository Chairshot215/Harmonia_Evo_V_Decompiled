.class public Lcom/htc/net/wimax/WimaxCustomize;
.super Ljava/lang/Object;
.source "WimaxCustomize.java"


# static fields
.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "WimaxCustomize"

.field private static wimaxApi:Lcom/htc/net/wimax/Wimax4GApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/net/wimax/WimaxCustomize;->wimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ConnectBaseOnScanResult()Z
    .locals 1

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKddiProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsYtlProject()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static EnableDualMode()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v2, "wimax.dualmode"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsSprintProject()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static EnableModemNai()Z
    .locals 1

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsSprintProject()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static HaveSimLock()Z
    .locals 1

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Is23GProject()Z
    .locals 1

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsYtlProject()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsExpressKtDevice()Z
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsKddiProject()Z
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsKtProject()Z
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsMfgBuild()Z
    .locals 2

    const-string v0, "ro.bootmode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "factory2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsReleaseKey()Z
    .locals 3

    const-string v1, "ro.build.tags"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static IsRiderDevice()Z
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsShooterKDevice()Z
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsSprintProject()Z
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xaf

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsYtlProject()Z
    .locals 3

    const/4 v0, 0x1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x88

    if-ne v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static NeedDisableTxQam64()Z
    .locals 1

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKddiProject()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsShooterKDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static NeedDmCmdDuringWimaxConnection()Z
    .locals 1

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKddiProject()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static NeedRetryConnect()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v2, "wimax.connect.retry"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKddiProject()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsYtlProject()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static NeedSimDuringWimaxConnection()Z
    .locals 1

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SupportOmadm()Z
    .locals 1

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsSprintProject()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static UseCdmaNai()Z
    .locals 1

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKddiProject()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static UseOmaDmDataInFlash()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsSprintProject()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "wimax.sprint.newOmadm"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static UseSimNai()Z
    .locals 1

    invoke-static {}, Lcom/htc/net/wimax/WimaxCustomize;->IsKtProject()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getApiInstance(Lcom/htc/net/wimax/WimaxEventObserver;)Lcom/htc/net/wimax/Wimax4GApi;
    .locals 1

    sget-object v0, Lcom/htc/net/wimax/WimaxCustomize;->wimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sqn/Wimax4GSequansApi;

    invoke-direct {v0, p0}, Lcom/sqn/Wimax4GSequansApi;-><init>(Lcom/htc/net/wimax/WimaxEventObserver;)V

    sput-object v0, Lcom/htc/net/wimax/WimaxCustomize;->wimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    :cond_0
    sget-object v0, Lcom/htc/net/wimax/WimaxCustomize;->wimaxApi:Lcom/htc/net/wimax/Wimax4GApi;

    return-object v0
.end method
