.class Lcom/htc/launcher/Launcher$1;
.super Ljava/lang/Thread;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->initShortcutTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 918
    iput-object p1, p0, Lcom/htc/launcher/Launcher$1;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v4, 0x0

    .line 921
    iget-object v1, p0, Lcom/htc/launcher/Launcher$1;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v1}, Lcom/htc/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 922
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/home/RosieItemUtility;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "displayMode"

    aput-object v5, v2, v3

    const-string v3, "iconType = 1 and displayMode is not NULL "

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 929
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 931
    :try_start_0
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 932
    .local v12, idIndex:I
    const-string v1, "displayMode"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 933
    .local v9, diplayModeIndex:I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 934
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 935
    .local v6, _id:J
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 936
    .local v13, priority:I
    new-instance v14, Lcom/htc/launcher/Launcher$ShortcutTip;

    invoke-direct {v14, v6, v7, v13}, Lcom/htc/launcher/Launcher$ShortcutTip;-><init>(JI)V

    .line 937
    .local v14, tip:Lcom/htc/launcher/Launcher$ShortcutTip;
    sget-object v1, Lcom/htc/launcher/Launcher;->shortcutTipPriority:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 939
    .end local v6           #_id:J
    .end local v9           #diplayModeIndex:I
    .end local v12           #idIndex:I
    .end local v13           #priority:I
    .end local v14           #tip:Lcom/htc/launcher/Launcher$ShortcutTip;
    :catch_0
    move-exception v10

    .line 940
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 941
    const-string v1, "Rosie"

    const-string v2, "shortcutTip DB loading interrupted:"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 943
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 946
    .end local v10           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    sget-boolean v1, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v1, :cond_2

    .line 947
    sget-object v1, Lcom/htc/launcher/Launcher;->shortcutTipPriority:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/launcher/Launcher$ShortcutTip;

    .line 948
    .restart local v14       #tip:Lcom/htc/launcher/Launcher$ShortcutTip;
    const-string v1, "Rosie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init shortcut tip from db, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/htc/launcher/Launcher$ShortcutTip;->mId:J
    invoke-static {v14}, Lcom/htc/launcher/Launcher$ShortcutTip;->access$1400(Lcom/htc/launcher/Launcher$ShortcutTip;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " priority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/htc/launcher/Launcher$ShortcutTip;->mPriority:I
    invoke-static {v14}, Lcom/htc/launcher/Launcher$ShortcutTip;->access$1500(Lcom/htc/launcher/Launcher$ShortcutTip;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 943
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v14           #tip:Lcom/htc/launcher/Launcher$ShortcutTip;
    .restart local v9       #diplayModeIndex:I
    .restart local v12       #idIndex:I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v9           #diplayModeIndex:I
    .end local v12           #idIndex:I
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 951
    :cond_2
    return-void
.end method
