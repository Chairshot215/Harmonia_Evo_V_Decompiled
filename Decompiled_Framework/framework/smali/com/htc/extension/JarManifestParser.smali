.class public Lcom/htc/extension/JarManifestParser;
.super Ljava/lang/Object;
.source "JarManifestParser.java"


# instance fields
.field private mManifest:Ljava/util/jar/Manifest;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/htc/extension/JarManifestParser;->setPath(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/htc/extension/JarManifestParser;->setManifest()V

    return-void
.end method

.method private getDefaultPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/system/framework/HTCExtension.jar"

    return-object v0
.end method

.method private getManifest()Ljava/util/jar/Manifest;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {p0}, Lcom/htc/extension/JarManifestParser;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/extension/JarManifestParser;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method private setManifest()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/extension/JarManifestParser;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/extension/JarManifestParser;->mManifest:Ljava/util/jar/Manifest;

    return-void
.end method

.method private setPath(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/htc/extension/JarManifestParser;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/extension/JarManifestParser;->mPath:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/htc/extension/JarManifestParser;->mPath:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getEntryValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/extension/JarManifestParser;->mManifest:Ljava/util/jar/Manifest;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/htc/extension/JarManifestParser;->mManifest:Ljava/util/jar/Manifest;

    invoke-virtual {v3}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/Attributes;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
