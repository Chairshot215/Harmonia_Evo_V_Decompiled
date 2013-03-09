.class public Lcom/google/android/location/data/WifiApPosition;
.super Lcom/google/android/location/data/Position;
.source "WifiApPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/data/WifiApPosition$PositionType;
    }
.end annotation


# static fields
.field public static final WIFI_AP_SAVER:Lcom/google/android/location/data/Persistent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/location/data/Persistent",
            "<",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final horizontalUncertaintyMm:I

.field public final positionType:Lcom/google/android/location/data/WifiApPosition$PositionType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/google/android/location/data/WifiApPosition$1;

    invoke-direct {v0}, Lcom/google/android/location/data/WifiApPosition$1;-><init>()V

    sput-object v0, Lcom/google/android/location/data/WifiApPosition;->WIFI_AP_SAVER:Lcom/google/android/location/data/Persistent;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 6
    .parameter "latE7"
    .parameter "lngE7"
    .parameter "accuracyMm"

    .prologue
    .line 50
    const/16 v4, 0x55

    const v5, 0x9c40

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/data/WifiApPosition;-><init>(IIIII)V

    .line 51
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1
    .parameter "latE7"
    .parameter "lngE7"
    .parameter "accuracyMm"
    .parameter "confidence"
    .parameter "horizontalUncertaintyMm"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/location/data/Position;-><init>(IIII)V

    .line 38
    iput p5, p0, Lcom/google/android/location/data/WifiApPosition;->horizontalUncertaintyMm:I

    .line 39
    invoke-virtual {p0, p4}, Lcom/google/android/location/data/WifiApPosition;->findPositionType(I)Lcom/google/android/location/data/WifiApPosition$PositionType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/data/WifiApPosition;->positionType:Lcom/google/android/location/data/WifiApPosition$PositionType;

    .line 40
    return-void
.end method

.method public static append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/WifiApPosition;)V
    .locals 1
    .parameter "sb"
    .parameter "wifiApPosition"

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {p0, p1}, Lcom/google/android/location/data/Position;->append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/Position;)V

    .line 103
    const-string v0, ", Uncert="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v0, p1, Lcom/google/android/location/data/WifiApPosition;->horizontalUncertaintyMm:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v0, "mm, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v0, p1, Lcom/google/android/location/data/WifiApPosition;->positionType:Lcom/google/android/location/data/WifiApPosition$PositionType;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/WifiApPosition;)V
    .locals 1
    .parameter "out"
    .parameter "wifiApPosition"

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    invoke-static {p0, p1}, Lcom/google/android/location/data/Position;->dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/Position;)V

    .line 117
    const-string v0, ", Uncert="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    iget v0, p1, Lcom/google/android/location/data/WifiApPosition;->horizontalUncertaintyMm:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 119
    const-string v0, "mm, "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 120
    iget-object v0, p1, Lcom/google/android/location/data/WifiApPosition;->positionType:Lcom/google/android/location/data/WifiApPosition$PositionType;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 121
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected findPositionType(I)Lcom/google/android/location/data/WifiApPosition$PositionType;
    .locals 1
    .parameter "confidence"

    .prologue
    .line 71
    const/16 v0, 0x50

    if-lt p1, v0, :cond_0

    const/16 v0, 0x54

    if-gt p1, v0, :cond_0

    .line 72
    sget-object v0, Lcom/google/android/location/data/WifiApPosition$PositionType;->LOW_CONFIDENCE:Lcom/google/android/location/data/WifiApPosition$PositionType;

    .line 78
    :goto_0
    return-object v0

    .line 73
    :cond_0
    const/16 v0, 0x55

    if-lt p1, v0, :cond_1

    const/16 v0, 0x59

    if-gt p1, v0, :cond_1

    .line 74
    sget-object v0, Lcom/google/android/location/data/WifiApPosition$PositionType;->MEDIUM_CONFIDENCE:Lcom/google/android/location/data/WifiApPosition$PositionType;

    goto :goto_0

    .line 75
    :cond_1
    const/16 v0, 0x5a

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5e

    if-gt p1, v0, :cond_2

    .line 76
    sget-object v0, Lcom/google/android/location/data/WifiApPosition$PositionType;->HIGH_CONFIDENCE:Lcom/google/android/location/data/WifiApPosition$PositionType;

    goto :goto_0

    .line 78
    :cond_2
    sget-object v0, Lcom/google/android/location/data/WifiApPosition$PositionType;->UNKNOWN:Lcom/google/android/location/data/WifiApPosition$PositionType;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiApPosition ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/android/location/data/Position;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", horizontalUncertaintyMm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/data/WifiApPosition;->horizontalUncertaintyMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", positionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/data/WifiApPosition;->positionType:Lcom/google/android/location/data/WifiApPosition$PositionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
