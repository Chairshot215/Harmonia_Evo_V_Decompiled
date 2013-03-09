.class final Lcom/htc/laputa/engine/util/AdminArea$1;
.super Ljava/lang/Object;
.source "AdminArea.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/AdminArea;
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
        "Lcom/htc/laputa/engine/util/AdminArea;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 364
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/laputa/engine/util/AdminArea;
    .locals 2
    .parameter "in"

    .prologue
    .line 367
    new-instance v0, Lcom/htc/laputa/engine/util/AdminArea;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/laputa/engine/util/AdminArea;-><init>(Landroid/os/Parcel;Lcom/htc/laputa/engine/util/AdminArea$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/htc/laputa/engine/util/AdminArea$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/laputa/engine/util/AdminArea;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/laputa/engine/util/AdminArea;
    .locals 1
    .parameter "size"

    .prologue
    .line 372
    new-array v0, p1, [Lcom/htc/laputa/engine/util/AdminArea;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/htc/laputa/engine/util/AdminArea$1;->newArray(I)[Lcom/htc/laputa/engine/util/AdminArea;

    move-result-object v0

    return-object v0
.end method
