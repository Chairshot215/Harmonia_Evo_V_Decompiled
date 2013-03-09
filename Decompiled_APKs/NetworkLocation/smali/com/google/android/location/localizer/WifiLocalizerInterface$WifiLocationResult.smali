.class public Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;
.super Ljava/lang/Object;
.source "WifiLocalizerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/localizer/WifiLocalizerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiLocationResult"
.end annotation


# instance fields
.field private final confidence:I

.field private final outliers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final position:Lcom/google/android/location/data/Position;


# direct methods
.method public constructor <init>(Lcom/google/android/location/data/Position;ILjava/util/Set;)V
    .locals 0
    .parameter "position"
    .parameter "confidence"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/location/data/Position;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p3, outliers:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;->position:Lcom/google/android/location/data/Position;

    .line 41
    iput p2, p0, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;->confidence:I

    .line 42
    iput-object p3, p0, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;->outliers:Ljava/util/Set;

    .line 43
    return-void
.end method


# virtual methods
.method public getConfidence()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;->confidence:I

    return v0
.end method

.method public getOutliers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;->outliers:Ljava/util/Set;

    return-object v0
.end method

.method public getPosition()Lcom/google/android/location/data/Position;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;->position:Lcom/google/android/location/data/Position;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "WifiLocationResult [position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;->position:Lcom/google/android/location/data/Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget v1, p0, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;->confidence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", outliers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;->outliers:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
