.class public Lcom/htc/net/wimax/WimaxDcc;
.super Ljava/lang/Object;
.source "WimaxDcc.java"


# static fields
.field private static LOCAL_LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "WiMAX"

.field private static final WAIT_DC_TIME:I = 0x5

.field private static dcInstance:Lcom/sqn/dcc/DeviceController;

.field static final ndssStateStr:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DISCONNECTED"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "SCANNING"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CONNECTING"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CONNECTED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/net/wimax/WimaxDcc;->ndssStateStr:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/net/wimax/WimaxDcc;->dcInstance:Lcom/sqn/dcc/DeviceController;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cli(Ljava/lang/String;Ljava/lang/String;Lcom/htc/net/wimax/ParcelableInteger;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    const-string v4, "WiMAX"

    const-string v5, "cli: command == null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    if-nez p1, :cond_2

    sget-boolean v4, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v4, :cond_1

    const-string v4, "WiMAX"

    const-string v5, "cli: result == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    :cond_2
    if-nez p2, :cond_4

    sget-boolean v4, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v4, :cond_3

    const-string v4, "WiMAX"

    const-string v5, "cli: status == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance p2, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {p2}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    :cond_4
    new-instance v2, Lcom/sqn/dcc/OutValue;

    invoke-virtual {p2}, Lcom/htc/net/wimax/ParcelableInteger;->toInteger()Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v2, :cond_5

    const-string v4, "WiMAX"

    const-string v5, "cli: cliStatus == null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-direct {v1, p1}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_6

    const-string v4, "WiMAX"

    const-string v5, "cli: cliResult == null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    sget-boolean v4, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v4, :cond_7

    const-string v4, "WiMAX"

    const-string v5, "cli: invoke Dbg.Cli"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {p0, v2, v1}, Lcom/sqn/dcc/Dbg;->Cli(Ljava/lang/String;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_8

    const-string v4, "WiMAX"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cli: error status = 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_9

    const-string v3, "WiMAX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cli: cli status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/htc/net/wimax/ParcelableInteger;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cli result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public static connectToDcs(Lcom/htc/net/wimax/WimaxStateTracker;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static debugChange(Z)V
    .locals 0

    sput-boolean p0, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    return-void
.end method

.method public static disconnectFromDcs()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getAdapterStats(Lcom/sqn/dcc/AdapterStatistics;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, -0x1

    if-nez p0, :cond_0

    const-string v3, "WiMAX"

    const-string v4, "getAdapterStats: info == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sqn/dcc/AdapterStatistics;

    invoke-direct {p0}, Lcom/sqn/dcc/AdapterStatistics;-><init>()V

    :cond_0
    new-instance v0, Lcom/sqn/dcc/OutValue;

    invoke-direct {v0, p0}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v0, :cond_1

    const-string v3, "WiMAX"

    const-string v4, "getAdapterStats: adapterInfo == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_1
    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_2

    const-string v3, "WiMAX"

    const-string v4, "getAdapterStats: invoke DeviceInfo.GetAdapterStats"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v0}, Lcom/sqn/dcc/DeviceInfo;->GetAdapterStats(Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_3

    const-string v3, "WiMAX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdapterStats: error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getBoardName(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-nez p0, :cond_1

    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "WiMAX"

    const-string v4, "getBoardName: boardName is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/String;-><init>()V

    :cond_1
    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-direct {v1, p0}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_2

    const-string v3, "WiMAX"

    const-string v4, "getBoardName: name == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_2
    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_3

    const-string v3, "WiMAX"

    const-string v4, "getBoardName: invoke DeviceInfo.GetBoardName"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v1}, Lcom/sqn/dcc/DeviceInfo;->GetBoardName(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v3, "WiMAX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBoardName: error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget-boolean v2, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v2, :cond_5

    const-string v2, "WiMAX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBoardName: boardName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getDcdBsMacAddress(Lcom/htc/net/wimax/ParcelableLong;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    new-instance v1, Lcom/sqn/dcc/OutValue;

    new-instance v3, Lcom/sqn/dcc/swmDcd;

    invoke-direct {v3}, Lcom/sqn/dcc/swmDcd;-><init>()V

    invoke-direct {v1, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_0

    const-string v3, "WiMAX"

    const-string v4, "getDcdBsMacAddress: dcd == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "WiMAX"

    const-string v4, "getDcdBsMacAddress: invoke MacSs.GetDcd"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v1}, Lcom/sqn/dcc/MacSs;->GetDcd(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "WiMAX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDcdBsMacAddress: error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sqn/dcc/swmDcd;

    iget-object v2, v2, Lcom/sqn/dcc/swmDcd;->phy:Lcom/sqn/dcc/swmDcdPhy;

    iget-object v2, v2, Lcom/sqn/dcc/swmDcdPhy;->v:Lcom/sqn/dcc/swmOfdmaDcd;

    iget-wide v2, v2, Lcom/sqn/dcc/swmOfdmaDcd;->bsId:J

    invoke-virtual {p0, v2, v3}, Lcom/htc/net/wimax/ParcelableLong;->setLong(J)V

    sget-boolean v2, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v2, :cond_3

    const-string v2, "WiMAX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDcdBsMacAddress: bsMacAddr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/net/wimax/ParcelableLong;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getDcdFrequency(Lcom/htc/net/wimax/ParcelableLong;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    new-instance v1, Lcom/sqn/dcc/OutValue;

    new-instance v3, Lcom/sqn/dcc/swmDcd;

    invoke-direct {v3}, Lcom/sqn/dcc/swmDcd;-><init>()V

    invoke-direct {v1, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_0

    const-string v3, "WiMAX"

    const-string v4, "getDcdFrequency: dcd == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "WiMAX"

    const-string v4, "getDcdFrequency: invoke MacSs.GetDcd"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v1}, Lcom/sqn/dcc/MacSs;->GetDcd(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "WiMAX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDcdFrequency: error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sqn/dcc/swmDcd;

    iget-wide v2, v2, Lcom/sqn/dcc/swmDcd;->frequency:J

    invoke-virtual {p0, v2, v3}, Lcom/htc/net/wimax/ParcelableLong;->setLong(J)V

    sget-boolean v2, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v2, :cond_3

    const-string v2, "WiMAX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDcdFrequency: frequency = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/net/wimax/ParcelableLong;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getLinkSpeed(Lcom/htc/net/wimax/ParcelableInteger;Lcom/htc/net/wimax/ParcelableInteger;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v0, -0x1

    if-nez p0, :cond_1

    sget-boolean v4, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v4, :cond_0

    const-string v4, "WiMAX"

    const-string v5, "getLinkSpeed: ulBitRate is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {p0}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    :cond_1
    if-nez p1, :cond_3

    sget-boolean v4, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v4, :cond_2

    const-string v4, "WiMAX"

    const-string v5, "getLinkSpeed: dlBitRate is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance p1, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {p1}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    :cond_3
    new-instance v2, Lcom/sqn/dcc/OutValue;

    invoke-virtual {p0}, Lcom/htc/net/wimax/ParcelableInteger;->toInteger()Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v2, :cond_4

    const-string v4, "WiMAX"

    const-string v5, "getLinkSpeed: ul == null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_4
    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-virtual {p1}, Lcom/htc/net/wimax/ParcelableInteger;->toInteger()Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_5

    const-string v4, "WiMAX"

    const-string v5, "getLinkSpeed: dl == null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v4, "WiMAX"

    const-string v5, "getMacAddress: invoke MacSs.GetLinkSpeed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v1}, Lcom/sqn/dcc/MacSs;->GetLinkSpeed(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_6

    const-string v4, "WiMAX"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLinkSpeed: error status = 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    new-instance p0, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-virtual {v2}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/net/wimax/ParcelableInteger;-><init>(I)V

    new-instance p1, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p1, v3}, Lcom/htc/net/wimax/ParcelableInteger;-><init>(I)V

    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_7

    const-string v3, "WiMAX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLinkSpeed: ul = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/net/wimax/ParcelableInteger;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/net/wimax/ParcelableInteger;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public static getMacAddress(Lcom/htc/net/wimax/ParcelableLong;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, -0x1

    if-nez p0, :cond_1

    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "WiMAX"

    const-string v4, "getMacAddress: macAddr is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Lcom/htc/net/wimax/ParcelableLong;

    invoke-direct {p0}, Lcom/htc/net/wimax/ParcelableLong;-><init>()V

    :cond_1
    new-instance v0, Lcom/sqn/dcc/OutValue;

    invoke-virtual {p0}, Lcom/htc/net/wimax/ParcelableLong;->toLong()Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v0, :cond_2

    const-string v3, "WiMAX"

    const-string v4, "getMacAddress: addr == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_2
    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_3

    const-string v3, "WiMAX"

    const-string v4, "getMacAddress: invoke MacSs.GetWimaxMacAddress"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v0}, Lcom/sqn/dcc/MacSs;->GetWimaxMacAddress(Lcom/sqn/dcc/OutValue;)I

    move-result v1

    if-eqz v1, :cond_4

    const-string v3, "WiMAX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMacAddress: error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget-boolean v2, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v2, :cond_5

    const-string v2, "WiMAX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMacAddress: macAddr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/net/wimax/ParcelableLong;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getMsVersion(Lcom/sqn/dcc/DeviceVersion;Lcom/sqn/dcc/DeviceVersion;Lcom/sqn/dcc/DeviceVersion;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v0, -0x1

    if-nez p0, :cond_1

    sget-boolean v5, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v5, :cond_0

    const-string v5, "WiMAX"

    const-string v6, "getMsVersion: fwVersion is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Lcom/sqn/dcc/DeviceVersion;

    invoke-direct {p0}, Lcom/sqn/dcc/DeviceVersion;-><init>()V

    :cond_1
    if-nez p1, :cond_3

    sget-boolean v5, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v5, :cond_2

    const-string v5, "WiMAX"

    const-string v6, "getMsVersion: hwVersion is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance p1, Lcom/sqn/dcc/DeviceVersion;

    invoke-direct {p1}, Lcom/sqn/dcc/DeviceVersion;-><init>()V

    :cond_3
    if-nez p2, :cond_5

    sget-boolean v5, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v5, :cond_4

    const-string v5, "WiMAX"

    const-string v6, "getMsVersion: ucVersion is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance p2, Lcom/sqn/dcc/DeviceVersion;

    invoke-direct {p2}, Lcom/sqn/dcc/DeviceVersion;-><init>()V

    :cond_5
    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-direct {v1, p0}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_6

    const-string v5, "WiMAX"

    const-string v6, "getMsVersion: fwVer == null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_6
    new-instance v2, Lcom/sqn/dcc/OutValue;

    invoke-direct {v2, p1}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v2, :cond_7

    const-string v5, "WiMAX"

    const-string v6, "getMsVersion: hwVer == null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    new-instance v3, Lcom/sqn/dcc/OutValue;

    invoke-direct {v3, p2}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v3, :cond_8

    const-string v5, "WiMAX"

    const-string v6, "getMsVersion: ucVer == null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    sget-boolean v5, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v5, :cond_9

    const-string v5, "WiMAX"

    const-string v6, "getMsVersion: invoke DeviceInfo.GetMsVersion"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-static {v1, v3, v2}, Lcom/sqn/dcc/DeviceInfo;->GetMsVersion(Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_a

    const-string v5, "WiMAX"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAdapterStats: error status = 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_a
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static getRfChipName(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-nez p0, :cond_1

    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "WiMAX"

    const-string v4, "getRfChipName: chipName is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/String;-><init>()V

    :cond_1
    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-direct {v1, p0}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_2

    const-string v3, "WiMAX"

    const-string v4, "getRfChipName: name == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_2
    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_3

    const-string v3, "WiMAX"

    const-string v4, "getRfChipName: invoke DeviceInfo.GetRfChipName"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v1}, Lcom/sqn/dcc/DeviceInfo;->GetRfChipName(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v3, "WiMAX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRfChipName: error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget-boolean v2, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v2, :cond_5

    const-string v2, "WiMAX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRfChipName: chipName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getSignalQuality(Lcom/htc/net/wimax/ParcelableInteger;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    new-instance v1, Lcom/sqn/dcc/OutValue;

    new-instance v3, Lcom/sqn/dcc/PhyStatsDl;

    invoke-direct {v3}, Lcom/sqn/dcc/PhyStatsDl;-><init>()V

    invoke-direct {v1, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_0

    const-string v3, "WiMAX"

    const-string v4, "getSignalQuality: phyStatDl == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "WiMAX"

    const-string v4, "getSignalQuality100x: invoke MgtSs.GetPhyStatsDl"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v1}, Lcom/sqn/dcc/MgtSs;->GetPhyStatsDl(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "WiMAX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSignalQuality: error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sqn/dcc/PhyStatsDl;

    iget v2, v2, Lcom/sqn/dcc/PhyStatsDl;->meanCinrReuse1:I

    invoke-virtual {p0, v2}, Lcom/htc/net/wimax/ParcelableInteger;->setInteger(I)V

    sget-boolean v2, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v2, :cond_3

    const-string v2, "WiMAX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSignalQuality: cinr100x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/net/wimax/ParcelableInteger;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getSignalStrengthDb(Lcom/htc/net/wimax/ParcelableInteger;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    new-instance v1, Lcom/sqn/dcc/OutValue;

    new-instance v3, Lcom/sqn/dcc/PhyStatsDl;

    invoke-direct {v3}, Lcom/sqn/dcc/PhyStatsDl;-><init>()V

    invoke-direct {v1, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_0

    const-string v3, "WiMAX"

    const-string v4, "getSignalStrengthDb: phyStatDl == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "WiMAX"

    const-string v4, "getSignalStrengthDb100x: invoke MgtSs.GetPhyStatsDl"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v1}, Lcom/sqn/dcc/MgtSs;->GetPhyStatsDl(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "WiMAX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSignalStrengthDb: error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sqn/dcc/PhyStatsDl;

    iget v2, v2, Lcom/sqn/dcc/PhyStatsDl;->meanRssi:I

    invoke-virtual {p0, v2}, Lcom/htc/net/wimax/ParcelableInteger;->setInteger(I)V

    sget-boolean v2, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v2, :cond_3

    const-string v2, "WiMAX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSignalStrengthDb100x: rssi100x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/net/wimax/ParcelableInteger;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isDcExisting()Z
    .locals 1

    sget-object v0, Lcom/htc/net/wimax/WimaxDcc;->dcInstance:Lcom/sqn/dcc/DeviceController;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mgtGetSsStarted(Lcom/htc/net/wimax/ParcelableBoolean;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v0, -0x1

    if-nez p0, :cond_1

    sget-boolean v2, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "WiMAX"

    const-string v4, "mgtGetSsStarted: enable == null"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Lcom/htc/net/wimax/ParcelableBoolean;

    invoke-direct {p0}, Lcom/htc/net/wimax/ParcelableBoolean;-><init>()V

    :cond_1
    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-virtual {p0}, Lcom/htc/net/wimax/ParcelableBoolean;->toBoolean()Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_2

    const-string v2, "WiMAX"

    const-string v4, "mgtGetSsStarted: started == null!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    :goto_0
    return v2

    :cond_2
    sget-boolean v2, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v2, :cond_3

    const-string v2, "WiMAX"

    const-string v4, "mgtGetSsStarted: invoke MgtSs.GetSsStarted"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v1}, Lcom/sqn/dcc/MgtSs;->GetSsStarted(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    invoke-virtual {v1}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Lcom/htc/net/wimax/ParcelableBoolean;->setValue(Ljava/lang/Boolean;)V

    if-eqz v0, :cond_4

    const-string v2, "WiMAX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mgtGetSsStarted: error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :cond_4
    sget-boolean v2, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v2, :cond_5

    const-string v2, "WiMAX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mgtGetSsStarted: ss started = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/net/wimax/ParcelableBoolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static mgtGetSsState(Lcom/sqn/dcc/swmSsState;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-nez p0, :cond_1

    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "WiMAX"

    const-string v4, "mgtGetSsState: ssState == null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Lcom/sqn/dcc/swmSsState;

    invoke-direct {p0}, Lcom/sqn/dcc/swmSsState;-><init>()V

    :cond_1
    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-direct {v1, p0}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_2

    const-string v3, "WiMAX"

    const-string v4, "mgtGetSsState: state == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_2
    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_3

    const-string v3, "WiMAX"

    const-string v4, "mgtGetSsState: invoke MgtSs.GetSsState"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v1}, Lcom/sqn/dcc/MgtSs;->GetSsState(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v3, "WiMAX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mgtGetSsState: error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget-boolean v2, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v2, :cond_5

    const-string v2, "WiMAX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mgtGetSsState: ss state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sqn/dcc/swmSsState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static mgtSetSsStarted(Z)Z
    .locals 4

    const/4 v0, -0x1

    sget-boolean v1, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "WiMAX"

    const-string v2, "mgtSetSsStarted: invoke MgtSs.SetSsStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Lcom/sqn/dcc/MgtSs;->SetSsStarted(Z)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "WiMAX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mgtSetSsStarted: error status = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static ndssConnectToNetwork(IJSILcom/htc/net/wimax/ParcelableInteger;)Z
    .locals 9

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v6, -0x1

    if-nez p5, :cond_1

    sget-boolean v0, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "WiMAX"

    const-string v1, "ndssConnectToNetwork: status == null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p5, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {p5}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    :cond_1
    new-instance v5, Lcom/sqn/dcc/OutValue;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v5, :cond_2

    const-string v0, "WiMAX"

    const-string v1, "ndssConnectToNetwork: ndssStatus == null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    :goto_0
    return v0

    :cond_2
    sget-boolean v0, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v0, :cond_3

    const-string v0, "WiMAX"

    const-string v1, "ndssConnectToNetwork: invoke Ndss.ConnectToNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sqn/dcc/Ndss;->ConnectToNetwork(IJSILcom/sqn/dcc/OutValue;)I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p5, v8}, Lcom/htc/net/wimax/ParcelableInteger;->setInteger(I)V

    const-string v0, "WiMAX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ndssConnectToNetwork: error status = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p5, v0}, Lcom/htc/net/wimax/ParcelableInteger;->setInteger(Ljava/lang/Integer;)V

    sget-boolean v0, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v0, :cond_5

    const-string v0, "WiMAX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ndssConnectToNetwork: ndss status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Lcom/htc/net/wimax/ParcelableInteger;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static ndssConnectToNetworkExt(IJJSILcom/htc/net/wimax/ParcelableInteger;)Z
    .locals 10

    const/4 v9, -0x1

    if-nez p7, :cond_1

    sget-boolean v1, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "WiMAX"

    const-string v2, "ndssConnectToNetworkExt: status == null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p7, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct/range {p7 .. p7}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    :cond_1
    new-instance v8, Lcom/sqn/dcc/OutValue;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v8, :cond_2

    const-string v1, "WiMAX"

    const-string v2, "ndssConnectToNetworkExt: ndssStatus == null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    sget-boolean v1, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v1, :cond_3

    const-string v1, "WiMAX"

    const-string v2, "ndssConnectToNetwork: invoke Ndss.ConnectToNetworkExt"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v8}, Lcom/sqn/dcc/Ndss;->ConnectToNetworkExt(IJJSILcom/sqn/dcc/OutValue;)I

    move-result v9

    if-eqz v9, :cond_4

    const/4 v1, -0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Lcom/htc/net/wimax/ParcelableInteger;->setInteger(I)V

    const-string v1, "WiMAX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ndssConnectToNetworkExt: error status = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v8}, Lcom/sqn/dcc/OutValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Lcom/htc/net/wimax/ParcelableInteger;->setInteger(Ljava/lang/Integer;)V

    sget-boolean v1, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v1, :cond_5

    invoke-virtual/range {p7 .. p7}, Lcom/htc/net/wimax/ParcelableInteger;->intValue()I

    move-result v1

    if-ltz v1, :cond_6

    invoke-virtual/range {p7 .. p7}, Lcom/htc/net/wimax/ParcelableInteger;->intValue()I

    move-result v1

    sget-object v2, Lcom/htc/net/wimax/WimaxDcc;->ndssStateStr:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    const-string v1, "WiMAX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ndssConnectToNetworkExt: ndss status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/net/wimax/WimaxDcc;->ndssStateStr:[Ljava/lang/String;

    invoke-virtual/range {p7 .. p7}, Lcom/htc/net/wimax/ParcelableInteger;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const-string v1, "WiMAX"

    const-string v2, "ndssConnectToNetworkExt: ndss status = unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static ndssDisconnectFromNetwork(Lcom/htc/net/wimax/ParcelableInteger;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    const-string v3, "WiMAX"

    const-string v4, "ndssDisconnectFromNetwork: status == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {p0}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    :cond_0
    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-virtual {p0}, Lcom/htc/net/wimax/ParcelableInteger;->toInteger()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_1

    const-string v3, "WiMAX"

    const-string v4, "ndssDisconnectFromNetwork: ndssStatus == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_1
    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_2

    const-string v3, "WiMAX"

    const-string v4, "ndssDisconnectFromNetwork: invoke Ndss.DisconnectFromNetwork"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v1}, Lcom/sqn/dcc/Ndss;->DisconnectFromNetwork(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v3, "WiMAX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ndssDisconnectFromNetwork: error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/htc/net/wimax/ParcelableInteger;->intValue()I

    move-result v2

    if-ltz v2, :cond_5

    invoke-virtual {p0}, Lcom/htc/net/wimax/ParcelableInteger;->intValue()I

    move-result v2

    sget-object v3, Lcom/htc/net/wimax/WimaxDcc;->ndssStateStr:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    const-string v2, "WiMAX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ndssDisconnectFromNetwork: ndss status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/net/wimax/WimaxDcc;->ndssStateStr:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/net/wimax/ParcelableInteger;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const-string v2, "WiMAX"

    const-string v3, "ndssDisconnectFromNetwork: ndss status = unknown"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static ndssGetNdsConfig(Lcom/sqn/dcc/ConnectionConfig;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    const-string v3, "WiMAX"

    const-string v4, "ndssGetNdsConfig: connectionConfig == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sqn/dcc/ConnectionConfig;

    invoke-direct {p0}, Lcom/sqn/dcc/ConnectionConfig;-><init>()V

    :cond_0
    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-direct {v1, p0}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_1

    const-string v3, "WiMAX"

    const-string v4, "ndssGetNdsConfig: connectionConfig == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_1
    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_2

    const-string v3, "WiMAX"

    const-string v4, "ndssGetNdsConfig: invoke Ndss.GetNdsConfig"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v1}, Lcom/sqn/dcc/Ndss;->GetNdsConfig(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v3, "WiMAX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ndssGetNdsConfig: error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static ndssGetScanResults([Lcom/sqn/dcc/ScanResult;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "WiMAX"

    const-string v4, "ndssGetScanResults: result == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/sqn/dcc/OutArray;

    invoke-direct {v1, p0}, Lcom/sqn/dcc/OutArray;-><init>([Ljava/lang/Object;)V

    if-nez v1, :cond_1

    const-string v3, "WiMAX"

    const-string v4, "ndssGetScanResults: scanResult == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_1
    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_2

    const-string v3, "WiMAX"

    const-string v4, "ndssGetScanResults: invoke Ndss.GetScanResults"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v1}, Lcom/sqn/dcc/Ndss;->GetScanResults(Lcom/sqn/dcc/OutArray;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v3, "WiMAX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ndssGetScanResults: error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const-string v3, "WiMAX"

    const-string v4, "ndssGetScanResults: result == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static ndssGetScanResultsExt([Lcom/sqn/dcc/ScanResultExt;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "WiMAX"

    const-string v4, "ndssGetScanResultsExt: result == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/sqn/dcc/OutArray;

    invoke-direct {v1, p0}, Lcom/sqn/dcc/OutArray;-><init>([Ljava/lang/Object;)V

    if-nez v1, :cond_1

    const-string v3, "WiMAX"

    const-string v4, "ndssGetScanResultsExt: scanResult == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_1
    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_2

    const-string v3, "WiMAX"

    const-string v4, "ndssGetScanResultsExt: invoke Ndss.GetScanResultsExt"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {v1}, Lcom/sqn/dcc/Ndss;->GetScanResultsExt(Lcom/sqn/dcc/OutArray;)I

    move-result v0

    if-eqz v0, :cond_3

    const-string v3, "WiMAX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ndssGetScanResultsExt: error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const-string v3, "WiMAX"

    const-string v4, "ndssGetScanResultsExt: result == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static ndssGetScanResultsExtBand()[Lcom/sqn/dcc/ScanResultExtBand;
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    new-instance v1, Lcom/sqn/dcc/OutArray;

    invoke-direct {v1}, Lcom/sqn/dcc/OutArray;-><init>()V

    if-nez v1, :cond_0

    const-string v3, "WiMAX"

    const-string v4, "ndssGetScanResultsExtBand: scanResult == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    :cond_0
    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "WiMAX"

    const-string v4, "ndssGetScanResultsExtBand: invoke Ndss.GetScanResultsExtBand"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v1}, Lcom/sqn/dcc/Ndss;->GetScanResultsExtBand(Lcom/sqn/dcc/OutArray;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "WiMAX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ndssGetScanResultsExtBand: error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sqn/dcc/OutArray;->get()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sqn/dcc/ScanResultExtBand;

    goto :goto_0

    :cond_3
    const-string v3, "WiMAX"

    const-string v4, "ndssGetScanResultsExtBand: scanResult == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static ndssScan(Lcom/htc/net/wimax/ParcelableInteger;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-nez p0, :cond_1

    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "WiMAX"

    const-string v4, "ndssScan: status == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {p0}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    :cond_1
    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-virtual {p0}, Lcom/htc/net/wimax/ParcelableInteger;->toInteger()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_2

    const-string v3, "WiMAX"

    const-string v4, "ndssScan: ndssStatus == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_2
    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_3

    const-string v3, "WiMAX"

    const-string v4, "ndssScan: invoke Ndss.Scan"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v1}, Lcom/sqn/dcc/Ndss;->Scan(Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string v3, "WiMAX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ndssScan: error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget-boolean v2, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/htc/net/wimax/ParcelableInteger;->intValue()I

    move-result v2

    if-ltz v2, :cond_6

    invoke-virtual {p0}, Lcom/htc/net/wimax/ParcelableInteger;->intValue()I

    move-result v2

    sget-object v3, Lcom/htc/net/wimax/WimaxDcc;->ndssStateStr:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    const-string v2, "WiMAX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ndssScan: ndss status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/net/wimax/WimaxDcc;->ndssStateStr:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/net/wimax/ParcelableInteger;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    const-string v2, "WiMAX"

    const-string v3, "ndssScan: ndss status = unknown"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static ndssSetNdsConfig(Lcom/sqn/dcc/ConnectionConfig;Lcom/htc/net/wimax/ParcelableInteger;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-nez p0, :cond_0

    const-string v3, "WiMAX"

    const-string v4, "ndssSetNdsConfig: config == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    if-nez p1, :cond_2

    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_1

    const-string v3, "WiMAX"

    const-string v4, "ndssSetNdsConfig: status == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance p1, Lcom/htc/net/wimax/ParcelableInteger;

    invoke-direct {p1}, Lcom/htc/net/wimax/ParcelableInteger;-><init>()V

    :cond_2
    new-instance v1, Lcom/sqn/dcc/OutValue;

    invoke-virtual {p1}, Lcom/htc/net/wimax/ParcelableInteger;->toInteger()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sqn/dcc/OutValue;-><init>(Ljava/lang/Object;)V

    if-nez v1, :cond_3

    const-string v3, "WiMAX"

    const-string v4, "ndssSetNdsConfig: ndssStatus == null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-boolean v3, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v3, :cond_4

    const-string v3, "WiMAX"

    const-string v4, "ndssSetNdsConfig: invoke Ndss.SetNdsConfig"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {p0, v1}, Lcom/sqn/dcc/Ndss;->SetNdsConfig(Lcom/sqn/dcc/ConnectionConfig;Lcom/sqn/dcc/OutValue;)I

    move-result v0

    if-eqz v0, :cond_5

    const-string v3, "WiMAX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ndssSetNdsConfig: error status = 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    sget-boolean v2, Lcom/htc/net/wimax/WimaxDcc;->LOCAL_LOGD:Z

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/htc/net/wimax/ParcelableInteger;->intValue()I

    move-result v2

    if-ltz v2, :cond_7

    invoke-virtual {p1}, Lcom/htc/net/wimax/ParcelableInteger;->intValue()I

    move-result v2

    sget-object v3, Lcom/htc/net/wimax/WimaxDcc;->ndssStateStr:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_7

    const-string v2, "WiMAX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ndssSetNdsConfig: ndss status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/net/wimax/WimaxDcc;->ndssStateStr:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/net/wimax/ParcelableInteger;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_7
    const-string v2, "WiMAX"

    const-string v3, "ndssSetNdsConfig: ndss status = unknown"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static pause(I)V
    .locals 4

    int-to-long v1, p0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WiMAX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pause: msg=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
