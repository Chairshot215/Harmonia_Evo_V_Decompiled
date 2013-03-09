.class final Lcom/sqn/dcc/DeviceVersion$1;
.super Ljava/lang/Object;
.source "DeviceVersion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sqn/dcc/DeviceVersion;
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
        "Lcom/sqn/dcc/DeviceVersion;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sqn/dcc/DeviceVersion;
    .locals 6

    new-instance v0, Lcom/sqn/dcc/DeviceVersion;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sqn/dcc/DeviceVersion;-><init>(BBBBI)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sqn/dcc/DeviceVersion$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sqn/dcc/DeviceVersion;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sqn/dcc/DeviceVersion;
    .locals 1

    new-array v0, p1, [Lcom/sqn/dcc/DeviceVersion;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sqn/dcc/DeviceVersion$1;->newArray(I)[Lcom/sqn/dcc/DeviceVersion;

    move-result-object v0

    return-object v0
.end method
