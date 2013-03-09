.class Lcom/htc/android/epst/ExtFilter;
.super Ljava/lang/Object;
.source "FileBrowserActivity.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private ext:Ljava/lang/String;

.field private isCaseSensitive:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "ext"
    .parameter "isCaseSensitive"

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/ExtFilter;->ext:Ljava/lang/String;

    .line 486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/epst/ExtFilter;->isCaseSensitive:Z

    .line 489
    iput-object p1, p0, Lcom/htc/android/epst/ExtFilter;->ext:Ljava/lang/String;

    .line 490
    iput-boolean p2, p0, Lcom/htc/android/epst/ExtFilter;->isCaseSensitive:Z

    .line 491
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 494
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 496
    const/4 v1, 0x0

    .line 504
    :goto_0
    return v1

    .line 499
    :cond_0
    iget-boolean v1, p0, Lcom/htc/android/epst/ExtFilter;->isCaseSensitive:Z

    if-nez v1, :cond_1

    .line 500
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 501
    iget-object v1, p0, Lcom/htc/android/epst/ExtFilter;->ext:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/ExtFilter;->ext:Ljava/lang/String;

    .line 504
    :cond_1
    iget-object v1, p0, Lcom/htc/android/epst/ExtFilter;->ext:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
