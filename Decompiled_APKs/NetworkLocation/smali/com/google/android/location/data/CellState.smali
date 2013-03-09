.class public Lcom/google/android/location/data/CellState;
.super Ljava/lang/Object;
.source "CellState.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/data/CellState$NeighborCell;
    }
.end annotation


# instance fields
.field protected mCarrier:Ljava/lang/String;

.field protected mCid:I

.field protected mHomeMcc:I

.field protected mHomeMnc:I

.field protected mLac:I

.field protected mLatitude:I

.field protected mLongitude:I

.field protected mMcc:I

.field protected mMnc:I

.field protected mNeighbors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/data/CellState$NeighborCell;",
            ">;"
        }
    .end annotation
.end field

.field protected mRadioType:I

.field protected mSignalStrength:I

.field protected final mTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .parameter "timeSinceBoot"

    .prologue
    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v0, p0, Lcom/google/android/location/data/CellState;->mCid:I

    .line 48
    iput v0, p0, Lcom/google/android/location/data/CellState;->mLac:I

    .line 49
    iput v0, p0, Lcom/google/android/location/data/CellState;->mMcc:I

    .line 50
    iput v0, p0, Lcom/google/android/location/data/CellState;->mMnc:I

    .line 51
    iput v0, p0, Lcom/google/android/location/data/CellState;->mHomeMcc:I

    .line 52
    iput v0, p0, Lcom/google/android/location/data/CellState;->mHomeMnc:I

    .line 53
    iput v1, p0, Lcom/google/android/location/data/CellState;->mLatitude:I

    .line 54
    iput v1, p0, Lcom/google/android/location/data/CellState;->mLongitude:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/data/CellState;->mCarrier:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/data/CellState;->mNeighbors:Ljava/util/List;

    .line 64
    iput-wide p1, p0, Lcom/google/android/location/data/CellState;->mTime:J

    .line 65
    return-void
.end method

.method public static append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/CellState;)V
    .locals 4
    .parameter "sb"
    .parameter "cellState"

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    const-string v3, "null"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :goto_0
    return-void

    .line 161
    :cond_0
    const-string v3, "[cid: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/google/android/location/data/CellState;->mCid:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    const-string v3, " lac: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/google/android/location/data/CellState;->mLac:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string v3, " mcc: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/google/android/location/data/CellState;->mMcc:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    const-string v3, " mnc: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/google/android/location/data/CellState;->mMnc:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    const-string v3, " radioType: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/google/android/location/data/CellState;->mRadioType:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    const-string v3, " signalStrength: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/google/android/location/data/CellState;->mSignalStrength:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    const-string v3, " neighbors["

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const/4 v0, 0x1

    .line 169
    .local v0, first:Z
    iget-object v3, p1, Lcom/google/android/location/data/CellState;->mNeighbors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/data/CellState$NeighborCell;

    .line 170
    .local v2, n:Lcom/google/android/location/data/CellState$NeighborCell;
    if-eqz v0, :cond_1

    .line 171
    const/4 v0, 0x0

    .line 175
    :goto_2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 173
    :cond_1
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 177
    .end local v2           #n:Lcom/google/android/location/data/CellState$NeighborCell;
    :cond_2
    const-string v3, "]"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static dump(Ljava/io/PrintWriter;Lcom/google/android/location/data/CellState;)V
    .locals 4
    .parameter "out"
    .parameter "cellState"

    .prologue
    .line 181
    if-nez p1, :cond_0

    .line 182
    const-string v3, "null"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string v3, "[cid: "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p1, Lcom/google/android/location/data/CellState;->mCid:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 186
    const-string v3, " lac: "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p1, Lcom/google/android/location/data/CellState;->mLac:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 187
    const-string v3, " mcc: "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p1, Lcom/google/android/location/data/CellState;->mMcc:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 188
    const-string v3, " mnc: "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p1, Lcom/google/android/location/data/CellState;->mMnc:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 189
    const-string v3, " radioType: "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p1, Lcom/google/android/location/data/CellState;->mRadioType:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 190
    const-string v3, " signalStrength: "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p1, Lcom/google/android/location/data/CellState;->mSignalStrength:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 191
    const-string v3, " neighbors["

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x1

    .line 193
    .local v0, first:Z
    iget-object v3, p1, Lcom/google/android/location/data/CellState;->mNeighbors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/data/CellState$NeighborCell;

    .line 194
    .local v2, n:Lcom/google/android/location/data/CellState$NeighborCell;
    if-eqz v0, :cond_1

    .line 195
    const/4 v0, 0x0

    .line 199
    :goto_2
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    goto :goto_1

    .line 197
    :cond_1
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 201
    .end local v2           #n:Lcom/google/android/location/data/CellState$NeighborCell;
    :cond_2
    const-string v3, "]]"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/data/CellState;

    .line 69
    .local v0, cs:Lcom/google/android/location/data/CellState;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/location/data/CellState;->mNeighbors:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/android/location/data/CellState;->mNeighbors:Ljava/util/List;

    .line 70
    return-object v0
.end method

.method public copy()Lcom/google/android/location/data/CellState;
    .locals 2

    .prologue
    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/location/data/CellState;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/data/CellState;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createCellularPlatformProfile()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 315
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/location/protocol/LocserverMessageTypes;->GCELLULAR_PLATFORM_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 320
    .local v0, cellularPlatformProfile:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0}, Lcom/google/android/location/data/CellState;->getCellPlatformProfileRadioType()I

    move-result v1

    .line 321
    .local v1, radioType:I
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 322
    iget v2, p0, Lcom/google/android/location/data/CellState;->mHomeMcc:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/location/data/CellState;->mHomeMnc:I

    if-eq v2, v3, :cond_0

    .line 323
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/android/location/data/CellState;->mHomeMcc:I

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 324
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/location/data/CellState;->mHomeMnc:I

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/data/CellState;->mCarrier:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 327
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/location/data/CellState;->mCarrier:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 329
    :cond_1
    return-object v0
.end method

.method public gcell(J)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 13
    .parameter "age"

    .prologue
    .line 207
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v8, Lcom/google/android/location/protocol/LocserverMessageTypes;->GCELL:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v8}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 208
    .local v0, cell:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v8, 0x1

    iget v9, p0, Lcom/google/android/location/data/CellState;->mLac:I

    invoke-virtual {v0, v8, v9}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 209
    const/4 v8, 0x2

    iget v9, p0, Lcom/google/android/location/data/CellState;->mCid:I

    invoke-virtual {v0, v8, v9}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 211
    iget v5, p0, Lcom/google/android/location/data/CellState;->mMnc:I

    .line 212
    .local v5, primaryMnc:I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    .line 213
    const/4 v8, 0x3

    invoke-virtual {v0, v8, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 216
    :cond_0
    iget v4, p0, Lcom/google/android/location/data/CellState;->mMcc:I

    .line 217
    .local v4, primaryMcc:I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_1

    .line 218
    const/4 v8, 0x4

    invoke-virtual {v0, v8, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 221
    :cond_1
    iget v7, p0, Lcom/google/android/location/data/CellState;->mSignalStrength:I

    .line 222
    .local v7, signalStrength:I
    const/16 v8, -0x270f

    if-eq v7, v8, :cond_2

    .line 223
    const/4 v8, 0x5

    invoke-virtual {v0, v8, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 226
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-eqz v8, :cond_3

    .line 227
    const/4 v8, 0x6

    long-to-int v9, p1

    invoke-virtual {v0, v8, v9}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 230
    :cond_3
    iget v1, p0, Lcom/google/android/location/data/CellState;->mLatitude:I

    .line 231
    .local v1, lat:I
    iget v3, p0, Lcom/google/android/location/data/CellState;->mLongitude:I

    .line 232
    .local v3, lng:I
    const v8, 0x7fffffff

    if-eq v1, v8, :cond_4

    const v8, 0x7fffffff

    if-eq v3, v8, :cond_4

    .line 233
    new-instance v2, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v8, Lcom/google/android/location/protocol/LocserverMessageTypes;->GLAT_LNG:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v8}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 234
    .local v2, latLng:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v8, 0x1

    int-to-double v9, v1

    const-wide v11, 0x4085b38e38e38e39L

    mul-double/2addr v9, v11

    double-to-int v9, v9

    invoke-virtual {v2, v8, v9}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 235
    const/4 v8, 0x2

    int-to-double v9, v3

    const-wide v11, 0x4085b38e38e38e39L

    mul-double/2addr v9, v11

    double-to-int v9, v9

    invoke-virtual {v2, v8, v9}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 236
    const/16 v8, 0x9

    invoke-virtual {v0, v8, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 240
    .end local v2           #latLng:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_4
    const/4 v6, -0x1

    .line 241
    .local v6, radioType:I
    iget v8, p0, Lcom/google/android/location/data/CellState;->mRadioType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 242
    const/4 v6, 0x3

    .line 248
    :cond_5
    :goto_0
    const/16 v8, 0xa

    invoke-virtual {v0, v8, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 250
    return-object v0

    .line 243
    :cond_6
    iget v8, p0, Lcom/google/android/location/data/CellState;->mRadioType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    .line 244
    const/4 v6, 0x4

    goto :goto_0

    .line 245
    :cond_7
    iget v8, p0, Lcom/google/android/location/data/CellState;->mRadioType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    .line 246
    const/4 v6, 0x5

    goto :goto_0
.end method

.method public getCellPlatformProfileRadioType()I
    .locals 3

    .prologue
    .line 390
    const/4 v0, -0x1

    .line 391
    .local v0, radioType:I
    iget v1, p0, Lcom/google/android/location/data/CellState;->mRadioType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 392
    const/4 v0, 0x3

    .line 398
    :cond_0
    :goto_0
    return v0

    .line 393
    :cond_1
    iget v1, p0, Lcom/google/android/location/data/CellState;->mRadioType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 394
    const/4 v0, 0x4

    goto :goto_0

    .line 395
    :cond_2
    iget v1, p0, Lcom/google/android/location/data/CellState;->mRadioType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 396
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/google/android/location/data/CellState;->mCid:I

    return v0
.end method

.method public getLac()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/google/android/location/data/CellState;->mLac:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/google/android/location/data/CellState;->mMcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/android/location/data/CellState;->mMnc:I

    return v0
.end method

.method public getNeighbors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/data/CellState$NeighborCell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/location/data/CellState;->mNeighbors:Ljava/util/List;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/google/android/location/data/CellState;->mTime:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 142
    iget v0, p0, Lcom/google/android/location/data/CellState;->mCid:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/location/data/CellState;->mLac:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/location/data/CellState;->mMcc:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/android/location/data/CellState;->mMnc:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sameCidLac(Lcom/google/android/location/data/CellState;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 138
    iget v0, p0, Lcom/google/android/location/data/CellState;->mCid:I

    iget v1, p1, Lcom/google/android/location/data/CellState;->mCid:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/location/data/CellState;->mLac:I

    iget v1, p1, Lcom/google/android/location/data/CellState;->mLac:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSignalStrength(I)V
    .locals 0
    .parameter "signalStrength"

    .prologue
    .line 146
    iput p1, p0, Lcom/google/android/location/data/CellState;->mSignalStrength:I

    .line 147
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lcom/google/android/location/data/CellState;->append(Ljava/lang/StringBuilder;Lcom/google/android/location/data/CellState;)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
