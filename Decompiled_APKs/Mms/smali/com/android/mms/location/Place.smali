.class public Lcom/android/mms/location/Place;
.super Ljava/lang/Object;
.source "Place.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final PHONE_TYPE_HOME:I = 0x2

.field public static final PHONE_TYPE_MOBILE:I = 0x0

.field public static final PHONE_TYPE_OTHER:I = 0x3

.field public static final PHONE_TYPE_WORK:I = 0x1


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[B)V
    .locals 0
    .parameter "context"
    .parameter "data"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static createPlace()Lcom/android/mms/location/Place;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createPlace([B)Lcom/android/mms/location/Place;
    .locals 1
    .parameter "bytes"

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toByteArray(Ljava/lang/Object;)[B
    .locals 1
    .parameter "obg"

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addPhoneNumber(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .parameter "phoneNumber"
    .parameter "phoneNumberType"

    .prologue
    .line 92
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 74
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 81
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneNumbers()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 43
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 50
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "country"

    .prologue
    .line 71
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .parameter "latitude"

    .prologue
    .line 78
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .parameter "longitude"

    .prologue
    .line 85
    return-void
.end method

.method public setMapName(Ljava/lang/String;)V
    .locals 0
    .parameter "mapName"

    .prologue
    .line 118
    return-void
.end method

.method public setMapUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "mapUlr"

    .prologue
    .line 36
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 29
    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0
    .parameter "postalCode"

    .prologue
    .line 64
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 57
    return-void
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method
