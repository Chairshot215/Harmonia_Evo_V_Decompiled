.class public Lcom/google/android/location/data/Position$PositionBuilder;
.super Ljava/lang/Object;
.source "Position.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/data/Position;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionBuilder"
.end annotation


# instance fields
.field public accuracyMm:I

.field public confidence:I

.field public latE7:I

.field public levelId:Ljava/lang/String;

.field public lngE7:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/data/Position$PositionBuilder;->confidence:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/data/Position$PositionBuilder;->levelId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/data/Position;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/data/Position$PositionBuilder;->confidence:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/data/Position$PositionBuilder;->levelId:Ljava/lang/String;

    .line 43
    iget v0, p1, Lcom/google/android/location/data/Position;->latE7:I

    iput v0, p0, Lcom/google/android/location/data/Position$PositionBuilder;->latE7:I

    .line 44
    iget v0, p1, Lcom/google/android/location/data/Position;->lngE7:I

    iput v0, p0, Lcom/google/android/location/data/Position$PositionBuilder;->lngE7:I

    .line 45
    iget v0, p1, Lcom/google/android/location/data/Position;->accuracyMm:I

    iput v0, p0, Lcom/google/android/location/data/Position$PositionBuilder;->accuracyMm:I

    .line 46
    iget v0, p1, Lcom/google/android/location/data/Position;->confidence:I

    iput v0, p0, Lcom/google/android/location/data/Position$PositionBuilder;->confidence:I

    .line 47
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/location/data/Position;
    .locals 6

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/location/data/Position;

    iget v1, p0, Lcom/google/android/location/data/Position$PositionBuilder;->latE7:I

    iget v2, p0, Lcom/google/android/location/data/Position$PositionBuilder;->lngE7:I

    iget v3, p0, Lcom/google/android/location/data/Position$PositionBuilder;->accuracyMm:I

    iget v4, p0, Lcom/google/android/location/data/Position$PositionBuilder;->confidence:I

    iget-object v5, p0, Lcom/google/android/location/data/Position$PositionBuilder;->levelId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/data/Position;-><init>(IIIILjava/lang/String;)V

    return-object v0
.end method

.method public latLng(II)Lcom/google/android/location/data/Position$PositionBuilder;
    .locals 0
    .parameter "latE7"
    .parameter "lngE7"

    .prologue
    .line 54
    iput p1, p0, Lcom/google/android/location/data/Position$PositionBuilder;->latE7:I

    .line 55
    iput p2, p0, Lcom/google/android/location/data/Position$PositionBuilder;->lngE7:I

    .line 56
    return-object p0
.end method

.method public latLng(Lcom/google/android/location/data/LatLng;)Lcom/google/android/location/data/Position$PositionBuilder;
    .locals 2
    .parameter "latLng"

    .prologue
    .line 60
    iget v0, p1, Lcom/google/android/location/data/LatLng;->latE7:I

    iget v1, p1, Lcom/google/android/location/data/LatLng;->lngE7:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/data/Position$PositionBuilder;->latLng(II)Lcom/google/android/location/data/Position$PositionBuilder;

    move-result-object v0

    return-object v0
.end method
