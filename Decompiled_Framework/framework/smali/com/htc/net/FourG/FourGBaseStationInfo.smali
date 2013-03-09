.class public abstract Lcom/htc/net/FourG/FourGBaseStationInfo;
.super Ljava/lang/Object;
.source "FourGBaseStationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;,
        Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;
    }
.end annotation


# instance fields
.field protected altitude:F

.field protected bsid:Ljava/lang/String;

.field protected cinr:I

.field protected connected:Z

.field protected dlFrequency:J

.field protected latitude:F

.field protected longitude:F

.field protected nspId:J

.field protected nspName:Ljava/lang/String;

.field protected nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

.field protected rssi:I

.field protected rtd:I

.field protected rtdMeasurementAge:I

.field protected rtdMeasurementError:I

.field protected ulFrequency:J


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/high16 v2, -0x8000

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "000000000000"

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    iput-wide v4, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    iput-wide v4, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    iput v3, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    iput v3, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    iput v3, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_UNKNOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/net/FourG/FourGBaseStationInfo;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    iget-wide v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    iget-wide v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    iget-wide v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    iget-object v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    iget v0, p1, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/high16 v2, -0x8000

    const-string v0, "000000000000"

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    iput-wide v4, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    iput-wide v4, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    iput v3, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    iput v3, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    iput v3, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_UNKNOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    iput v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAltitude()F
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    return v0
.end method

.method public getBSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    return-object v0
.end method

.method public getCINR()I
    .locals 1

    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    const/high16 v0, -0x8000

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    goto :goto_0
.end method

.method public abstract getDownlinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;
.end method

.method public getFrequencyDownlink()J
    .locals 2

    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    goto :goto_0
.end method

.method public getFrequencyUplink()J
    .locals 2

    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    goto :goto_0
.end method

.method public getLatitude()F
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    return v0
.end method

.method public getLongitude()F
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    return v0
.end method

.method public getNetworkType()Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;
    .locals 1

    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_UNKNOWN:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    goto :goto_0
.end method

.method public getNspId()J
    .locals 2

    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    goto :goto_0
.end method

.method public getNspName()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRSSI()I
    .locals 1

    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-nez v0, :cond_0

    const/high16 v0, -0x8000

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    goto :goto_0
.end method

.method public getRTD()I
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    return v0
.end method

.method public getRTDMeasurementAge()I
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    return v0
.end method

.method public getRTDMeasurementError()I
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    return v0
.end method

.method public abstract getUplinkModulation()Lcom/htc/net/FourG/FourGBaseStationInfo$eFOURG_MODULATION;
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;->valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAltitude(F)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    return-void
.end method

.method public setBSID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    return-void
.end method

.method public setCINR(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    return-void
.end method

.method public setConnected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    return-void
.end method

.method public setFrequencyDownlink(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    return-void
.end method

.method public setFrequencyUplink(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    return-void
.end method

.method public setLatitude(F)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    return-void
.end method

.method public setLongitude(F)V
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    iput v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    return-void
.end method

.method public setNetworkType(Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    return-void
.end method

.method public setNspId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    return-void
.end method

.method public setNspName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    return-void
.end method

.method public setRSSI(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    return-void
.end method

.method public setRTD(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    return-void
.end method

.method public setRTDMeasurementAge(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    return-void
.end method

.method public setRTDMeasurementError(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/htc/net/FourG/FourGBaseStationInfo;

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

    const-string v2, "BSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", UplinkFrequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", DownlinkFrequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", RSSI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", CINR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NspId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NspName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Longitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Latitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Altitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NspNetworkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", RTD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", RTDMeasurementAge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", RTDMEasurementError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

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
    .locals 2

    iget-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->bsid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->connected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->ulFrequency:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->dlFrequency:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->cinr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->longitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->latitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->altitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->nspNetworkType:Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;

    invoke-virtual {v0}, Lcom/htc/net/FourG/FourGBaseStationInfo$eNSP_NETWORK_TYPE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementAge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/net/FourG/FourGBaseStationInfo;->rtdMeasurementError:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
