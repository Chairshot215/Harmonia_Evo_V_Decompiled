.class public Lcom/htc/net/wimax/Wimax4GBaseStationInfo;
.super Lcom/htc/net/FourG/FourGBaseStationInfo;
.source "Wimax4GBaseStationInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/wimax/Wimax4GBaseStationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private asnGatewayId:Ljava/lang/String;

.field protected dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

.field protected napId:J

.field protected preamble:J

.field protected realm:Ljava/lang/String;

.field protected ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

.field private vendorId:I

.field private vendorInfo:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo$1;

    invoke-direct {v0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo$1;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/high16 v1, -0x8000

    invoke-direct {p0}, Lcom/htc/net/FourG/FourGBaseStationInfo;-><init>()V

    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    iput-wide v1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    iput-wide v1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    const-string v0, "-1"

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/htc/net/FourG/FourGBaseStationInfo;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    return-void
.end method

.method public constructor <init>(Lcom/htc/net/wimax/Wimax4GBaseStationInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/htc/net/FourG/FourGBaseStationInfo;-><init>(Lcom/htc/net/FourG/FourGBaseStationInfo;)V

    iget-object v0, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iget-object v0, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    iget-wide v0, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    iget-wide v0, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    iget v0, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    iput v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    iget-object v0, p1, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const-wide/high16 v1, -0x8000

    invoke-super {p0}, Lcom/htc/net/FourG/FourGBaseStationInfo;->clear()V

    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    iput-wide v1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    iput-wide v1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    const-string v0, "-1"

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    return-void
.end method

.method public getASNGatewayId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDownlinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    goto :goto_0
.end method

.method public getNapId()J
    .locals 2

    invoke-virtual {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    goto :goto_0
.end method

.method public getPreamble()J
    .locals 2

    invoke-virtual {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    goto :goto_0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUplinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->FOURG_MODULATION_NONE_LINK_DOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    goto :goto_0
.end method

.method public getVendorID()I
    .locals 1

    iget v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    return v0
.end method

.method public getVendorSpecificInformation()[B
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/net/FourG/FourGBaseStationInfo;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    return-void
.end method

.method public setASNGatewayId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    return-void
.end method

.method public setDownlinkModulation(Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    return-void
.end method

.method public setNapId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    return-void
.end method

.method public setPreamble(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    return-void
.end method

.method public setUplinkModulation(Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    return-void
.end method

.method public setVendorID(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    return-void
.end method

.method public setVendorSpecificInformation([B)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;

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

    invoke-super {p0}, Lcom/htc/net/FourG/FourGBaseStationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DownlinkModulation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", UplinkModulation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", ASNGetewayId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Preamble: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Realm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", VendorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", VendorSpecificInformation {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

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
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/htc/net/FourG/FourGBaseStationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->dlModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-virtual {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->ulModulation:Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;

    invoke-virtual {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->asnGatewayId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->preamble:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->napId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->realm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/net/wimax/Wimax4GBaseStationInfo;->vendorInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
