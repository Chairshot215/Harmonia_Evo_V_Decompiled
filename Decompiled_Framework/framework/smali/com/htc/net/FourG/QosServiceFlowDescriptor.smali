.class public abstract Lcom/htc/net/FourG/QosServiceFlowDescriptor;
.super Ljava/lang/Object;
.source "QosServiceFlowDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;,
        Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;,
        Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;,
        Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;,
        Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;
    }
.end annotation


# instance fields
.field protected description:Ljava/lang/String;

.field private destIp:Ljava/net/InetAddress;

.field private destIpMask:Ljava/net/InetAddress;

.field private direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

.field private ipPortHigh:I

.field private ipPortLow:I

.field private localId:I

.field private modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

.field private origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

.field private sfid:I

.field private state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

.field private trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->description:Ljava/lang/String;

    sget-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_LOCAL_NEW_DESC:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    iput-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    sget-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;->SF_ORIGIN_MS_INITIATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    iput-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    sget-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;->SF_DIRECTION_UPLINK:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    iput-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    sget-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;->SF_MODIFIED_NO_AS_INITIATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    iput-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    sget-object v0, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;->SF_TRAFFIC_TYPE_UDP:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    iput-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->description:Ljava/lang/String;

    const-class v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    const-class v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    const-class v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    const-class v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    const-class v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->description:Ljava/lang/String;

    sget-object v2, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->SF_STATE_LOCAL_NEW_DESC:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    iput-object p2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    :try_start_0
    sget-object v2, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;->SF_DIRECTION_DOWNLINK:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    if-ne p2, v2, :cond_0

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v2, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;->SF_ORIGIN_MS_INITIATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    sget-object v2, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;->SF_MODIFIED_NO_AS_INITIATED:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    sget-object v2, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;->SF_TRAFFIC_TYPE_UDP:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    iput v3, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    iput v3, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    iput v3, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    iput v3, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    return-void

    :cond_0
    const/4 v2, 0x4

    :try_start_1
    new-array v1, v2, [B

    fill-array-data v1, :array_0

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public getDestinationIpAddr()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getDestinationIpAddrMask()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getDestinationIpPortHigh()I
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    return v0
.end method

.method public getDestinationIpPortLow()I
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    return v0
.end method

.method public getDirection()Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    return-object v0
.end method

.method public getLocalID()I
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    return v0
.end method

.method public getModificationState()Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    return-object v0
.end method

.method public getOrigin()Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    return-object v0
.end method

.method public getSFID()I
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    return v0
.end method

.method public getState()Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    return-object v0
.end method

.method public getTrafficType()Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    return-object v0
.end method

.method setDestination(Ljava/net/InetAddress;Ljava/net/InetAddress;IILcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    iput-object p2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    iput p3, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    iput p4, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    iput-object p5, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    return-void
.end method

.method public setDestinationIpAddr(Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    return-void
.end method

.method public setDestinationIpAddrMask(Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    return-void
.end method

.method public setDestinationIpPortHigh(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    return-void
.end method

.method public setDestinationIpPortLow(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    return-void
.end method

.method public setDirection(Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    return-void
.end method

.method public setLocalID(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    return-void
.end method

.method public setModificationState(Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    return-void
.end method

.method public setOrigin(Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    return-void
.end method

.method public setSFID(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    return-void
.end method

.method public setState(Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    return-void
.end method

.method public setTrafficType(Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/htc/net/FourG/QosServiceFlowDescriptor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    invoke-virtual {v2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", LocalID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", SFID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Origin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    invoke-virtual {v2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    invoke-virtual {v2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Modified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    invoke-virtual {v2}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", TrafficType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DestIP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DestIPMask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", IpPortHigh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", IpPortLow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

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

    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->state:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;

    invoke-virtual {v0}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_STATE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->origin:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;

    invoke-virtual {v0}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_ORIGIN;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->direction:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;

    invoke-virtual {v0}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_DIRECTION;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->modified:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;

    invoke-virtual {v0}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_MODIFIED;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->trafficType:Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;

    invoke-virtual {v0}, Lcom/htc/net/FourG/QosServiceFlowDescriptor$eSF_TRAFFIC_TYPE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIp:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->destIpMask:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortHigh:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->ipPortLow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->localId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/net/FourG/QosServiceFlowDescriptor;->sfid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
