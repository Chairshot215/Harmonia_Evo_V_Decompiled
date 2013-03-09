.class final Lcom/sqn/dcc/ConnectionConfig$1;
.super Ljava/lang/Object;
.source "ConnectionConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sqn/dcc/ConnectionConfig;
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
        "Lcom/sqn/dcc/ConnectionConfig;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sqn/dcc/ConnectionConfig;
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v0, Lcom/sqn/dcc/ConnectionConfig;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v8, :cond_0

    move v1, v8

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v8, :cond_1

    move v2, v8

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v8, :cond_2

    move v7, v8

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-ne v10, v8, :cond_3

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/sqn/dcc/ConnectionConfig;-><init>(ZZJJZZI)V

    return-object v0

    :cond_0
    move v1, v9

    goto :goto_0

    :cond_1
    move v2, v9

    goto :goto_1

    :cond_2
    move v7, v9

    goto :goto_2

    :cond_3
    move v8, v9

    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sqn/dcc/ConnectionConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sqn/dcc/ConnectionConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sqn/dcc/ConnectionConfig;
    .locals 1

    new-array v0, p1, [Lcom/sqn/dcc/ConnectionConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sqn/dcc/ConnectionConfig$1;->newArray(I)[Lcom/sqn/dcc/ConnectionConfig;

    move-result-object v0

    return-object v0
.end method
