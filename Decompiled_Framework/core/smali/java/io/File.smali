.class public Ljava/io/File;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final pathSeparator:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final pathSeparatorChar:C = '\u0000'

.field public static final separator:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final separatorChar:C = '\u0000'

.field private static final serialVersionUID:J = 0x42da4450e0de4ffL

.field private static final tempFileRandom:Ljava/util/Random;


# instance fields
.field private path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ljava/io/File;->tempFileRandom:Ljava/util/Random;

    const-string v0, "file.separator"

    const-string v1, "/"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sput-char v0, Ljava/io/File;->separatorChar:C

    const-string v0, "path.separator"

    const-string v1, ":"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sput-char v0, Ljava/io/File;->pathSeparatorChar:C

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sget-char v0, Ljava/io/File;->pathSeparatorChar:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p2}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Ljava/io/File;->join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/io/File;->checkURI(Ljava/net/URI;)V

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    return-void
.end method

.method private static checkURI(Ljava/net/URI;)V
    .locals 4

    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI is not absolute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI is not hierarchical: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v1, "file"

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected file scheme in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected non-empty path in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {p0}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found authority in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found query in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found fragment in URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    return-void
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "prefix must be at least 3 characters"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ".tmp"

    :cond_1
    move-object v2, p2

    if-nez v2, :cond_2

    const-string v3, "java.io.tmpdir"

    const-string v4, "."

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->tempFileRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v0
.end method

.method private doAccess(I)Z
    .locals 3

    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Llibcore/io/Os;->access(Ljava/lang/String;I)Z
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doChmod(IZ)Z
    .locals 5

    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v3, v4}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v2

    if-eqz p2, :cond_0

    iget v3, v2, Llibcore/io/StructStat;->st_mode:I

    or-int v1, v3, p1

    :goto_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Llibcore/io/Os;->chmod(Ljava/lang/String;I)V

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    iget v3, v2, Llibcore/io/StructStat;->st_mode:I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v4, p1, -0x1

    and-int v1, v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_1
.end method

.method private filenamesToFiles([Ljava/lang/String;)[Ljava/io/File;
    .locals 5

    if-nez p1, :cond_1

    const/4 v2, 0x0

    :cond_0
    return-object v2

    :cond_1
    array-length v0, p1

    new-array v2, v0, [Ljava/io/File;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v3, Ljava/io/File;

    aget-object v4, p1, v1

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static fixSlashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v3, v6

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v5, v4

    :goto_0
    if-ge v1, v3, :cond_1

    aget-char v0, v6, v1

    const/16 v7, 0x2f

    if-ne v0, v7, :cond_0

    if-nez v2, :cond_4

    add-int/lit8 v4, v5, 0x1

    sget-char v7, Ljava/io/File;->separatorChar:C

    aput-char v7, v6, v5

    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v5, 0x1

    aput-char v0, v6, v5

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_3

    const/4 v7, 0x1

    if-le v5, v7, :cond_3

    add-int/lit8 v4, v5, -0x1

    :goto_2
    if-eq v4, v3, :cond_2

    new-instance p0, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, v4}, Ljava/lang/String;-><init>([CII)V

    :cond_2
    return-object p0

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_1
.end method

.method private getAbsoluteName()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x2f

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget-char v2, Ljava/io/File;->separatorChar:C

    if-eq v2, v4, :cond_1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private static join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    if-ne v4, v5, :cond_1

    move v0, v2

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    if-ne v4, v5, :cond_2

    move v0, v2

    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private static native listImpl(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static listRoots()[Ljava/io/File;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readChar()C

    move-result v0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/io/File;->fixSlashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    return-void
.end method

.method private static native readlink(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native realpath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native setLastModifiedImpl(Ljava/lang/String;J)Z
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeChar(I)V

    return-void
.end method


# virtual methods
.method public canExecute()Z
    .locals 1

    sget v0, Llibcore/io/OsConstants;->X_OK:I

    invoke-direct {p0, v0}, Ljava/io/File;->doAccess(I)Z

    move-result v0

    return v0
.end method

.method public canRead()Z
    .locals 1

    sget v0, Llibcore/io/OsConstants;->R_OK:I

    invoke-direct {p0, v0}, Ljava/io/File;->doAccess(I)Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .locals 1

    sget v0, Llibcore/io/OsConstants;->W_OK:I

    invoke-direct {p0, v0}, Ljava/io/File;->doAccess(I)Z

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/io/File;)I
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public createNewFile()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget v4, Llibcore/io/OsConstants;->O_RDWR:I

    sget v5, Llibcore/io/OsConstants;->O_CREAT:I

    or-int/2addr v4, v5

    sget v5, Llibcore/io/OsConstants;->O_EXCL:I

    or-int/2addr v4, v5

    const/16 v5, 0x180

    invoke-interface {v2, v3, v4, v5}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    :goto_0
    return v2

    :catch_0
    move-exception v0

    :try_start_1
    iget v2, v0, Llibcore/io/ErrnoException;->errno:I

    sget v3, Llibcore/io/OsConstants;->EEXIST:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V

    throw v2
.end method

.method public delete()Z
    .locals 3

    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Llibcore/io/Os;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteOnExit()V
    .locals 2

    invoke-static {}, Lorg/apache/harmony/luni/util/DeleteOnExit;->getInstance()Lorg/apache/harmony/luni/util/DeleteOnExit;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/util/DeleteOnExit;->addFile(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 1

    sget v0, Llibcore/io/OsConstants;->F_OK:I

    invoke-direct {p0, v0}, Ljava/io/File;->doAccess(I)Z

    move-result v0

    return v0
.end method

.method public getAbsoluteFile()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/io/File;->join(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCanonicalFile()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/io/File;->realpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFreeSpace()J
    .locals 6

    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v2, v3}, Llibcore/io/Os;->statfs(Ljava/lang/String;)Llibcore/io/StructStatFs;

    move-result-object v1

    iget-wide v2, v1, Llibcore/io/StructStatFs;->f_bfree:J

    iget-wide v4, v1, Llibcore/io/StructStatFs;->f_bsize:J
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v2, v4

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getParent()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    sget-char v3, Ljava/io/File;->separatorChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_0

    const/4 v0, 0x2

    :cond_0
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v1, v5, :cond_1

    if-lez v0, :cond_1

    const/4 v1, 0x2

    :cond_1
    if-eq v1, v5, :cond_2

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_3

    :cond_2
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_3
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget-char v4, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v1, :cond_4

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getParentFile()Ljava/io/File;
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSpace()J
    .locals 6

    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v2, v3}, Llibcore/io/Os;->statfs(Ljava/lang/String;)Llibcore/io/StructStatFs;

    move-result-object v1

    iget-wide v2, v1, Llibcore/io/StructStatFs;->f_blocks:J

    iget-wide v4, v1, Llibcore/io/StructStatFs;->f_bsize:J
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v2, v4

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getUsableSpace()J
    .locals 6

    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v2, v3}, Llibcore/io/Os;->statfs(Ljava/lang/String;)Llibcore/io/StructStatFs;

    move-result-object v1

    iget-wide v2, v1, Llibcore/io/StructStatFs;->f_bavail:J

    iget-wide v4, v1, Llibcore/io/StructStatFs;->f_bsize:J
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v2, v4

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x12d591

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAbsolute()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDirectory()Z
    .locals 3

    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v1

    iget v1, v1, Llibcore/io/StructStat;->st_mode:I

    invoke-static {v1}, Llibcore/io/OsConstants;->S_ISDIR(I)Z
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFile()Z
    .locals 3

    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v1

    iget v1, v1, Llibcore/io/StructStat;->st_mode:I

    invoke-static {v1}, Llibcore/io/OsConstants;->S_ISREG(I)Z
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHidden()Z
    .locals 2

    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 5

    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v1

    iget-wide v1, v1, Llibcore/io/StructStat;->st_mtime:J
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public length()J
    .locals 3

    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v1

    iget-wide v1, v1, Llibcore/io/StructStat;->st_size:J
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public list()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-static {v0}, Ljava/io/File;->listImpl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move-object v6, v2

    :goto_0
    return-object v6

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    invoke-interface {p1, p0, v1}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_0
.end method

.method public listFiles()[Ljava/io/File;
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;->filenamesToFiles([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    .locals 7

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz p1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move-object v6, v2

    :goto_0
    return-object v6

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    invoke-interface {p1, v1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/io/File;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/io/File;

    goto :goto_0
.end method

.method public listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;->filenamesToFiles([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public mkdir()Z
    .locals 4

    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    sget v3, Llibcore/io/OsConstants;->S_IRWXU:I

    invoke-interface {v1, v2, v3}, Llibcore/io/Os;->mkdir(Ljava/lang/String;I)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mkdirs()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public renameTo(Ljava/io/File;)Z
    .locals 4

    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/io/File;->path:Ljava/lang/String;

    iget-object v3, p1, Ljava/io/File;->path:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Llibcore/io/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setExecutable(Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setExecutable(ZZ)Z
    .locals 2

    if-eqz p2, :cond_0

    sget v0, Llibcore/io/OsConstants;->S_IXUSR:I

    :goto_0
    invoke-direct {p0, v0, p1}, Ljava/io/File;->doChmod(IZ)Z

    move-result v0

    return v0

    :cond_0
    sget v0, Llibcore/io/OsConstants;->S_IXUSR:I

    sget v1, Llibcore/io/OsConstants;->S_IXGRP:I

    or-int/2addr v0, v1

    sget v1, Llibcore/io/OsConstants;->S_IXOTH:I

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public setLastModified(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "time < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Ljava/io/File;->setLastModifiedImpl(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setReadable(Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setReadable(ZZ)Z
    .locals 2

    if-eqz p2, :cond_0

    sget v0, Llibcore/io/OsConstants;->S_IRUSR:I

    :goto_0
    invoke-direct {p0, v0, p1}, Ljava/io/File;->doChmod(IZ)Z

    move-result v0

    return v0

    :cond_0
    sget v0, Llibcore/io/OsConstants;->S_IRUSR:I

    sget v1, Llibcore/io/OsConstants;->S_IRGRP:I

    or-int/2addr v0, v1

    sget v1, Llibcore/io/OsConstants;->S_IROTH:I

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public setWritable(Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    return v0
.end method

.method public setWritable(ZZ)Z
    .locals 2

    if-eqz p2, :cond_0

    sget v0, Llibcore/io/OsConstants;->S_IWUSR:I

    :goto_0
    invoke-direct {p0, v0, p1}, Ljava/io/File;->doChmod(IZ)Z

    move-result v0

    return v0

    :cond_0
    sget v0, Llibcore/io/OsConstants;->S_IWUSR:I

    sget v1, Llibcore/io/OsConstants;->S_IWGRP:I

    or-int/2addr v0, v1

    sget v1, Llibcore/io/OsConstants;->S_IWOTH:I

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/io/File;->path:Ljava/lang/String;

    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/io/File;->getAbsoluteName()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/URI;

    const-string v1, "file"

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "//"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/net/URI;

    const-string v1, "file"

    const-string v2, ""

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v0, v7

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/net/URI;

    const-string v1, "file"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public toURL()Ljava/net/URL;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/io/File;->getAbsoluteName()Ljava/lang/String;

    move-result-object v4

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/URL;

    const-string v1, "file"

    const-string v2, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "//"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/net/URL;

    const-string v1, "file"

    const-string v2, ""

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_0
.end method
