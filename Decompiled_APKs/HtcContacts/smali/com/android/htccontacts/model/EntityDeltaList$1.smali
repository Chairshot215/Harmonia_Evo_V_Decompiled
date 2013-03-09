.class final Lcom/android/htccontacts/model/EntityDeltaList$1;
.super Ljava/lang/Object;
.source "EntityDeltaList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/model/EntityDeltaList;
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
        "Lcom/android/htccontacts/model/EntityDeltaList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 387
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/htccontacts/model/EntityDeltaList;
    .locals 2
    .parameter "in"

    .prologue
    .line 389
    new-instance v0, Lcom/android/htccontacts/model/EntityDeltaList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/EntityDeltaList;-><init>(Lcom/android/htccontacts/model/EntityDeltaList$1;)V

    .line 390
    .local v0, state:Lcom/android/htccontacts/model/EntityDeltaList;
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/model/EntityDeltaList;->readFromParcel(Landroid/os/Parcel;)V

    .line 391
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/EntityDeltaList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/htccontacts/model/EntityDeltaList;
    .locals 1
    .parameter "size"

    .prologue
    .line 395
    new-array v0, p1, [Lcom/android/htccontacts/model/EntityDeltaList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/EntityDeltaList$1;->newArray(I)[Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v0

    return-object v0
.end method
