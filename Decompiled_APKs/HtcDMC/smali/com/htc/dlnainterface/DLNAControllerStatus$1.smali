.class final Lcom/htc/dlnainterface/DLNAControllerStatus$1;
.super Ljava/lang/Object;
.source "DLNAControllerStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnainterface/DLNAControllerStatus;
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
        "Lcom/htc/dlnainterface/DLNAControllerStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/dlnainterface/DLNAControllerStatus;
    .locals 1
    .parameter "in"

    .prologue
    .line 28
    new-instance v0, Lcom/htc/dlnainterface/DLNAControllerStatus;

    invoke-direct {v0, p1}, Lcom/htc/dlnainterface/DLNAControllerStatus;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/htc/dlnainterface/DLNAControllerStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/dlnainterface/DLNAControllerStatus;
    .locals 1
    .parameter "size"

    .prologue
    .line 32
    new-array v0, p1, [Lcom/htc/dlnainterface/DLNAControllerStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/htc/dlnainterface/DLNAControllerStatus$1;->newArray(I)[Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v0

    return-object v0
.end method
