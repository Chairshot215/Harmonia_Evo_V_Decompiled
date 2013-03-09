.class final Lcom/htc/util/weather/WSPPData$1;
.super Ljava/lang/Object;
.source "WSPPData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/weather/WSPPData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/util/weather/WSPPData;
    .locals 1
    .parameter "in"

    .prologue
    .line 391
    new-instance v0, Lcom/htc/util/weather/WSPPData;

    invoke-direct {v0, p1}, Lcom/htc/util/weather/WSPPData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lcom/htc/util/weather/WSPPData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/util/weather/WSPPData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/util/weather/WSPPData;
    .locals 1
    .parameter "size"

    .prologue
    .line 395
    new-array v0, p1, [Lcom/htc/util/weather/WSPPData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lcom/htc/util/weather/WSPPData$1;->newArray(I)[Lcom/htc/util/weather/WSPPData;

    move-result-object v0

    return-object v0
.end method
