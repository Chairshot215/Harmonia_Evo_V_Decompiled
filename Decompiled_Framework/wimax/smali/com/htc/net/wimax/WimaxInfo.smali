.class public Lcom/htc/net/wimax/WimaxInfo;
.super Ljava/lang/Object;
.source "WimaxInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/wimax/WimaxInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final LINK_SPEED_UNITS:Ljava/lang/String; = "Mbit/s"

.field private static final TAG:Ljava/lang/String; = "WimaxInfo"

.field private static final stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sqn/dcc/swmSsState$State;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBsMacAddress:J

.field private mFrequency:J

.field private mIpAddress:I

.field private mLinkSpeed:D

.field private mNapId:I

.field private mNetworkId:I

.field private mNspId:I

.field private mNspName:Ljava/lang/String;

.field private mSignalStrength:I

.field private mSsState:Lcom/sqn/dcc/swmSsState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sqn/dcc/swmSsState$State;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/htc/net/wimax/WimaxInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/htc/net/wimax/WimaxInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_DL_SYNCHRONIZATION:Lcom/sqn/dcc/swmSsState$State;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_HANDOVER_DL_ACQ:Lcom/sqn/dcc/swmSsState$State;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_UL_ACQUISITION:Lcom/sqn/dcc/swmSsState$State;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_RANGING:Lcom/sqn/dcc/swmSsState$State;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_HANDOVER_RANGING:Lcom/sqn/dcc/swmSsState$State;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_CAPABILITIES_NEGOTIATION:Lcom/sqn/dcc/swmSsState$State;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_AUTHORIZATION:Lcom/sqn/dcc/swmSsState$State;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_REGISTRATION:Lcom/sqn/dcc/swmSsState$State;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_DHCP:Lcom/sqn/dcc/swmSsState$State;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_TOD:Lcom/sqn/dcc/swmSsState$State;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_TFTP:Lcom/sqn/dcc/swmSsState$State;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_OPERATIONAL:Lcom/sqn/dcc/swmSsState$State;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_SLEEP:Lcom/sqn/dcc/swmSsState$State;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_IDLE:Lcom/sqn/dcc/swmSsState$State;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_ABORTED:Lcom/sqn/dcc/swmSsState$State;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_INVALID:Lcom/sqn/dcc/swmSsState$State;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/net/wimax/WimaxInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sqn/dcc/swmSsState$State;->SWM_SS_INIT:Lcom/sqn/dcc/swmSsState$State;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/htc/net/wimax/WimaxInfo$1;

    invoke-direct {v0}, Lcom/htc/net/wimax/WimaxInfo$1;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/WimaxInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sqn/dcc/swmSsState;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/sqn/dcc/swmSsState;-><init>(I)V

    iput-object v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mSsState:Lcom/sqn/dcc/swmSsState;

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mLinkSpeed:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mNetworkId:I

    return-void
.end method

.method static synthetic access$002(Lcom/htc/net/wimax/WimaxInfo;I)I
    .locals 0

    iput p1, p0, Lcom/htc/net/wimax/WimaxInfo;->mNapId:I

    return p1
.end method

.method static synthetic access$102(Lcom/htc/net/wimax/WimaxInfo;I)I
    .locals 0

    iput p1, p0, Lcom/htc/net/wimax/WimaxInfo;->mNspId:I

    return p1
.end method

.method static synthetic access$202(Lcom/htc/net/wimax/WimaxInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxInfo;->mNspName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/htc/net/wimax/WimaxInfo;D)D
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/wimax/WimaxInfo;->mLinkSpeed:D

    return-wide p1
.end method

.method static synthetic access$402(Lcom/htc/net/wimax/WimaxInfo;J)J
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/wimax/WimaxInfo;->mFrequency:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/htc/net/wimax/WimaxInfo;I)I
    .locals 0

    iput p1, p0, Lcom/htc/net/wimax/WimaxInfo;->mIpAddress:I

    return p1
.end method

.method static synthetic access$602(Lcom/htc/net/wimax/WimaxInfo;I)I
    .locals 0

    iput p1, p0, Lcom/htc/net/wimax/WimaxInfo;->mSignalStrength:I

    return p1
.end method

.method static synthetic access$702(Lcom/htc/net/wimax/WimaxInfo;J)J
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/wimax/WimaxInfo;->mBsMacAddress:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/htc/net/wimax/WimaxInfo;Lcom/sqn/dcc/swmSsState;)Lcom/sqn/dcc/swmSsState;
    .locals 0

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxInfo;->mSsState:Lcom/sqn/dcc/swmSsState;

    return-object p1
.end method

.method static synthetic access$902(Lcom/htc/net/wimax/WimaxInfo;I)I
    .locals 0

    iput p1, p0, Lcom/htc/net/wimax/WimaxInfo;->mNetworkId:I

    return p1
.end method

.method public static getDetailedStateBySsState(Lcom/sqn/dcc/swmSsState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 4

    sget-object v1, Lcom/htc/net/wimax/WimaxInfo;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {p0}, Lcom/sqn/dcc/swmSsState;->getEnumState()Lcom/sqn/dcc/swmSsState$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "WimaxInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDetailedStateBySsState: ssState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sqn/dcc/swmSsState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBsMacAddress()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mBsMacAddress:J

    return-wide v0
.end method

.method public getFrequency()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mFrequency:J

    return-wide v0
.end method

.method public getIpAddress()I
    .locals 1

    iget v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mIpAddress:I

    return v0
.end method

.method public getLinkSpeed()D
    .locals 2

    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mLinkSpeed:D

    return-wide v0
.end method

.method public getNapId()I
    .locals 1

    iget v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mNapId:I

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    iget v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mNetworkId:I

    return v0
.end method

.method public getNspId()I
    .locals 1

    iget v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mNspId:I

    return v0
.end method

.method public getNspName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mNspName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignalStrength()I
    .locals 1

    iget v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mSignalStrength:I

    return v0
.end method

.method public getSsState()Lcom/sqn/dcc/swmSsState;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mSsState:Lcom/sqn/dcc/swmSsState;

    return-object v0
.end method

.method setBsMacAddress(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/wimax/WimaxInfo;->mBsMacAddress:J

    return-void
.end method

.method setFrequency(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/wimax/WimaxInfo;->mFrequency:J

    return-void
.end method

.method setIpAddress(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/wimax/WimaxInfo;->mIpAddress:I

    return-void
.end method

.method setLinkSpeed(D)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/wimax/WimaxInfo;->mLinkSpeed:D

    return-void
.end method

.method setNapId(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/wimax/WimaxInfo;->mNapId:I

    return-void
.end method

.method setNspId(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/wimax/WimaxInfo;->mNspId:I

    return-void
.end method

.method setNspName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxInfo;->mNspName:Ljava/lang/String;

    return-void
.end method

.method setSignalStrength(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/wimax/WimaxInfo;->mSignalStrength:I

    return-void
.end method

.method setSsState(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mSsState:Lcom/sqn/dcc/swmSsState;

    iput p1, v0, Lcom/sqn/dcc/swmSsState;->value:I

    return-void
.end method

.method setSsState(Lcom/sqn/dcc/swmSsState;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/wimax/WimaxInfo;->mSsState:Lcom/sqn/dcc/swmSsState;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mNapId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mNspId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mNspName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mLinkSpeed:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mFrequency:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mIpAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mBsMacAddress:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mSsState:Lcom/sqn/dcc/swmSsState;

    invoke-virtual {v0, p1, p2}, Lcom/sqn/dcc/swmSsState;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/htc/net/wimax/WimaxInfo;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
