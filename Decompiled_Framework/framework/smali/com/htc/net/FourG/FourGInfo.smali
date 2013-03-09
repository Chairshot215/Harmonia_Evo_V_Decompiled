.class public abstract Lcom/htc/net/FourG/FourGInfo;
.super Ljava/lang/Object;
.source "FourGInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;,
        Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;
    }
.end annotation


# static fields
.field public static final LINK_SPEED_UNITS:Ljava/lang/String; = "Mbps"

.field private static final TAG:Ljava/lang/String; = "FourGInfo"

.field private static final stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/htc/net/FourG/FourGSupplicantState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dlLinkSpeed:I

.field private ipAddr:I

.field private linkStateDetail:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

.field private linkStateReason:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

.field private macAddr:Ljava/lang/String;

.field private net4gState:I

.field private networkId:I

.field protected txPower:F

.field private ulLinkSpeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/htc/net/FourG/FourGSupplicantState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->ASSOCIATED:Lcom/htc/net/FourG/FourGSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->ASSOCIATING:Lcom/htc/net/FourG/FourGSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->COMPLETED:Lcom/htc/net/FourG/FourGSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->DISCONNECTED:Lcom/htc/net/FourG/FourGSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->DORMANT:Lcom/htc/net/FourG/FourGSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->HANDSHAKE:Lcom/htc/net/FourG/FourGSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->INACTIVE:Lcom/htc/net/FourG/FourGSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->INVALID:Lcom/htc/net/FourG/FourGSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/htc/net/FourG/FourGSupplicantState;->SCANNING:Lcom/htc/net/FourG/FourGSupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->LINK_ST_REASON_FAILURE_UNKNOWN_CAUSE:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    iput-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateReason:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    sget-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_NOT_CONNECTED:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    iput-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateDetail:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    iput v1, p0, Lcom/htc/net/FourG/FourGInfo;->ipAddr:I

    iput v1, p0, Lcom/htc/net/FourG/FourGInfo;->dlLinkSpeed:I

    iput v1, p0, Lcom/htc/net/FourG/FourGInfo;->ulLinkSpeed:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->macAddr:Ljava/lang/String;

    iput v1, p0, Lcom/htc/net/FourG/FourGInfo;->networkId:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->txPower:F

    iput v1, p0, Lcom/htc/net/FourG/FourGInfo;->net4gState:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/htc/net/FourG/FourGInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateReason:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    sget-object v0, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_NOT_CONNECTED:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    iput-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateDetail:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    iput v1, p0, Lcom/htc/net/FourG/FourGInfo;->ipAddr:I

    iput v1, p0, Lcom/htc/net/FourG/FourGInfo;->dlLinkSpeed:I

    iput v1, p0, Lcom/htc/net/FourG/FourGInfo;->ulLinkSpeed:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->macAddr:Ljava/lang/String;

    iput v1, p0, Lcom/htc/net/FourG/FourGInfo;->networkId:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->txPower:F

    iput v1, p0, Lcom/htc/net/FourG/FourGInfo;->net4gState:I

    return-void
.end method

.method public static getDetailedStateOf(Lcom/htc/net/FourG/FourGSupplicantState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    sget-object v0, Lcom/htc/net/FourG/FourGInfo;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->ipAddr:I

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->dlLinkSpeed:I

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->ulLinkSpeed:I

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->networkId:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->txPower:F

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;
.end method

.method public get4GState()I
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->net4gState:I

    return v0
.end method

.method public getBSID()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/net/FourG/FourGInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo;->getBSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCinr()I
    .locals 3

    const/16 v1, 0x3f

    invoke-virtual {p0}, Lcom/htc/net/FourG/FourGInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/net/FourG/FourGBaseStationInfo;->getCINR()I

    move-result v2

    add-int/lit8 v0, v2, 0xa

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDlLinkSpeed()I
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->dlLinkSpeed:I

    return v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 7

    const/4 v6, 0x4

    iget v5, p0, Lcom/htc/net/FourG/FourGInfo;->ipAddr:I

    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    new-array v1, v6, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_0

    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    shr-int/lit8 v4, v4, 0x8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getIpAddress()I
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->ipAddr:I

    return v0
.end method

.method public getLinkSpeed()I
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->dlLinkSpeed:I

    return v0
.end method

.method public getLinkStateDetailed()Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateDetail:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    return-object v0
.end method

.method public getLinkStateReason()Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateReason:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->macAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkId()I
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->networkId:I

    return v0
.end method

.method public getRssi()I
    .locals 3

    const/16 v1, 0x53

    invoke-virtual {p0}, Lcom/htc/net/FourG/FourGInfo;->get4GBaseStationInfoServing()Lcom/htc/net/FourG/FourGBaseStationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/net/FourG/FourGBaseStationInfo;->getRSSI()I

    move-result v2

    add-int/lit8 v0, v2, 0x7b

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getSupplicantState()Lcom/htc/net/FourG/FourGSupplicantState;
.end method

.method public getTxPower()I
    .locals 3

    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->txPower:F

    const/high16 v1, -0x3d58

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/high16 v0, -0x3d58

    :cond_0
    :goto_0
    const/high16 v1, 0x42a8

    add-float/2addr v1, v0

    const/high16 v2, 0x4000

    mul-float v0, v1, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    return v1

    :cond_1
    const/high16 v1, 0x422e

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    const/high16 v0, 0x422e

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, -0x3d58

    goto :goto_0
.end method

.method public getUlLinkSpeed()I
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->ulLinkSpeed:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateReason:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateDetail:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->ipAddr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->dlLinkSpeed:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->ulLinkSpeed:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->macAddr:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->networkId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->txPower:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGInfo;->net4gState:I

    return-void
.end method

.method public set4GState(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/FourGInfo;->net4gState:I

    return-void
.end method

.method public setDlLinkSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/FourGInfo;->dlLinkSpeed:I

    return-void
.end method

.method public setIpAddress(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/FourGInfo;->ipAddr:I

    return-void
.end method

.method public setLinkStateDetailed(Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateDetail:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    return-void
.end method

.method public setLinkStateReason(Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateReason:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/FourG/FourGInfo;->macAddr:Ljava/lang/String;

    return-void
.end method

.method public setNetworkId(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/FourGInfo;->networkId:I

    return-void
.end method

.method public setTxPower(F)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/FourGInfo;->txPower:F

    return-void
.end method

.method public setUlLinkSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/FourGInfo;->ulLinkSpeed:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/htc/net/FourG/FourGInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LinkStateDetail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateDetail:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", LinkStateReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateReason:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", IpAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGInfo;->ipAddr:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DlLinkSpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGInfo;->dlLinkSpeed:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", UlLinkSpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGInfo;->ulLinkSpeed:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", MacAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/FourGInfo;->macAddr:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NetworkID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGInfo;->networkId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TxPower: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGInfo;->txPower:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Net4GState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGInfo;->net4gState:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateReason:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;

    invoke-virtual {v0}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_REASON;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->linkStateDetail:Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0}, Lcom/htc/net/FourG/FourGInfo$LINK_STATE_DETAIL;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->ipAddr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->dlLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->ulLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/net/FourG/FourGInfo;->macAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->networkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->txPower:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/htc/net/FourG/FourGInfo;->net4gState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
