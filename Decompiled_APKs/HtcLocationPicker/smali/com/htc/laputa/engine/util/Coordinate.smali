.class public Lcom/htc/laputa/engine/util/Coordinate;
.super Ljava/lang/Object;
.source "Coordinate.java"


# instance fields
.field public mLatitude:D

.field public mLongitude:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide v0, p0, Lcom/htc/laputa/engine/util/Coordinate;->mLatitude:D

    .line 9
    iput-wide v0, p0, Lcom/htc/laputa/engine/util/Coordinate;->mLongitude:D

    .line 14
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 2
    .parameter "lat"
    .parameter "lon"

    .prologue
    const-wide/16 v0, 0x0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide v0, p0, Lcom/htc/laputa/engine/util/Coordinate;->mLatitude:D

    .line 9
    iput-wide v0, p0, Lcom/htc/laputa/engine/util/Coordinate;->mLongitude:D

    .line 17
    iput-wide p1, p0, Lcom/htc/laputa/engine/util/Coordinate;->mLatitude:D

    .line 18
    iput-wide p3, p0, Lcom/htc/laputa/engine/util/Coordinate;->mLongitude:D

    .line 19
    return-void
.end method
