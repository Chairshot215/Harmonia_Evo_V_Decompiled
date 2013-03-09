.class Ldalvik/system/DexPathList$Element;
.super Ljava/lang/Object;
.source "DexPathList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/DexPathList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Element"
.end annotation


# instance fields
.field public final dexFile:Ldalvik/system/DexFile;

.field public final file:Ljava/io/File;

.field public final zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/zip/ZipFile;Ldalvik/system/DexFile;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldalvik/system/DexPathList$Element;->file:Ljava/io/File;

    iput-object p2, p0, Ldalvik/system/DexPathList$Element;->zipFile:Ljava/util/zip/ZipFile;

    iput-object p3, p0, Ldalvik/system/DexPathList$Element;->dexFile:Ldalvik/system/DexFile;

    return-void
.end method


# virtual methods
.method public findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    iget-object v1, p0, Ldalvik/system/DexPathList$Element;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldalvik/system/DexPathList$Element;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jar:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldalvik/system/DexPathList$Element;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
