.class public Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;
.super Ljava/lang/Object;
.source "FileDeleteStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy$ForceFileDeleteStrategy;
    }
.end annotation


# static fields
.field public static final FORCE:Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;

.field public static final NORMAL:Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;

    const-string v1, "Normal"

    invoke-direct {v0, v1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;->NORMAL:Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;

    .line 46
    new-instance v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy$ForceFileDeleteStrategy;

    invoke-direct {v0}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy$ForceFileDeleteStrategy;-><init>()V

    sput-object v0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;->FORCE:Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;->name:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public delete(Ljava/io/File;)V
    .locals 3
    .parameter "fileToDelete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;->doDelete(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deletion failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    return-void
.end method

.method public deleteQuietly(Ljava/io/File;)Z
    .locals 2
    .parameter "fileToDelete"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    :cond_0
    const/4 v1, 0x1

    .line 79
    :goto_0
    return v1

    .line 77
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;->doDelete(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, ex:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected doDelete(Ljava/io/File;)Z
    .locals 1
    .parameter "fileToDelete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileDeleteStrategy["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/mail/lib/org/apache/commons/io/FileDeleteStrategy;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
