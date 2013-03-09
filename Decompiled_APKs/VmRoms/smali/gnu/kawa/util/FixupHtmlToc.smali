.class public Lgnu/kawa/util/FixupHtmlToc;
.super Ljava/lang/Object;
.source "FixupHtmlToc.java"


# static fields
.field static argFiles:[Lgnu/kawa/util/FileInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .parameter "args"

    .prologue
    .line 36
    :try_start_0
    array-length v3, p0

    new-array v3, v3, [Lgnu/kawa/util/FileInfo;

    sput-object v3, Lgnu/kawa/util/FixupHtmlToc;->argFiles:[Lgnu/kawa/util/FileInfo;

    .line 37
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 39
    new-instance v3, Ljava/io/File;

    aget-object v4, p0, v1

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lgnu/kawa/util/FileInfo;->find(Ljava/io/File;)Lgnu/kawa/util/FileInfo;

    move-result-object v2

    .line 40
    .local v2, info:Lgnu/kawa/util/FileInfo;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lgnu/kawa/util/FileInfo;->writeNeeded:Z

    .line 41
    sget-object v3, Lgnu/kawa/util/FixupHtmlToc;->argFiles:[Lgnu/kawa/util/FileInfo;

    aput-object v2, v3, v1

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v2           #info:Lgnu/kawa/util/FileInfo;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 46
    sget-object v3, Lgnu/kawa/util/FixupHtmlToc;->argFiles:[Lgnu/kawa/util/FileInfo;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lgnu/kawa/util/FileInfo;->scan()V

    .line 47
    sget-object v3, Lgnu/kawa/util/FixupHtmlToc;->argFiles:[Lgnu/kawa/util/FileInfo;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lgnu/kawa/util/FileInfo;->write()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 50
    .end local v1           #i:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 52
    .local v0, ex:Ljava/lang/Throwable;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .end local v0           #ex:Ljava/lang/Throwable;
    :cond_1
    return-void
.end method
