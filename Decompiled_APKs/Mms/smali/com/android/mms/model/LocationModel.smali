.class public Lcom/android/mms/model/LocationModel;
.super Lcom/android/mms/model/MediaModel;
.source "LocationModel.java"


# static fields
.field public static MapContentType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "image/jpeg"

    sput-object v0, Lcom/android/mms/model/LocationModel;->MapContentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[BLandroid/net/Uri;Lcom/android/mms/location/Place;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "contentType"
    .parameter "data"
    .parameter "uri"
    .parameter "place"
    .parameter "mapURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 15
    const-string v2, "ref"

    invoke-virtual {p5}, Lcom/android/mms/location/Place;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/net/Uri;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getAddressFirstLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAddressSecondLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlace()Lcom/android/mms/location/Place;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaceBytes()[B
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 0
    .parameter "evt"

    .prologue
    .line 49
    return-void
.end method

.method public setImageUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 24
    return-void
.end method
