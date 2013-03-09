.class public Lcom/htc/android/mail/ulog/ULogFileMgr;
.super Ljava/lang/Object;
.source "ULogFileMgr.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ULogFileMgr"

.field public static filelock:Ljava/lang/Object;


# instance fields
.field private final NOTFOUND:I

.field private breader:Ljava/io/BufferedReader;

.field private bwriter:Ljava/io/BufferedWriter;

.field private cacheNotTodayRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ulog/Record;",
            ">;"
        }
    .end annotation
.end field

.field private content:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ulog/Record;",
            ">;"
        }
    .end annotation
.end field

.field private file:Ljava/io/File;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/android/mail/ulog/ULogFileMgr;->filelock:Ljava/lang/Object;

    .line 30
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/ulog/ULogFileMgr;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->NOTFOUND:I

    .line 36
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "ulog"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    const-string v3, "mailcount"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->file:Ljava/io/File;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->cacheNotTodayRecord:Ljava/util/ArrayList;

    .line 39
    iget-object v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/ulog/ULogFileMgr;->initData()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private add(JJJJ)V
    .locals 10
    .parameter "accountId"
    .parameter "mailSentNum"
    .parameter "mailReceivedNum"
    .parameter "recordTime"

    .prologue
    .line 313
    iget-object v9, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/android/mail/ulog/Record;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/htc/android/mail/ulog/Record;-><init>(JJJJ)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method private initData()V
    .locals 13

    .prologue
    .line 233
    sget-object v12, Lcom/htc/android/mail/ulog/ULogFileMgr;->filelock:Ljava/lang/Object;

    monitor-enter v12

    .line 235
    const/4 v10, 0x0

    .line 239
    .local v10, line:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->breader:Ljava/io/BufferedReader;

    .line 240
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->breader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 241
    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 243
    .local v11, strList:[Ljava/lang/String;
    new-instance v0, Lcom/htc/android/mail/ulog/Record;

    const/4 v1, 0x0

    aget-object v1, v11, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x1

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x2

    aget-object v5, v11, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x3

    aget-object v7, v11, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-direct/range {v0 .. v8}, Lcom/htc/android/mail/ulog/Record;-><init>(JJJJ)V

    .line 248
    .local v0, record:Lcom/htc/android/mail/ulog/Record;
    iget-object v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 251
    .end local v0           #record:Lcom/htc/android/mail/ulog/Record;
    .end local v11           #strList:[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 252
    .local v9, e:Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 256
    .end local v9           #e:Ljava/lang/NumberFormatException;
    :goto_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    return-void

    .line 250
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->breader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 253
    :catch_1
    move-exception v9

    .line 254
    .local v9, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 256
    .end local v9           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static isAddShowMeFile(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 215
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ulog"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    const-string v4, "showMe"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 218
    .local v1, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    const/4 v2, 0x1

    .line 226
    :cond_0
    :goto_0
    return v2

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private isIdExist(J)I
    .locals 6
    .parameter "accountId"

    .prologue
    const/4 v3, -0x1

    .line 296
    iget-object v2, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 297
    .local v1, size:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-le v0, v3, :cond_1

    .line 298
    iget-object v2, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/ulog/Record;

    invoke-virtual {v2}, Lcom/htc/android/mail/ulog/Record;->getId()J

    move-result-wide v4

    cmp-long v2, v4, p1

    if-nez v2, :cond_0

    .line 302
    .end local v0           #i:I
    :goto_1
    return v0

    .line 297
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 302
    goto :goto_1
.end method

.method private output(Z)V
    .locals 9
    .parameter "isNeedRefresh"

    .prologue
    .line 265
    sget-object v4, Lcom/htc/android/mail/ulog/ULogFileMgr;->filelock:Ljava/lang/Object;

    monitor-enter v4

    .line 267
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    iget-object v6, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->file:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->bwriter:Ljava/io/BufferedWriter;

    .line 268
    iget-object v3, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 269
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 271
    iget-object v5, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->bwriter:Ljava/io/BufferedWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ulog/Record;

    invoke-virtual {v3}, Lcom/htc/android/mail/ulog/Record;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/ulog/Record;

    invoke-virtual {v3}, Lcom/htc/android/mail/ulog/Record;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->bwriter:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 274
    iget-object v3, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->bwriter:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 275
    if-eqz p1, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/htc/android/mail/ulog/ULogFileMgr;->refreshData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_1
    :goto_1
    :try_start_1
    monitor-exit v4

    .line 284
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 283
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private setCacheForNotTodayRecords()V
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/ulog/Record;

    invoke-virtual {v1}, Lcom/htc/android/mail/ulog/Record;->getRecordTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/mail/ulog/ULogFileMgr;->isToday(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->cacheNotTodayRecord:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 107
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    return-void
.end method

.method private update(IJJJJ)V
    .locals 3
    .parameter "index"
    .parameter "accountId"
    .parameter "mailSentNum"
    .parameter "mailReceivedNum"
    .parameter "recordTime"

    .prologue
    .line 326
    iget-object v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ulog/Record;

    .line 327
    .local v0, record:Lcom/htc/android/mail/ulog/Record;
    invoke-virtual {v0}, Lcom/htc/android/mail/ulog/Record;->getMailReceivedNum()J

    move-result-wide v1

    add-long/2addr v1, p6

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/ulog/Record;->setMailReceivedNum(J)V

    .line 328
    invoke-virtual {v0}, Lcom/htc/android/mail/ulog/Record;->getMailSentNum()J

    move-result-wide v1

    add-long/2addr v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/ulog/Record;->setMailSentNum(J)V

    .line 329
    invoke-virtual {v0, p8, p9}, Lcom/htc/android/mail/ulog/Record;->setRecordTime(J)V

    .line 330
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 3

    .prologue
    .line 191
    sget-boolean v1, Lcom/htc/android/mail/ulog/ULogFileMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ULogFileMgr"

    const-string v2, "clean()"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    sget-object v2, Lcom/htc/android/mail/ulog/ULogFileMgr;->filelock:Ljava/lang/Object;

    monitor-enter v2

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 196
    iget-object v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 205
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 203
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public cleanNotTodayRecordCache()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->cacheNotTodayRecord:Ljava/util/ArrayList;

    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/mail/ulog/ULogFileMgr;->output(Z)V

    .line 160
    return-void
.end method

.method public delete(ZJ)V
    .locals 4
    .parameter "isNeedRefresh"
    .parameter "id"

    .prologue
    .line 182
    sget-boolean v1, Lcom/htc/android/mail/ulog/ULogFileMgr;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ULogFileMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete() - id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/htc/android/mail/ulog/ULogFileMgr;->isIdExist(J)I

    move-result v0

    .line 184
    .local v0, result:I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    .line 185
    iget-object v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 187
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ulog/ULogFileMgr;->output(Z)V

    .line 188
    return-void
.end method

.method public getRecordList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ulog/Record;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/htc/android/mail/ulog/ULogFileMgr;->initData()V

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/ulog/ULogFileMgr;->setCacheForNotTodayRecords()V

    .line 148
    iget-object v0, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->cacheNotTodayRecord:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->cacheNotTodayRecord:Ljava/util/ArrayList;

    .line 152
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public hasNotToday()Z
    .locals 4

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, result:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/ulog/Record;

    invoke-virtual {v2}, Lcom/htc/android/mail/ulog/Record;->getRecordTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/mail/ulog/ULogFileMgr;->isToday(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    const/4 v1, 0x1

    .line 96
    :cond_0
    return v1

    .line 89
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hasOldRecord()Z
    .locals 2

    .prologue
    .line 163
    iget-object v1, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->cacheNotTodayRecord:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 164
    .local v0, size:I
    if-lez v0, :cond_0

    .line 165
    const/4 v1, 0x1

    .line 168
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isToday(J)Z
    .locals 15
    .parameter "timestamp"

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 64
    .local v1, currentTime:J
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 65
    .local v0, cal:Ljava/util/Calendar;
    const/16 v11, 0xb

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 66
    .local v3, hour24:I
    const/16 v11, 0xc

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 67
    .local v4, min:I
    const/16 v11, 0xd

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    .line 68
    .local v10, sec:I
    const/16 v11, 0xe

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    .line 69
    .local v5, ms:I
    const-wide/32 v6, 0x5265c00

    .line 70
    .local v6, period:J
    mul-int/lit16 v11, v3, 0xe10

    mul-int/lit8 v12, v4, 0x3c

    add-int/2addr v11, v12

    add-int/2addr v11, v10

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    sub-long v11, v6, v11

    int-to-long v13, v5

    add-long/2addr v11, v13

    const-wide/32 v13, 0x84148

    sub-long v8, v11, v13

    .line 71
    .local v8, remainTime:J
    add-long v11, v1, v8

    sub-long v11, v11, p1

    cmp-long v11, v11, v6

    if-lez v11, :cond_0

    .line 72
    const/4 v11, 0x0

    .line 75
    :goto_0
    return v11

    :cond_0
    const/4 v11, 0x1

    goto :goto_0
.end method

.method public isULogFileEmpty()Z
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public manageMailCountULog(ZJJJ)V
    .locals 12
    .parameter "isNeedRefresh"
    .parameter "accountId"
    .parameter "mailReceivedNum"
    .parameter "mailSentNum"

    .prologue
    .line 122
    invoke-direct {p0, p2, p3}, Lcom/htc/android/mail/ulog/ULogFileMgr;->isIdExist(J)I

    move-result v3

    .line 124
    .local v3, result:I
    sget-boolean v2, Lcom/htc/android/mail/ulog/ULogFileMgr;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ULogFileMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "manageMailCountULog() - accountId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mailReceivedNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mailSentNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    const/4 v2, -0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/ulog/Record;

    invoke-virtual {v2}, Lcom/htc/android/mail/ulog/Record;->getRecordTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/htc/android/mail/ulog/ULogFileMgr;->isToday(J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 131
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object v2, p0

    move-wide v3, p2

    move-wide/from16 v5, p6

    move-wide/from16 v7, p4

    invoke-direct/range {v2 .. v10}, Lcom/htc/android/mail/ulog/ULogFileMgr;->add(JJJJ)V

    .line 136
    .end local v3           #result:I
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ulog/ULogFileMgr;->output(Z)V

    .line 137
    return-void

    .line 134
    .restart local v3       #result:I
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v2, p0

    move-wide v4, p2

    move-wide/from16 v6, p6

    move-wide/from16 v8, p4

    invoke-direct/range {v2 .. v11}, Lcom/htc/android/mail/ulog/ULogFileMgr;->update(IJJJJ)V

    goto :goto_0
.end method

.method public refreshData()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/htc/android/mail/ulog/ULogFileMgr;->content:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/ulog/ULogFileMgr;->initData()V

    .line 178
    return-void
.end method
