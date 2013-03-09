.class final Lcom/sqn/dcc/ScanResult$1;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sqn/dcc/ScanResult;
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
        "Lcom/sqn/dcc/ScanResult;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sqn/dcc/ScanResult;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sqn/dcc/ScanResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sqn/dcc/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sqn/dcc/ScanResult;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sqn/dcc/ScanResult$1;->newArray(I)[Lcom/sqn/dcc/ScanResult;

    move-result-object v0

    return-object v0
.end method
