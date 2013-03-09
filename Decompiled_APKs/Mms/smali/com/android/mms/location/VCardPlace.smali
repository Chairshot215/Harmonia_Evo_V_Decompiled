.class public Lcom/android/mms/location/VCardPlace;
.super Ljava/lang/Object;
.source "VCardPlace.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;[B)V
    .locals 0
    .parameter "context"
    .parameter "data"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static getVcardStringFromPlace(Lcom/android/mms/location/Place;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "p"
    .parameter "mapURL"

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getPlace()Lcom/android/mms/location/Place;
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method
