.class Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;
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
    name = "DropBoxFileDelegate"
.end annotation


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mEntry:Landroid/os/DropBoxManager$Entry;

.field private mEntryTag:Ljava/lang/String;

.field private mEntryTime:J

.field private mType:Lcom/htc/reportagent/io/LogEntry$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLandroid/content/Context;)V
    .locals 2
    .parameter "tag"
    .parameter "time"
    .parameter "ctx"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/htc/reportagent/io/LogEntry$Type;->TYPE_UNKNOWN:Lcom/htc/reportagent/io/LogEntry$Type;

    iput-object v0, p0, Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;->mType:Lcom/htc/reportagent/io/LogEntry$Type;

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(LogEntry) the tag of entry is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(LogEntry) the time of entry is less than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    if-nez p4, :cond_2

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(LogEntry) the ctx is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2
    sget-object v0, Lcom/htc/reportagent/io/LogEntry$Type;->TYPE_DROPBOX:Lcom/htc/reportagent/io/LogEntry$Type;

    iput-object v0, p0, Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;->mType:Lcom/htc/reportagent/io/LogEntry$Type;

    .line 80
    iput-wide p2, p0, Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;->mEntryTime:J

    .line 81
    iput-object p1, p0, Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;->mEntryTag:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;->mCtx:Landroid/content/Context;

    .line 83
    return-void
.end method


# virtual methods
.method public closeEntry()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;->mEntry:Landroid/os/DropBoxManager$Entry;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;->mEntry:Landroid/os/DropBoxManager$Entry;

    invoke-virtual {v0}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 126
    :cond_0
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v3, 0x0

    .line 90
    .local v3, isLogStream:Z
    const/4 v1, 0x0

    .line 91
    .local v1, entry:Landroid/os/DropBoxManager$Entry;
    iget-object v7, p0, Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;->mCtx:Landroid/content/Context;

    const-string v8, "dropbox"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/DropBoxManager;

    .line 92
    .local v4, manager:Landroid/os/DropBoxManager;
    iget-object v7, p0, Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;->mEntryTag:Ljava/lang/String;

    iget-wide v8, p0, Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;->mEntryTime:J

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 96
    .local v6, typeVerifiedIS:Ljava/io/InputStream;
    if-eqz v6, :cond_0

    .line 97
    invoke-static {v6}, Lcom/htc/utils/ulog/io/LogStream;->isLogStream(Ljava/io/InputStream;)Z

    move-result v3

    .line 98
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 99
    const/4 v6, 0x0

    .line 101
    :cond_0
    invoke-virtual {v1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 102
    const/4 v1, 0x0

    .line 105
    .end local v6           #typeVerifiedIS:Ljava/io/InputStream;
    :cond_1
    const/4 v5, 0x0

    .line 106
    .local v5, tmpIS:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 107
    .local v2, is:Ljava/io/InputStream;
    iget-object v7, p0, Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;->mEntry:Landroid/os/DropBoxManager$Entry;

    if-eqz v7, :cond_2

    .line 108
    iget-object v7, p0, Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;->mEntry:Landroid/os/DropBoxManager$Entry;

    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 109
    :cond_2
    iget-object v7, p0, Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;->mEntryTag:Ljava/lang/String;

    iget-wide v8, p0, Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;->mEntryTime:J

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;->mEntry:Landroid/os/DropBoxManager$Entry;

    .line 110
    iget-object v7, p0, Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;->mEntry:Landroid/os/DropBoxManager$Entry;

    if-eqz v7, :cond_3

    .line 111
    iget-object v7, p0, Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;->mEntry:Landroid/os/DropBoxManager$Entry;

    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 112
    if-eqz v3, :cond_4

    .line 114
    :try_start_0
    sget-object v7, Lcom/htc/reportagent/Common;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    invoke-static {v5, v7}, Lcom/htc/utils/ulog/io/LogStream;->concatenateInputStream(Ljava/io/InputStream;Lcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 121
    :cond_3
    :goto_0
    return-object v2

    .line 115
    :catch_0
    move-exception v0

    .local v0, e:Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v0           #e:Ljava/security/GeneralSecurityException;
    :cond_4
    move-object v2, v5

    goto :goto_0
.end method

.method public getType()Lcom/htc/reportagent/io/LogEntry$Type;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/reportagent/io/LogEntry$DropBoxFileDelegate;->mType:Lcom/htc/reportagent/io/LogEntry$Type;

    return-object v0
.end method
