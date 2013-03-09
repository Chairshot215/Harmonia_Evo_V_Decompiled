.class Lcom/htc/android/mail/MailListTab$UpdateGroupCountRunnable;
.super Ljava/lang/Object;
.source "MailListTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailListTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateGroupCountRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailListTab;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/MailListTab;)V
    .locals 0
    .parameter

    .prologue
    .line 1470
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab$UpdateGroupCountRunnable;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/MailListTab;Lcom/htc/android/mail/MailListTab$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1470
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailListTab$UpdateGroupCountRunnable;-><init>(Lcom/htc/android/mail/MailListTab;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 1472
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$UpdateGroupCountRunnable;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mBaseUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$200(Lcom/htc/android/mail/MailListTab;)Landroid/net/Uri;

    move-result-object v0

    const-string v4, "groupNumCount"

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1473
    .local v1, uri:Landroid/net/Uri;
    new-array v2, v14, [Ljava/lang/String;

    const-string v0, "_account"

    aput-object v0, v2, v12

    const-string v0, "_group"

    aput-object v0, v2, v13

    .line 1474
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$UpdateGroupCountRunnable;->this$0:Lcom/htc/android/mail/MailListTab;

    #getter for: Lcom/htc/android/mail/MailListTab;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/android/mail/MailListTab;->access$1900(Lcom/htc/android/mail/MailListTab;)Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1475
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 1476
    new-instance v10, Lcom/htc/android/mail/util/SparseArray;

    invoke-direct {v10}, Lcom/htc/android/mail/util/SparseArray;-><init>()V

    .line 1479
    .local v10, groupNumCount:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1480
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1481
    .local v6, accountId:J
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1482
    .local v9, group:Ljava/lang/String;
    invoke-virtual {v10, v6, v7}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .line 1483
    .local v11, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v11, :cond_0

    .line 1484
    new-instance v11, Ljava/util/HashMap;

    .end local v11           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1485
    .restart local v11       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v10, v6, v7, v11}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    .line 1488
    :cond_0
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1490
    .end local v6           #accountId:J
    .end local v9           #group:Ljava/lang/String;
    .end local v11           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1491
    iget-object v0, p0, Lcom/htc/android/mail/MailListTab$UpdateGroupCountRunnable;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v0, v10}, Lcom/htc/android/mail/MailListTab;->setGroupNumCount(Lcom/htc/android/mail/util/SparseArray;)V

    .line 1493
    .end local v10           #groupNumCount:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_2
    return-void
.end method
