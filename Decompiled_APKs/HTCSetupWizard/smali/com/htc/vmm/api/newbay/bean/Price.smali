.class public Lcom/htc/vmm/api/newbay/bean/Price;
.super Ljava/lang/Object;
.source "Price.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/vmm/api/newbay/bean/Price;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private channelId:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private serviceId:Ljava/lang/String;

.field private storageSize:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/htc/vmm/api/newbay/bean/Price$1;

    invoke-direct {v0}, Lcom/htc/vmm/api/newbay/bean/Price$1;-><init>()V

    sput-object v0, Lcom/htc/vmm/api/newbay/bean/Price;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->name:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->description:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->price:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->serviceId:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->channelId:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->storageSize:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->name:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->description:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->price:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->serviceId:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->channelId:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->storageSize:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->name:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->description:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->price:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->serviceId:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->channelId:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->storageSize:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->serviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->storageSize:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0
    .parameter "channelId"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/vmm/api/newbay/bean/Price;->channelId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/vmm/api/newbay/bean/Price;->description:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/htc/vmm/api/newbay/bean/Price;->name:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "price"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/vmm/api/newbay/bean/Price;->price:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setServiceId(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceId"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/vmm/api/newbay/bean/Price;->serviceId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setStorageSize(Ljava/lang/String;)V
    .locals 0
    .parameter "storageSize"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/vmm/api/newbay/bean/Price;->storageSize:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->price:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->serviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->channelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/Price;->storageSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return-void
.end method
