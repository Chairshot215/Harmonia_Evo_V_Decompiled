.class public Lcom/htc/vmm/api/newbay/bean/SPGData;
.super Ljava/lang/Object;
.source "SPGData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/vmm/api/newbay/bean/SPGData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private description:Ljava/lang/String;

.field private errorCode:Ljava/lang/String;

.field private errorMsg:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/vmm/api/newbay/bean/Price;",
            ">;"
        }
    .end annotation
.end field

.field private userCurrentPkg:Lcom/htc/vmm/api/newbay/bean/Price;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/htc/vmm/api/newbay/bean/SPGData$1;

    invoke-direct {v0}, Lcom/htc/vmm/api/newbay/bean/SPGData$1;-><init>()V

    sput-object v0, Lcom/htc/vmm/api/newbay/bean/SPGData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v1, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->errorCode:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->errorMsg:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->description:Ljava/lang/String;

    .line 14
    const-string v0, "http://www.verizonwireless.com/vmm"

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->link:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->list:Ljava/util/List;

    .line 16
    iput-object v1, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->userCurrentPkg:Lcom/htc/vmm/api/newbay/bean/Price;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v1, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->errorCode:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->errorMsg:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->description:Ljava/lang/String;

    .line 14
    const-string v0, "http://www.verizonwireless.com/vmm"

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->link:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->list:Ljava/util/List;

    .line 16
    iput-object v1, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->userCurrentPkg:Lcom/htc/vmm/api/newbay/bean/Price;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->errorCode:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->errorMsg:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->description:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->link:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->list:Ljava/util/List;

    const-class v1, Lcom/htc/vmm/api/newbay/bean/Price;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 83
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/vmm/api/newbay/bean/Price;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->list:Ljava/util/List;

    return-object v0
.end method

.method public getUserCurrentPkg()Lcom/htc/vmm/api/newbay/bean/Price;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->userCurrentPkg:Lcom/htc/vmm/api/newbay/bean/Price;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->description:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->errorCode:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMsg"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->errorMsg:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->link:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/vmm/api/newbay/bean/Price;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/vmm/api/newbay/bean/Price;>;"
    iput-object p1, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->list:Ljava/util/List;

    .line 44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->errorCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->errorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/SPGData;->list:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 76
    return-void
.end method
