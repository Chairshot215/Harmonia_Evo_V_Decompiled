.class public Lcom/google/android/location/data/LatLng;
.super Ljava/lang/Object;
.source "LatLng.java"


# instance fields
.field public latE7:I

.field public lngE7:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "latE7"
    .parameter "lngE7"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/google/android/location/data/LatLng;->latE7:I

    .line 16
    iput p2, p0, Lcom/google/android/location/data/LatLng;->lngE7:I

    .line 17
    return-void
.end method
