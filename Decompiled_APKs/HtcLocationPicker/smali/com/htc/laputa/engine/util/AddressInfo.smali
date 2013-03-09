.class public Lcom/htc/laputa/engine/util/AddressInfo;
.super Ljava/lang/Object;
.source "AddressInfo.java"


# instance fields
.field private mCity:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mCounty:Ljava/lang/String;

.field private mFull:Ljava/lang/String;

.field private mHouse_no:Ljava/lang/String;

.field private mState:Ljava/lang/String;

.field private mStreet:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "country"
    .parameter "state"
    .parameter "county"
    .parameter "city"
    .parameter "street"
    .parameter "house_no"
    .parameter "full"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mCountry:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mState:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mCounty:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mCity:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mStreet:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mHouse_no:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mFull:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCounty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mCounty:Ljava/lang/String;

    return-object v0
.end method

.method public getFullAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mFull:Ljava/lang/String;

    return-object v0
.end method

.method public getHouseNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mHouse_no:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mStreet:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mCity:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "country"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mCountry:Ljava/lang/String;

    return-void
.end method

.method public setCounty(Ljava/lang/String;)V
    .locals 0
    .parameter "county"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mCounty:Ljava/lang/String;

    return-void
.end method

.method public setFullAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "full"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mFull:Ljava/lang/String;

    return-void
.end method

.method public setHouseNo(Ljava/lang/String;)V
    .locals 0
    .parameter "house_no"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mHouse_no:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mState:Ljava/lang/String;

    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0
    .parameter "street"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/laputa/engine/util/AddressInfo;->mStreet:Ljava/lang/String;

    return-void
.end method
