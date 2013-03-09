.class public Lcom/htc/net/usbnet/UsbnetInfo;
.super Ljava/lang/Object;
.source "UsbnetInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/usbnet/UsbnetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final LINK_SPEED_UNITS:Ljava/lang/String; = "Mbit/s"

.field private static final TAG:Ljava/lang/String; = "UsbnetInfo"


# instance fields
.field private mBsMacAddress:J

.field private mIpAddress:I

.field private mLinkSpeed:D

.field private mNetworkId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/net/usbnet/UsbnetInfo$1;

    invoke-direct {v0}, Lcom/htc/net/usbnet/UsbnetInfo$1;-><init>()V

    sput-object v0, Lcom/htc/net/usbnet/UsbnetInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/htc/net/usbnet/UsbnetInfo;->mLinkSpeed:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/net/usbnet/UsbnetInfo;->mNetworkId:I

    return-void
.end method

.method static synthetic access$002(Lcom/htc/net/usbnet/UsbnetInfo;D)D
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/usbnet/UsbnetInfo;->mLinkSpeed:D

    return-wide p1
.end method

.method static synthetic access$102(Lcom/htc/net/usbnet/UsbnetInfo;I)I
    .locals 0

    iput p1, p0, Lcom/htc/net/usbnet/UsbnetInfo;->mIpAddress:I

    return p1
.end method

.method static synthetic access$202(Lcom/htc/net/usbnet/UsbnetInfo;J)J
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/usbnet/UsbnetInfo;->mBsMacAddress:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/htc/net/usbnet/UsbnetInfo;I)I
    .locals 0

    iput p1, p0, Lcom/htc/net/usbnet/UsbnetInfo;->mNetworkId:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBsMacAddress()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/net/usbnet/UsbnetInfo;->mBsMacAddress:J

    return-wide v0
.end method

.method public getIpAddress()I
    .locals 1

    iget v0, p0, Lcom/htc/net/usbnet/UsbnetInfo;->mIpAddress:I

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    iget v0, p0, Lcom/htc/net/usbnet/UsbnetInfo;->mNetworkId:I

    return v0
.end method

.method setBsMacAddress(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/usbnet/UsbnetInfo;->mBsMacAddress:J

    return-void
.end method

.method setIpAddress(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/usbnet/UsbnetInfo;->mIpAddress:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/htc/net/usbnet/UsbnetInfo;->mLinkSpeed:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Lcom/htc/net/usbnet/UsbnetInfo;->mIpAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/htc/net/usbnet/UsbnetInfo;->mBsMacAddress:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/htc/net/usbnet/UsbnetInfo;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
