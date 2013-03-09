.class public Lcom/htc/net/wimax/ParcelableInteger;
.super Ljava/lang/Object;
.source "ParcelableInteger.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/wimax/ParcelableInteger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field iValue:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/net/wimax/ParcelableInteger$1;

    invoke-direct {v0}, Lcom/htc/net/wimax/ParcelableInteger$1;-><init>()V

    sput-object v0, Lcom/htc/net/wimax/ParcelableInteger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/htc/net/wimax/ParcelableInteger;->iValue:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/htc/net/wimax/ParcelableInteger;->iValue:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public intValue()I
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/ParcelableInteger;->iValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/htc/net/wimax/ParcelableInteger;->iValue:Ljava/lang/Integer;

    return-void
.end method

.method public setInteger(I)V
    .locals 1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/htc/net/wimax/ParcelableInteger;->iValue:Ljava/lang/Integer;

    return-void
.end method

.method public setInteger(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/net/wimax/ParcelableInteger;->iValue:Ljava/lang/Integer;

    return-void
.end method

.method public toInteger()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/ParcelableInteger;->iValue:Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/ParcelableInteger;->iValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/net/wimax/ParcelableInteger;->iValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
