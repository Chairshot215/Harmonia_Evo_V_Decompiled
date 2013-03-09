.class final Lcom/htc/net/wimax/ParcelableBoolean$1;
.super Ljava/lang/Object;
.source "ParcelableBoolean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/wimax/ParcelableBoolean;
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
        "Lcom/htc/net/wimax/ParcelableBoolean;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/net/wimax/ParcelableBoolean;
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Lcom/htc/net/wimax/ParcelableBoolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-direct {v1, v0}, Lcom/htc/net/wimax/ParcelableBoolean;-><init>(Z)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/net/wimax/ParcelableBoolean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/net/wimax/ParcelableBoolean;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/net/wimax/ParcelableBoolean;
    .locals 1

    new-array v0, p1, [Lcom/htc/net/wimax/ParcelableBoolean;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/net/wimax/ParcelableBoolean$1;->newArray(I)[Lcom/htc/net/wimax/ParcelableBoolean;

    move-result-object v0

    return-object v0
.end method
