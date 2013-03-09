.class public Lgnu/kawa/functions/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTempFile(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 18
    if-nez p0, :cond_0

    .line 19
    const-string p0, "kawa~d.tmp"

    .line 20
    :cond_0
    const/16 v5, 0x7e

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 22
    .local v4, tilde:I
    const/4 v0, 0x0

    .line 23
    .local v0, directory:Ljava/io/File;
    if-gez v4, :cond_2

    .line 25
    move-object v1, p0

    .line 26
    .local v1, prefix:Ljava/lang/String;
    const-string v3, ".tmp"

    .line 33
    .local v3, suffix:Ljava/lang/String;
    :goto_0
    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 34
    .local v2, sep:I
    if-ltz v2, :cond_1

    .line 36
    new-instance v0, Ljava/io/File;

    .end local v0           #directory:Ljava/io/File;
    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .restart local v0       #directory:Ljava/io/File;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    :cond_1
    invoke-static {v1, v3, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    return-object v5

    .line 30
    .end local v1           #prefix:Ljava/lang/String;
    .end local v2           #sep:I
    .end local v3           #suffix:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 31
    .restart local v1       #prefix:Ljava/lang/String;
    add-int/lit8 v5, v4, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #suffix:Ljava/lang/String;
    goto :goto_0
.end method
