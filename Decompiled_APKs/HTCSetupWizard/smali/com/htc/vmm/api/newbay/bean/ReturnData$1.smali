.class final Lcom/htc/vmm/api/newbay/bean/ReturnData$1;
.super Ljava/lang/Object;
.source "ReturnData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/vmm/api/newbay/bean/ReturnData;
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
        "Lcom/htc/vmm/api/newbay/bean/ReturnData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/vmm/api/newbay/bean/ReturnData;
    .locals 1
    .parameter "source"

    .prologue
    .line 100
    new-instance v0, Lcom/htc/vmm/api/newbay/bean/ReturnData;

    invoke-direct {v0, p1}, Lcom/htc/vmm/api/newbay/bean/ReturnData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/htc/vmm/api/newbay/bean/ReturnData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/vmm/api/newbay/bean/ReturnData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/vmm/api/newbay/bean/ReturnData;
    .locals 1
    .parameter "size"

    .prologue
    .line 94
    new-array v0, p1, [Lcom/htc/vmm/api/newbay/bean/ReturnData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/htc/vmm/api/newbay/bean/ReturnData$1;->newArray(I)[Lcom/htc/vmm/api/newbay/bean/ReturnData;

    move-result-object v0

    return-object v0
.end method
