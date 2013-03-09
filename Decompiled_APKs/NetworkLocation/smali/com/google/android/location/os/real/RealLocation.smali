.class public Lcom/google/android/location/os/real/RealLocation;
.super Ljava/lang/Object;
.source "RealLocation.java"

# interfaces
.implements Lcom/google/android/location/os/LocationInterface;


# instance fields
.field private final location:Landroid/location/Location;

.field private final timeSinceBoot:J


# direct methods
.method public constructor <init>(Landroid/location/Location;J)V
    .locals 2
    .parameter "location"
    .parameter "locationDeviceTimeSinceBoot"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null location in RealLocation constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/google/android/location/os/real/RealLocation;->location:Landroid/location/Location;

    .line 33
    iput-wide p2, p0, Lcom/google/android/location/os/real/RealLocation;->timeSinceBoot:J

    .line 34
    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/location/os/real/RealLocation;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/location/os/real/RealLocation;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getTimeSinceBoot()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/android/location/os/real/RealLocation;->timeSinceBoot:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "RealLocation [location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, p0, Lcom/google/android/location/os/real/RealLocation;->location:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
