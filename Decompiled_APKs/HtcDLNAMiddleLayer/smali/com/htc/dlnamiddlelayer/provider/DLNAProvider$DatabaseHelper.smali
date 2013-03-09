.class final Lcom/htc/dlnamiddlelayer/provider/DLNAProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DLNAProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatabaseHelper"
.end annotation


# instance fields
.field mArtistCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mstorageType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "storageType"

    .prologue
    .line 393
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider$DatabaseHelper;->mstorageType:I

    .line 387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    .line 395
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 396
    iput p3, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider$DatabaseHelper;->mstorageType:I

    .line 397
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 406
    invoke-static {}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseHelper.onCreate()+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget v0, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider$DatabaseHelper;->mstorageType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    #calls: Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;III)V
    invoke-static {p1, v0, v1, v2}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->access$100(Landroid/database/sqlite/SQLiteDatabase;III)V

    .line 410
    invoke-static {}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseHelper.onCreate()-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    .line 436
    invoke-static {}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DatabaseHelper.onOpen()+"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 440
    .local v1, file:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 442
    .local v2, now:J
    invoke-static {}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DLNAProvider.onOpen.currentTimeMillis()+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    invoke-static {}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DatabaseHelper.onOpen()-"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 448
    .local v0, e:Ljava/lang/Exception;
    if-nez v0, :cond_0

    .line 449
    invoke-static {}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DLNAProvider.onOpen.currentTimeMillis()-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 452
    :cond_0
    invoke-static {}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DLNAProvider.onOpen.currentTimeMillis()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 420
    invoke-static {}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseHelper.onUpgrade()+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget v0, p0, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider$DatabaseHelper;->mstorageType:I

    #calls: Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;III)V
    invoke-static {p1, v0, p2, p3}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->access$100(Landroid/database/sqlite/SQLiteDatabase;III)V

    .line 424
    invoke-static {}, Lcom/htc/dlnamiddlelayer/provider/DLNAProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseHelper.onUpgrade()-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void
.end method
