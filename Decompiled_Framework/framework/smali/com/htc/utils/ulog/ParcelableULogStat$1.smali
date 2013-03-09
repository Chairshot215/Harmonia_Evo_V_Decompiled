.class final Lcom/htc/utils/ulog/ParcelableULogStat$1;
.super Ljava/lang/Object;
.source "ParcelableULogStat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/utils/ulog/ParcelableULogStat;
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
        "Lcom/htc/utils/ulog/ParcelableULogStat;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/utils/ulog/ParcelableULogStat;
    .locals 2

    :try_start_0
    new-instance v1, Lcom/htc/utils/ulog/ParcelableULogStat;

    invoke-direct {v1, p1}, Lcom/htc/utils/ulog/ParcelableULogStat;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catch Lcom/htc/utils/ulog/UException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/htc/utils/ulog/UException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/utils/ulog/ParcelableULogStat$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/utils/ulog/ParcelableULogStat;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/utils/ulog/ParcelableULogStat;
    .locals 1

    new-array v0, p1, [Lcom/htc/utils/ulog/ParcelableULogStat;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/utils/ulog/ParcelableULogStat$1;->newArray(I)[Lcom/htc/utils/ulog/ParcelableULogStat;

    move-result-object v0

    return-object v0
.end method
