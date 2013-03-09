.class public Lcom/htc/net/wimax/ParcelableLong;
.super Ljava/lang/Object;
.source "ParcelableLong.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/wimax/ParcelableLong;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field lValue:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/net/wimax/ParcelableLong$1;

    invoke-direct {v0}, Lcom/htc/net/wimax/ParcelableLong$1;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/ParcelableLong;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/htc/net/wimax/ParcelableLong;->lValue:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/htc/net/wimax/ParcelableLong;->lValue:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public longValue()J
    .locals 2

    iget-object v0, p0, Lcom/htc/net/wimax/ParcelableLong;->lValue:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/htc/net/wimax/ParcelableLong;->lValue:Ljava/lang/Long;

    return-void
.end method

.method public setLong(J)V
    .locals 1

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/htc/net/wimax/ParcelableLong;->lValue:Ljava/lang/Long;

    return-void
.end method

.method public setLong(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/wimax/ParcelableLong;->lValue:Ljava/lang/Long;

    return-void
.end method

.method public toLong()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/ParcelableLong;->lValue:Ljava/lang/Long;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/ParcelableLong;->lValue:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/net/wimax/ParcelableLong;->lValue:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
