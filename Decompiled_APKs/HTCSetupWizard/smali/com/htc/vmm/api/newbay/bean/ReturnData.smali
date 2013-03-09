.class public Lcom/htc/vmm/api/newbay/bean/ReturnData;
.super Ljava/lang/Object;
.source "ReturnData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/vmm/api/newbay/bean/ReturnData;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_SNAPSHOT_FALSE:I = 0x5

.field public static final STATUS_SNAPSHOT_TRUE:I = 0x4

.field public static final TYPE_RSULT_NOT_SUBSCRIBED:I = 0x2

.field public static final TYPE_RSULT_OTHER_ERRORS:I = 0x3

.field public static final TYPE_RSULT_SUBSCRIBED:I = 0x1


# instance fields
.field private errorCode:I

.field private errorMsg:Ljava/lang/String;

.field private returnStatus:I

.field private returnType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/htc/vmm/api/newbay/bean/ReturnData$1;

    invoke-direct {v0}, Lcom/htc/vmm/api/newbay/bean/ReturnData$1;-><init>()V

    sput-object v0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->returnType:I

    .line 9
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->returnStatus:I

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->errorCode:I

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->errorMsg:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->returnType:I

    .line 9
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->returnStatus:I

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->errorCode:I

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->errorMsg:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->returnType:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->errorCode:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->errorMsg:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->returnStatus:I

    .line 87
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->errorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnStatus()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->returnStatus:I

    return v0
.end method

.method public getReturnType()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->returnType:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 53
    iput p1, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->errorCode:I

    .line 54
    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMsg"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->errorMsg:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setReturnStatus(I)V
    .locals 0
    .parameter "returnStatus"

    .prologue
    .line 43
    iput p1, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->returnStatus:I

    .line 44
    return-void
.end method

.method public setReturnType(I)V
    .locals 0
    .parameter "returnType"

    .prologue
    .line 32
    iput p1, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->returnType:I

    .line 33
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 75
    iget v0, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->returnType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->errorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lcom/htc/vmm/api/newbay/bean/ReturnData;->returnStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return-void
.end method
