.class public Ljava/util/zip/Adler32;
.super Ljava/lang/Object;
.source "Adler32.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# instance fields
.field private adler:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Ljava/util/zip/Adler32;->adler:J

    return-void
.end method

.method private native updateByteImpl(IJ)J
.end method

.method private native updateImpl([BIIJ)J
.end method


# virtual methods
.method public getValue()J
    .locals 2

    iget-wide v0, p0, Ljava/util/zip/Adler32;->adler:J

    return-wide v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Ljava/util/zip/Adler32;->adler:J

    return-void
.end method

.method public update(I)V
    .locals 2

    iget-wide v0, p0, Ljava/util/zip/Adler32;->adler:J

    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/Adler32;->updateByteImpl(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/Adler32;->adler:J

    return-void
.end method

.method public update([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Adler32;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 6

    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    iget-wide v4, p0, Ljava/util/zip/Adler32;->adler:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Adler32;->updateImpl([BIIJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/Adler32;->adler:J

    return-void
.end method
