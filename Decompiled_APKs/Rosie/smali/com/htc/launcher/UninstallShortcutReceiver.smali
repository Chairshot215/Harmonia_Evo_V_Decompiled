.class public Lcom/htc/launcher/UninstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UninstallShortcutReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/launcher/UninstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/htc/launcher/UninstallShortcutReceiver;->uninstallShortcut(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private uninstallShortcut(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "data"

    .prologue
    .line 42
    const-string v2, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    .line 43
    .local v13, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 44
    .local v15, name:Ljava/lang/String;
    const-string v2, "duplicate"

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 46
    .local v9, duplicate:Z
    if-eqz v13, :cond_2

    if-eqz v15, :cond_2

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 48
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "intent"

    aput-object v5, v3, v4

    const-string v4, "title=? AND workspace_id=0 "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 53
    .local v7, c:Landroid/database/Cursor;
    const-string v2, "intent"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 54
    .local v14, intentIndex:I
    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 56
    .local v12, idIndex:I
    const/4 v8, 0x0

    .line 59
    .local v8, changed:Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    :try_start_1
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 63
    .local v10, id:J
    const/4 v2, 0x0

    invoke-static {v10, v11, v2}, Lcom/htc/launcher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v16

    .line 64
    .local v16, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 65
    invoke-static/range {p1 .. p1}, Lcom/htc/launcher/Launcher;->onSceneModified(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    const/4 v8, 0x1

    .line 67
    if-nez v9, :cond_0

    .line 76
    .end local v10           #id:J
    .end local v16           #uri:Landroid/net/Uri;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 78
    const-string v2, "RosieDbDebug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uninstallShortcut(), name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-eqz v8, :cond_2

    sget-object v2, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 81
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #changed:Z
    .end local v12           #idIndex:I
    .end local v14           #intentIndex:I
    :cond_2
    return-void

    .line 76
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v8       #changed:Z
    .restart local v12       #idIndex:I
    .restart local v14       #intentIndex:I
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    .line 71
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "data"

    .prologue
    .line 31
    new-instance v0, Lcom/htc/launcher/UninstallShortcutReceiver$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/launcher/UninstallShortcutReceiver$1;-><init>(Lcom/htc/launcher/UninstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 38
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 39
    return-void
.end method
