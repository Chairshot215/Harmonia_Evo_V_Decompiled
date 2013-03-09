.class Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;
.super Ljava/lang/Thread;
.source "DashboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/service/DashboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "runCSInitialForFOTA"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "dashboard.db"

.field private static final DATABASE_TABLE_CSSHARED:Ljava/lang/String; = "csshared"


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/cs/service/DashboardService;


# direct methods
.method constructor <init>(Lcom/htc/cs/service/DashboardService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 539
    iput-object p1, p0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->this$0:Lcom/htc/cs/service/DashboardService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 540
    iput-object p2, p0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    .line 541
    return-void
.end method

.method private checkDataBaseExist()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 764
    const/4 v0, 0x0

    .line 765
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v4, p0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    const-string v5, "dashboard.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 766
    .local v1, dbPath:Ljava/lang/String;
    const-string v4, "MyHTC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/cs/service/DashboardService;->access$600()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " checkDataBaseExist:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-static {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 773
    :goto_0
    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 776
    :cond_0
    if-eqz v0, :cond_1

    :goto_1
    return v3

    .line 770
    :catch_0
    move-exception v2

    .line 771
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    const-string v4, "MyHTC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/cs/service/DashboardService;->access$600()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " database does\'t exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 776
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isCSSharedProviderExist()Z
    .locals 14

    .prologue
    .line 722
    const/4 v10, 0x0

    .line 724
    .local v10, exist:Z
    invoke-direct {p0}, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->checkDataBaseExist()Z

    move-result v7

    .line 725
    .local v7, dbExist:Z
    const-string v0, "MyHTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/cs/service/DashboardService;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dbExist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    if-eqz v7, :cond_2

    .line 728
    :try_start_0
    iget-object v0, p0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    sget-object v2, Lcom/htc/cs/sync/dashboard/DashboardProvider;->QUERY_COLUMNS_CSSHARE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v13, "EmailAddress"

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 733
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 734
    const-string v0, "MyHTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/cs/service/DashboardService;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isCSSharedProviderExist(): null == cursor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    .line 759
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v10           #exist:Z
    .local v11, exist:I
    :goto_0
    return v11

    .line 738
    .end local v11           #exist:I
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v10       #exist:Z
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 739
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 740
    const-string v0, "MyHTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/cs/service/DashboardService;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isCSSharedProviderExist(): cursor.moveToFirst() fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    .line 743
    .restart local v11       #exist:I
    goto :goto_0

    .line 745
    .end local v11           #exist:I
    :cond_1
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 746
    .local v9, email:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 747
    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_2

    .line 748
    const/4 v10, 0x1

    .line 757
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #email:Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v0, "MyHTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/cs/service/DashboardService;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isCSSharedProviderExist() exist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    .line 759
    .restart local v11       #exist:I
    goto :goto_0

    .line 749
    .end local v11           #exist:I
    :catch_0
    move-exception v12

    .line 750
    .local v12, sqle:Landroid/database/sqlite/SQLiteException;
    const-string v0, "MyHTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/cs/service/DashboardService;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SQLiteException():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_1

    .line 752
    .end local v12           #sqle:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v8

    .line 753
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "MyHTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/cs/service/DashboardService;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Exception():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private provisioningForFOTA()V
    .locals 6

    .prologue
    .line 577
    :try_start_0
    iget-object v2, p0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getHashedPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/cs/util/CSDatabaseUtil;->WriteAccountInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.csengine.startservice"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 582
    .local v0, csIntent:Landroid/content/Intent;
    const-string v2, "test"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 583
    iget-object v2, p0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    .end local v0           #csIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v1

    .line 585
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "MyHTC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/cs/service/DashboardService;->access$600()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "provisioningForFOTAThread Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private removeUnsedFile()V
    .locals 9

    .prologue
    .line 605
    const-string v4, "dOrOoXwXsOsOaXpX"

    .line 606
    .local v4, notPassword:Ljava/lang/String;
    const-string v3, "AByCDeEFk"

    .line 608
    .local v3, notKey:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    .line 609
    .local v5, packageDir:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 611
    .local v2, filePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 612
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 613
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 614
    .local v0, b:Z
    const-string v6, "MyHTC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/cs/service/DashboardService;->access$600()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " delete dO~X:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    .end local v0           #b:Z
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 618
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 619
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 620
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 621
    .restart local v0       #b:Z
    const-string v6, "MyHTC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/cs/service/DashboardService;->access$600()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " delete AB~k:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    .end local v0           #b:Z
    :cond_1
    return-void
.end method

.method private removeUnsedSharePreference()V
    .locals 20

    .prologue
    .line 626
    const-string v16, "CSShared"

    .line 627
    .local v16, preferenceNameRest:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    const-string v2, "CSShared"

    const/4 v6, 0x4

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 631
    .local v17, preferencesforRest:Landroid/content/SharedPreferences;
    invoke-direct/range {p0 .. p0}, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->isCSSharedProviderExist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 632
    const-string v1, "MyHTC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/cs/service/DashboardService;->access$600()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " CSShared Provider is NOT exist then create it"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const-string v1, "cmsURI"

    sget-object v2, Lcom/htc/cs/util/Keys;->CMS_URI:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 639
    .local v11, cmsURI:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    invoke-static {v1, v11}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setCMSURI(Landroid/content/Context;Ljava/lang/String;)V

    .line 641
    const-string v1, "statusURI"

    sget-object v2, Lcom/htc/cs/util/Keys;->STATUS_URI:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 645
    .local v19, statusURI:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-static {v1, v0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setStatusURI(Landroid/content/Context;Ljava/lang/String;)V

    .line 647
    const-string v1, "HashedPassword"

    const-string v2, ""

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 651
    .local v14, hashedPassword:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    invoke-static {v1, v14}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setEncryptedPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 654
    const-string v1, "serverName"

    sget-object v2, Lcom/htc/cs/util/Keys;->SERVER_URL:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 658
    .local v18, serverName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setServeName(Landroid/content/Context;Ljava/lang/String;)V

    .line 660
    const-string v1, "imcURI"

    sget-object v2, Lcom/htc/cs/util/Keys;->IMC_URI:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 664
    .local v15, imcURI:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    invoke-static {v1, v15}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setIMCURI(Landroid/content/Context;Ljava/lang/String;)V

    .line 666
    const-string v1, "EmailAddress"

    const-string v2, ""

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 671
    .local v8, EmailAddress:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setEmail(Landroid/content/Context;Ljava/lang/String;)V

    .line 675
    .end local v8           #EmailAddress:Ljava/lang/String;
    .end local v11           #cmsURI:Ljava/lang/String;
    .end local v14           #hashedPassword:Ljava/lang/String;
    .end local v15           #imcURI:Ljava/lang/String;
    .end local v18           #serverName:Ljava/lang/String;
    .end local v19           #statusURI:Ljava/lang/String;
    :cond_0
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 676
    .local v13, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cmsURI"

    invoke-interface {v13, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 677
    const-string v1, "statusURI"

    invoke-interface {v13, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 678
    const-string v1, "HashedPassword"

    invoke-interface {v13, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 679
    const-string v1, "serverName"

    invoke-interface {v13, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 680
    const-string v1, "imcURI"

    invoke-interface {v13, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 681
    const-string v1, "EmailAddress"

    invoke-interface {v13, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 682
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v10

    .line 683
    .local v10, b:Z
    const-string v1, "MyHTC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/cs/service/DashboardService;->access$600()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " Remove preference:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.htc.cs"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 688
    .local v9, account:[Landroid/accounts/Account;
    array-length v1, v9

    if-lez v1, :cond_1

    .line 690
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 694
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->this$0:Lcom/htc/cs/service/DashboardService;

    #calls: Lcom/htc/cs/service/DashboardService;->removeAccount()V
    invoke-static {v1}, Lcom/htc/cs/service/DashboardService;->access$700(Lcom/htc/cs/service/DashboardService;)V

    .line 696
    new-instance v5, Landroid/content/Intent;

    const-string v1, "RemoveAccountNotify"

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 697
    .local v5, intentNotify:Landroid/content/Intent;
    const-string v1, "com.htc.cs"

    const-string v2, "com.htc.cs.activity.accountactivities.CS_login"

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 702
    .local v3, notifyTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 704
    .local v4, notifyDes:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    const/4 v6, 0x0

    sget-object v7, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;->Activity:Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    invoke-static/range {v1 .. v7}, Lcom/htc/cs/util/CSStatusBarNotification;->notify(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ZLcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    .end local v3           #notifyTitle:Ljava/lang/String;
    .end local v4           #notifyDes:Ljava/lang/String;
    .end local v5           #intentNotify:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 709
    :catch_0
    move-exception v12

    .line 714
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendSerialNumber()V
    .locals 4

    .prologue
    .line 595
    :try_start_0
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cs/util/CloudProxyUtil;->sendSerialNumber(Landroid/content/Context;)V

    .line 596
    iget-object v1, p0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setTriggeredSendSN(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_0
    return-void

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, e:Lcom/htc/cscore/restapi/exceptions/CSException;
    const-string v1, "MyHTC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/cs/service/DashboardService;->access$600()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sendSerialNumberThread CSException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/cscore/restapi/exceptions/CSException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual {v0}, Lcom/htc/cscore/restapi/exceptions/CSException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 547
    invoke-direct {p0}, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->removeUnsedFile()V

    .line 548
    invoke-direct {p0}, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->removeUnsedSharePreference()V

    .line 549
    iget-object v0, p0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.htc.cs"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v7

    .line 552
    .local v7, account:[Landroid/accounts/Account;
    array-length v0, v7

    if-lez v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->this$0:Lcom/htc/cs/service/DashboardService;

    const-string v1, "com.htc.cs"

    const/4 v2, -0x1

    const/16 v3, -0x64

    const v4, 0x7f050001

    iget-object v5, p0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->this$0:Lcom/htc/cs/service/DashboardService;

    invoke-virtual {v5}, Lcom/htc/cs/service/DashboardService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/htc/opensense/sync/SyncSettingUtil;->addSyncSetting(Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;Z)V

    .line 560
    iget-object v0, p0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setTriggeredSendSN(Landroid/content/Context;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/htc/cs/util/NetworkCheck;->isNetworkOK(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->sendSerialNumber()V

    .line 564
    :cond_0
    invoke-direct {p0}, Lcom/htc/cs/service/DashboardService$runCSInitialForFOTA;->provisioningForFOTA()V

    .line 569
    :cond_1
    return-void
.end method
