.class public Lcom/futuredial/service/DMIBTDevice;
.super Ljava/lang/Object;
.source "DMIBTDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/futuredial/service/DMIBTDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m_address:Ljava/lang/String;

.field public m_device:Landroid/bluetooth/BluetoothDevice;

.field public m_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/futuredial/service/DMIBTDevice$1;

    invoke-direct {v0}, Lcom/futuredial/service/DMIBTDevice$1;-><init>()V

    sput-object v0, Lcom/futuredial/service/DMIBTDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "d"
    .parameter "name"
    .parameter "address"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/futuredial/service/DMIBTDevice;->m_device:Landroid/bluetooth/BluetoothDevice;

    .line 17
    iput-object p2, p0, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/futuredial/service/DMIBTDevice;->m_address:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/service/DMIBTDevice;->m_address:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/futuredial/service/DMIBTDevice;->m_device:Landroid/bluetooth/BluetoothDevice;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/futuredial/service/DMIBTDevice$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/futuredial/service/DMIBTDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "otherx"

    .prologue
    .line 26
    move-object v0, p1

    check-cast v0, Lcom/futuredial/service/DMIBTDevice;

    .line 27
    .local v0, other:Lcom/futuredial/service/DMIBTDevice;
    iget-object v1, v0, Lcom/futuredial/service/DMIBTDevice;->m_address:Ljava/lang/String;

    iget-object v2, p0, Lcom/futuredial/service/DMIBTDevice;->m_address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const/4 v1, 0x1

    .line 29
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flag"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/futuredial/service/DMIBTDevice;->m_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/futuredial/service/DMIBTDevice;->m_address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/futuredial/service/DMIBTDevice;->m_device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 44
    return-void
.end method
