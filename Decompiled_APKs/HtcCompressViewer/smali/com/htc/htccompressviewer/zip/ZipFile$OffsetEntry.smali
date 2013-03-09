.class final Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccompressviewer/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OffsetEntry"
.end annotation


# instance fields
.field private dataOffset:J

.field private headerOffset:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-wide v0, p0, Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;->headerOffset:J

    .line 96
    iput-wide v0, p0, Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;->dataOffset:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htccompressviewer/zip/ZipFile$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;->dataOffset:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;->dataOffset:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;->headerOffset:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/htc/htccompressviewer/zip/ZipFile$OffsetEntry;->headerOffset:J

    return-wide p1
.end method
