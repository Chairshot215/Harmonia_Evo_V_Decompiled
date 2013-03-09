.class public Lcom/htc/laputa/engine/util/ContentStoreItemPrice;
.super Ljava/lang/Object;
.source "ContentStoreItemPrice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/laputa/engine/util/ContentStoreItemPrice;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDays:I = 0x1

.field public static final EInfinite:I = 0x0

.field public static final EMonths:I = 0x2

.field public static final EYears:I = 0x3


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/htc/laputa/engine/util/ContentStoreItemPrice$1;

    invoke-direct {v0}, Lcom/htc/laputa/engine/util/ContentStoreItemPrice$1;-><init>()V

    sput-object v0, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "ContentStoreItemPrice"

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;->TAG:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;->mBundle:Landroid/os/Bundle;

    .line 18
    iput-object p1, p0, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;->mBundle:Landroid/os/Bundle;

    .line 19
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;->TAG:Ljava/lang/String;

    const-string v1, "ContentStoreItemPrice() got null bundle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "ContentStoreItemPrice"

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;->TAG:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;->mBundle:Landroid/os/Bundle;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;->mBundle:Landroid/os/Bundle;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/laputa/engine/util/ContentStoreItemPrice$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public equalValidity(Lcom/htc/laputa/engine/util/ContentStoreItemPrice;)Z
    .locals 3
    .parameter "price"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;->getValidityType()I

    move-result v1

    invoke-virtual {p1}, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;->getValidityType()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;->getValidity()I

    move-result v1

    invoke-virtual {p1}, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;->getValidity()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 55
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPriceIndex()I
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;->mBundle:Landroid/os/Bundle;

    const-string v1, "priceindex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getValidity()I
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;->mBundle:Landroid/os/Bundle;

    const-string v1, "validity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getValidityPrice()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;->mBundle:Landroid/os/Bundle;

    const-string v1, "validityprice"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidityType()I
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;->mBundle:Landroid/os/Bundle;

    const-string v1, "validitytype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setPriceIndex(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;->mBundle:Landroid/os/Bundle;

    const-string v1, "priceindex"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/laputa/engine/util/ContentStoreItemPrice;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method
