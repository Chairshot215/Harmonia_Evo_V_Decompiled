.class Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;
.super Ljava/lang/Object;
.source "SimpleTempStorage.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleTempFile"
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field final synthetic this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;


# direct methods
.method private constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;Ljava/io/File;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;Ljava/io/File;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 0

    return-void
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public isInMemory()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
