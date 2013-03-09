.class Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;
.super Ljava/lang/Object;
.source "SimpleTempStorage.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleTempPath"
.end annotation


# instance fields
.field private path:Ljava/io/File;

.field final synthetic this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;


# direct methods
.method private constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;Ljava/io/File;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    iput-object p2, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;Ljava/io/File;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;Ljava/lang/String;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;-><init>(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createTempFile()Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;

    #calls: Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;->createTempFile(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;
    invoke-static {v0, p0, v1, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;->access$300(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;

    move-result-object v0

    return-object v0
.end method

.method public createTempFile(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;

    #calls: Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;->createTempFile(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;
    invoke-static {v0, p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;->access$300(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;

    move-result-object v0

    return-object v0
.end method

.method public createTempFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;

    #calls: Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;->createTempFile(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;
    invoke-static {v0, p0, p1, p2}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;->access$300(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;

    move-result-object v0

    return-object v0
.end method

.method public createTempPath()Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;

    const/4 v1, 0x0

    #calls: Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;->createTempPath(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;
    invoke-static {v0, p0, v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;->access$400(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;

    move-result-object v0

    return-object v0
.end method

.method public createTempPath(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->this$0:Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;

    #calls: Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;->createTempPath(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;
    invoke-static {v0, p0, p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;->access$400(Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage;Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;

    move-result-object v0

    return-object v0
.end method

.method public delete()V
    .locals 0

    return-void
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/SimpleTempStorage$SimpleTempPath;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
