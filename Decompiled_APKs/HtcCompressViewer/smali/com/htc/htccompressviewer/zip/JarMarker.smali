.class public final Lcom/htc/htccompressviewer/zip/JarMarker;
.super Ljava/lang/Object;
.source "JarMarker.java"

# interfaces
.implements Lcom/htc/htccompressviewer/zip/ZipExtraField;


# static fields
.field private static final DEFAULT:Lcom/htc/htccompressviewer/zip/JarMarker;

.field private static final ID:Lcom/htc/htccompressviewer/zip/ZipShort;

.field private static final NO_BYTES:[B

.field private static final NULL:Lcom/htc/htccompressviewer/zip/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/htc/htccompressviewer/zip/ZipShort;

    const v1, 0xcafe

    invoke-direct {v0, v1}, Lcom/htc/htccompressviewer/zip/ZipShort;-><init>(I)V

    sput-object v0, Lcom/htc/htccompressviewer/zip/JarMarker;->ID:Lcom/htc/htccompressviewer/zip/ZipShort;

    .line 33
    new-instance v0, Lcom/htc/htccompressviewer/zip/ZipShort;

    invoke-direct {v0, v2}, Lcom/htc/htccompressviewer/zip/ZipShort;-><init>(I)V

    sput-object v0, Lcom/htc/htccompressviewer/zip/JarMarker;->NULL:Lcom/htc/htccompressviewer/zip/ZipShort;

    .line 34
    new-array v0, v2, [B

    sput-object v0, Lcom/htc/htccompressviewer/zip/JarMarker;->NO_BYTES:[B

    .line 35
    new-instance v0, Lcom/htc/htccompressviewer/zip/JarMarker;

    invoke-direct {v0}, Lcom/htc/htccompressviewer/zip/JarMarker;-><init>()V

    sput-object v0, Lcom/htc/htccompressviewer/zip/JarMarker;->DEFAULT:Lcom/htc/htccompressviewer/zip/JarMarker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getInstance()Lcom/htc/htccompressviewer/zip/JarMarker;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/htc/htccompressviewer/zip/JarMarker;->DEFAULT:Lcom/htc/htccompressviewer/zip/JarMarker;

    return-object v0
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/htc/htccompressviewer/zip/JarMarker;->NO_BYTES:[B

    return-object v0
.end method

.method public getCentralDirectoryLength()Lcom/htc/htccompressviewer/zip/ZipShort;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/htc/htccompressviewer/zip/JarMarker;->NULL:Lcom/htc/htccompressviewer/zip/ZipShort;

    return-object v0
.end method

.method public getHeaderId()Lcom/htc/htccompressviewer/zip/ZipShort;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/htc/htccompressviewer/zip/JarMarker;->ID:Lcom/htc/htccompressviewer/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/htc/htccompressviewer/zip/JarMarker;->NO_BYTES:[B

    return-object v0
.end method

.method public getLocalFileDataLength()Lcom/htc/htccompressviewer/zip/ZipShort;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/htc/htccompressviewer/zip/JarMarker;->NULL:Lcom/htc/htccompressviewer/zip/ZipShort;

    return-object v0
.end method

.method public parseFromLocalFileData([BII)V
    .locals 2
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 105
    if-eqz p3, :cond_0

    .line 106
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "JarMarker doesn\'t expect any data"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    return-void
.end method
