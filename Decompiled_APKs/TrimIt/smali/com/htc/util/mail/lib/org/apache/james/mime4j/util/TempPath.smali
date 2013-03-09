.class public interface abstract Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;
.super Ljava/lang/Object;
.source "TempPath.java"


# virtual methods
.method public abstract createTempFile()Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createTempFile(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createTempFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createTempPath()Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createTempPath(Ljava/lang/String;)Lcom/htc/util/mail/lib/org/apache/james/mime4j/util/TempPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract delete()V
.end method

.method public abstract getAbsolutePath()Ljava/lang/String;
.end method
