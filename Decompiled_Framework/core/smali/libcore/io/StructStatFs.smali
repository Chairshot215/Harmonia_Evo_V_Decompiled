.class public final Llibcore/io/StructStatFs;
.super Ljava/lang/Object;
.source "StructStatFs.java"


# instance fields
.field public final f_bavail:J

.field public final f_bfree:J

.field public final f_blocks:J

.field public final f_bsize:J

.field public final f_ffree:J

.field public final f_files:J

.field public final f_frsize:J

.field public final f_namemax:J


# direct methods
.method constructor <init>(JJJJJJJJ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Llibcore/io/StructStatFs;->f_bsize:J

    iput-wide p3, p0, Llibcore/io/StructStatFs;->f_blocks:J

    iput-wide p5, p0, Llibcore/io/StructStatFs;->f_bfree:J

    iput-wide p7, p0, Llibcore/io/StructStatFs;->f_bavail:J

    iput-wide p9, p0, Llibcore/io/StructStatFs;->f_files:J

    iput-wide p11, p0, Llibcore/io/StructStatFs;->f_ffree:J

    iput-wide p13, p0, Llibcore/io/StructStatFs;->f_namemax:J

    iput-wide p15, p0, Llibcore/io/StructStatFs;->f_frsize:J

    return-void
.end method
