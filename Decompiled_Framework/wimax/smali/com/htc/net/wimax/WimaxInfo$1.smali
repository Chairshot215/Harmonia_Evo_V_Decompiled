.class final Lcom/htc/net/wimax/WimaxInfo$1;
.super Ljava/lang/Object;
.source "WimaxInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/WimaxInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/htc/net/wimax/WimaxInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/net/wimax/WimaxInfo;
    .locals 3

    new-instance v0, Lcom/htc/net/wimax/WimaxInfo;

    invoke-direct {v0}, Lcom/htc/net/wimax/WimaxInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/htc/net/wimax/WimaxInfo;->mNapId:I
    invoke-static {v0, v1}, Lcom/htc/net/wimax/WimaxInfo;->access$002(Lcom/htc/net/wimax/WimaxInfo;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/htc/net/wimax/WimaxInfo;->mNspId:I
    invoke-static {v0, v1}, Lcom/htc/net/wimax/WimaxInfo;->access$102(Lcom/htc/net/wimax/WimaxInfo;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/net/wimax/WimaxInfo;->mNspName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/net/wimax/WimaxInfo;->access$202(Lcom/htc/net/wimax/WimaxInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    #setter for: Lcom/htc/net/wimax/WimaxInfo;->mLinkSpeed:D
    invoke-static {v0, v1, v2}, Lcom/htc/net/wimax/WimaxInfo;->access$302(Lcom/htc/net/wimax/WimaxInfo;D)D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    #setter for: Lcom/htc/net/wimax/WimaxInfo;->mFrequency:J
    invoke-static {v0, v1, v2}, Lcom/htc/net/wimax/WimaxInfo;->access$402(Lcom/htc/net/wimax/WimaxInfo;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/htc/net/wimax/WimaxInfo;->mIpAddress:I
    invoke-static {v0, v1}, Lcom/htc/net/wimax/WimaxInfo;->access$502(Lcom/htc/net/wimax/WimaxInfo;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/htc/net/wimax/WimaxInfo;->mSignalStrength:I
    invoke-static {v0, v1}, Lcom/htc/net/wimax/WimaxInfo;->access$602(Lcom/htc/net/wimax/WimaxInfo;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    #setter for: Lcom/htc/net/wimax/WimaxInfo;->mBsMacAddress:J
    invoke-static {v0, v1, v2}, Lcom/htc/net/wimax/WimaxInfo;->access$702(Lcom/htc/net/wimax/WimaxInfo;J)J

    sget-object v1, Lcom/sqn/dcc/swmSsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sqn/dcc/swmSsState;

    #setter for: Lcom/htc/net/wimax/WimaxInfo;->mSsState:Lcom/sqn/dcc/swmSsState;
    invoke-static {v0, v1}, Lcom/htc/net/wimax/WimaxInfo;->access$802(Lcom/htc/net/wimax/WimaxInfo;Lcom/sqn/dcc/swmSsState;)Lcom/sqn/dcc/swmSsState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/htc/net/wimax/WimaxInfo;->mNetworkId:I
    invoke-static {v0, v1}, Lcom/htc/net/wimax/WimaxInfo;->access$902(Lcom/htc/net/wimax/WimaxInfo;I)I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/net/wimax/WimaxInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/net/wimax/WimaxInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/net/wimax/WimaxInfo;
    .locals 1

    new-array v0, p1, [Lcom/htc/net/wimax/WimaxInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/net/wimax/WimaxInfo$1;->newArray(I)[Lcom/htc/net/wimax/WimaxInfo;

    move-result-object v0

    return-object v0
.end method
