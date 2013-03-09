.class public Lcom/google/android/location/data/CellStatus;
.super Ljava/lang/Object;
.source "CellStatus.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private history:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/data/CellState;",
            ">;"
        }
    .end annotation
.end field

.field private primary:Lcom/google/android/location/data/CellState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/data/CellStatus;->history:Ljava/util/List;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/data/CellStatus;->primary:Lcom/google/android/location/data/CellState;

    .line 28
    return-void
.end method

.method public static createCellularPlatformProfile(Lcom/google/android/location/data/CellStatus;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1
    .parameter "cellStatus"

    .prologue
    .line 101
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/location/data/CellStatus;->getPrimary()Lcom/google/android/location/data/CellState;

    move-result-object v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/location/data/CellStatus;->getPrimary()Lcom/google/android/location/data/CellState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/data/CellState;->createCellularPlatformProfile()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_0
.end method

.method public static createCellularProfile(Lcom/google/android/location/data/CellState;J)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 7
    .parameter "cellState"
    .parameter "bootTime"

    .prologue
    .line 108
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/location/data/CellState;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 109
    :cond_0
    const/4 v0, 0x0

    .line 125
    :cond_1
    return-object v0

    .line 112
    :cond_2
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/android/location/protocol/LocserverMessageTypes;->GCELLULAR_PROFILE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 113
    .local v0, cellularProfile:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/location/data/CellState;->getTime()J

    move-result-wide v5

    add-long/2addr v5, p1

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 116
    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/google/android/location/data/CellState;->gcell(J)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 119
    invoke-virtual {p0}, Lcom/google/android/location/data/CellState;->getNeighbors()Ljava/util/List;

    move-result-object v3

    .line 120
    .local v3, neighbors:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/data/CellState$NeighborCell;>;"
    if-eqz v3, :cond_1

    .line 121
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/data/CellState$NeighborCell;

    .line 122
    .local v2, neighbor:Lcom/google/android/location/data/CellState$NeighborCell;
    const/4 v4, 0x3

    invoke-virtual {v2, p0}, Lcom/google/android/location/data/CellState$NeighborCell;->gcell(Lcom/google/android/location/data/CellState;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0
.end method


# virtual methods
.method public addToRequestElement(Lcom/google/common/io/protocol/ProtoBuf;J)V
    .locals 8
    .parameter "requestElement"
    .parameter "bootTime"

    .prologue
    .line 81
    iget-object v4, p0, Lcom/google/android/location/data/CellStatus;->primary:Lcom/google/android/location/data/CellState;

    invoke-static {v4, p2, p3}, Lcom/google/android/location/data/CellStatus;->createCellularProfile(Lcom/google/android/location/data/CellState;J)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 82
    .local v1, cellularProfile:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v1, :cond_1

    .line 83
    const/4 v4, 0x5

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 86
    iget-object v4, p0, Lcom/google/android/location/data/CellStatus;->history:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/data/CellState;

    .line 87
    .local v0, c:Lcom/google/android/location/data/CellState;
    iget-object v4, p0, Lcom/google/android/location/data/CellStatus;->primary:Lcom/google/android/location/data/CellState;

    invoke-virtual {v4}, Lcom/google/android/location/data/CellState;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/android/location/data/CellState;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/google/android/location/data/CellState;->gcell(J)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 88
    .local v3, pastCell:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v4, 0x4

    invoke-virtual {v1, v4, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0

    .line 90
    .end local v0           #c:Lcom/google/android/location/data/CellState;
    .end local v3           #pastCell:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 92
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/data/CellStatus;

    .line 36
    .local v0, cs:Lcom/google/android/location/data/CellStatus;
    iget-object v1, p0, Lcom/google/android/location/data/CellStatus;->primary:Lcom/google/android/location/data/CellState;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/google/android/location/data/CellStatus;->primary:Lcom/google/android/location/data/CellState;

    invoke-virtual {v1}, Lcom/google/android/location/data/CellState;->copy()Lcom/google/android/location/data/CellState;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/data/CellStatus;->primary:Lcom/google/android/location/data/CellState;

    .line 39
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/google/android/location/data/CellStatus;->history:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/android/location/data/CellStatus;->history:Ljava/util/List;

    .line 40
    return-object v0
.end method

.method public copy()Lcom/google/android/location/data/CellStatus;
    .locals 2

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/location/data/CellStatus;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/data/CellStatus;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/data/CellState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/location/data/CellStatus;->history:Ljava/util/List;

    return-object v0
.end method

.method public getPrimary()Lcom/google/android/location/data/CellState;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/location/data/CellStatus;->primary:Lcom/google/android/location/data/CellState;

    return-object v0
.end method

.method public setPrimary(Lcom/google/android/location/data/CellState;)V
    .locals 2
    .parameter "cellState"

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/data/CellStatus;->primary:Lcom/google/android/location/data/CellState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/data/CellStatus;->primary:Lcom/google/android/location/data/CellState;

    invoke-virtual {v0}, Lcom/google/android/location/data/CellState;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/data/CellStatus;->primary:Lcom/google/android/location/data/CellState;

    invoke-virtual {v0, p1}, Lcom/google/android/location/data/CellState;->sameCidLac(Lcom/google/android/location/data/CellState;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/google/android/location/data/CellStatus;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/google/android/location/data/CellStatus;->history:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/data/CellStatus;->history:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/location/data/CellStatus;->primary:Lcom/google/android/location/data/CellState;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_2
    iput-object p1, p0, Lcom/google/android/location/data/CellStatus;->primary:Lcom/google/android/location/data/CellState;

    goto :goto_0
.end method

.method public setSignalStrength(I)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/location/data/CellStatus;->primary:Lcom/google/android/location/data/CellState;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/android/location/data/CellStatus;->primary:Lcom/google/android/location/data/CellState;

    invoke-virtual {v0, p1}, Lcom/google/android/location/data/CellState;->setSignalStrength(I)V

    .line 78
    :cond_0
    return-void
.end method
