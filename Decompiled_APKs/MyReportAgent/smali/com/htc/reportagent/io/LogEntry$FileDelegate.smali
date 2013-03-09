.class Lcom/htc/reportagent/io/LogEntry$FileDelegate;
.super Ljava/lang/Object;
.source "LogEntry.java"

# interfaces
.implements Lcom/htc/reportagent/io/LogEntry$LogDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/reportagent/io/LogEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileDelegate"
.end annotation


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mType:Lcom/htc/reportagent/io/LogEntry$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "filePath"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(LogEntry) File Path is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    sget-object v0, Lcom/htc/reportagent/io/LogEntry$Type;->TYPE_FILE_PATH:Lcom/htc/reportagent/io/LogEntry$Type;

    iput-object v0, p0, Lcom/htc/reportagent/io/LogEntry$FileDelegate;->mType:Lcom/htc/reportagent/io/LogEntry$Type;

    .line 42
    iput-object p1, p0, Lcom/htc/reportagent/io/LogEntry$FileDelegate;->mFilePath:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public closeEntry()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/htc/reportagent/io/LogEntry$FileDelegate;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, fis:Ljava/io/FileInputStream;
    invoke-static {v1}, Lcom/htc/utils/ulog/io/LogStream;->isLogStream(Ljava/io/InputStream;)Z

    move-result v3

    .line 50
    .local v3, isLogStream:Z
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 52
    if-eqz v3, :cond_0

    .line 53
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1           #fis:Ljava/io/FileInputStream;
    iget-object v4, p0, Lcom/htc/reportagent/io/LogEntry$FileDelegate;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 54
    .restart local v1       #fis:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 56
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    sget-object v4, Lcom/htc/reportagent/Common;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    invoke-static {v1, v4}, Lcom/htc/utils/ulog/io/LogStream;->concatenateInputStream(Ljava/io/InputStream;Lcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 61
    .end local v2           #is:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 57
    .restart local v2       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v0           #e:Ljava/security/GeneralSecurityException;
    .end local v2           #is:Ljava/io/InputStream;
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/htc/reportagent/io/LogEntry$FileDelegate;->mFilePath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getType()Lcom/htc/reportagent/io/LogEntry$Type;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/reportagent/io/LogEntry$FileDelegate;->mType:Lcom/htc/reportagent/io/LogEntry$Type;

    return-object v0
.end method
