.class final Lcom/htc/net/FourG/QosStatistics$1;
.super Ljava/lang/Object;
.source "QosStatistics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/FourG/QosStatistics;
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
        "Lcom/htc/net/FourG/QosStatistics;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/htc/net/FourG/QosStatistics;
    .locals 1

    new-instance v0, Lcom/htc/net/FourG/QosStatistics;

    invoke-direct {v0, p1}, Lcom/htc/net/FourG/QosStatistics;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/net/FourG/QosStatistics$1;->createFromParcel(Landroid/os/Parcel;)Lcom/htc/net/FourG/QosStatistics;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/htc/net/FourG/QosStatistics;
    .locals 1

    new-array v0, p1, [Lcom/htc/net/FourG/QosStatistics;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/net/FourG/QosStatistics$1;->newArray(I)[Lcom/htc/net/FourG/QosStatistics;

    move-result-object v0

    return-object v0
.end method
