.class public Lcom/htc/launcher/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutInfo;,
        Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutHandler;
    }
.end annotation


# static fields
.field private static final INSTALL_SHORTCUT:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "InstallShortcutReceiver"

.field private static final localLOGV:Z

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 195
    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/htc/launcher/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private static findEmptyCell(Landroid/content/Context;[II)Z
    .locals 23
    .parameter "context"
    .parameter "xy"
    .parameter "screen"

    .prologue
    .line 133
    const/16 v19, 0x4

    .line 134
    .local v19, xCount:I
    const/16 v21, 0x4

    .line 136
    .local v21, yCount:I
    const/4 v2, 0x4

    const/4 v3, 0x4

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    .line 138
    .local v7, occupied:[[Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 139
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/htc/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "cellX"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "cellY"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "spanX"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "spanY"

    aput-object v5, v3, v4

    const-string v4, "screen=? AND workspace_id=0 "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 146
    .local v8, c:Landroid/database/Cursor;
    const-string v2, "cellX"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 147
    .local v10, cellXIndex:I
    const-string v2, "cellY"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 148
    .local v12, cellYIndex:I
    const-string v2, "spanX"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 149
    .local v15, spanXIndex:I
    const-string v2, "spanY"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 152
    .local v17, spanYIndex:I
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 154
    .local v9, cellX:I
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 155
    .local v11, cellY:I
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 156
    .local v14, spanX:I
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 158
    .local v16, spanY:I
    move/from16 v18, v9

    .local v18, x:I
    :goto_0
    add-int v2, v9, v14

    move/from16 v0, v18

    if-ge v0, v2, :cond_0

    const/4 v2, 0x4

    move/from16 v0, v18

    if-ge v0, v2, :cond_0

    .line 159
    move/from16 v20, v11

    .local v20, y:I
    :goto_1
    add-int v2, v11, v16

    move/from16 v0, v20

    if-ge v0, v2, :cond_1

    const/4 v2, 0x4

    move/from16 v0, v20

    if-ge v0, v2, :cond_1

    .line 160
    aget-object v2, v7, v18

    const/4 v3, 0x1

    aput-boolean v3, v2, v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 158
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 167
    .end local v9           #cellX:I
    .end local v11           #cellY:I
    .end local v14           #spanX:I
    .end local v16           #spanY:I
    .end local v18           #x:I
    .end local v20           #y:I
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 170
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x4

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/htc/launcher/CellInfo;->findVacantCell([IIIII[[Z)Z

    move-result v2

    :goto_2
    return v2

    .line 164
    :catch_0
    move-exception v13

    .line 165
    .local v13, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 167
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private static installShortcut(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    .line 110
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 111
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, name:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v2, :cond_2

    .line 114
    :cond_0
    const/4 v3, 0x0

    .line 129
    :cond_1
    :goto_0
    return v3

    .line 117
    :cond_2
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 118
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    :cond_3
    const-string v4, "duplicate"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 124
    .local v0, duplicate:Z
    if-nez v0, :cond_4

    invoke-static {p0, v2, v1}, Lcom/htc/launcher/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 125
    :cond_4
    const-string v4, "RosieDbDebug"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installShortcut(), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {p1}, Lcom/htc/launcher/Launcher;->installShortcut(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "data"

    .prologue
    .line 47
    const-string v7, "com.htc.home.personalize.Action.PickItem"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 49
    :try_start_0
    const-string v7, "pick_item_type"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 52
    .local v3, itemType:I
    const-string v7, "pick_item_data"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 55
    .local v2, intent:Landroid/content/Intent;
    packed-switch v3, :pswitch_data_0

    .line 87
    :pswitch_0
    const-string v7, "InstallShortcutReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: unhandled. act=com.htc.home.personalize.Action.PickItem itemType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #itemType:I
    :cond_0
    :goto_0
    return-void

    .line 57
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #itemType:I
    :pswitch_1
    const-string v7, "InstallShortcutReceiver"

    const-string v8, "onReceive: add new folder."

    invoke-static {v7, v8}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/htc/launcher/Launcher;->addNewFolder()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #itemType:I
    :catch_0
    move-exception v1

    .line 90
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "InstallShortcutReceiver"

    const-string v8, "InstallShortcutReceiver.onReceive"

    invoke-static {v7, v8, v1}, Lcom/htc/launcher/TFC;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 61
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #itemType:I
    :pswitch_2
    :try_start_1
    const-string v7, "InstallShortcutReceiver"

    const-string v8, "onReceive: add shortcut."

    invoke-static {v7, v8}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->addShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 65
    :pswitch_3
    const-string v7, "InstallShortcutReceiver"

    const-string v8, "onReceive: add application."

    invoke-static {v7, v8}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->addApplication(Landroid/content/Intent;)V

    goto :goto_0

    .line 69
    :pswitch_4
    const-string v7, "InstallShortcutReceiver"

    const-string v8, "onReceive: add app-widget (1/2)."

    invoke-static {v7, v8}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v7, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    if-nez v7, :cond_1

    const/4 v4, 0x0

    .line 71
    .local v4, launcher:Lcom/htc/launcher/Launcher;
    :goto_1
    if-eqz v4, :cond_0

    .line 72
    iget-object v7, v4, Lcom/htc/launcher/Launcher;->mAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    invoke-virtual {v7}, Lcom/htc/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 73
    .local v0, appWidgetId:I
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.home.personalize.Action.PickAppWidget"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v6, reply:Landroid/content/Intent;
    const-string v7, "appWidgetId"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 70
    .end local v0           #appWidgetId:I
    .end local v4           #launcher:Lcom/htc/launcher/Launcher;
    .end local v6           #reply:Landroid/content/Intent;
    :cond_1
    sget-object v7, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/launcher/Launcher;

    move-object v4, v7

    goto :goto_1

    .line 79
    :pswitch_5
    const-string v7, "InstallShortcutReceiver"

    const-string v8, "onReceive: add app-widget (2/2)."

    invoke-static {v7, v8}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->addAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 83
    :pswitch_6
    const-string v7, "InstallShortcutReceiver"

    const-string v8, "onReceive: add fx-widget."

    invoke-static {v7, v8}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {v2}, Lcom/htc/launcher/Launcher;->AddFxWidget(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 96
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #itemType:I
    :cond_2
    sget-object v7, Lcom/htc/launcher/InstallShortcutReceiver;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v7, :cond_3

    .line 98
    new-instance v7, Landroid/os/HandlerThread;

    const-string v8, "InstallShortcutHandler"

    const/16 v9, 0xa

    invoke-direct {v7, v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/htc/launcher/InstallShortcutReceiver;->sHandlerThread:Landroid/os/HandlerThread;

    .line 99
    sget-object v7, Lcom/htc/launcher/InstallShortcutReceiver;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 100
    new-instance v7, Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutHandler;

    sget-object v8, Lcom/htc/launcher/InstallShortcutReceiver;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutHandler;-><init>(Landroid/os/Looper;)V

    sput-object v7, Lcom/htc/launcher/InstallShortcutReceiver;->sHandler:Landroid/os/Handler;

    .line 103
    :cond_3
    sget-object v7, Lcom/htc/launcher/InstallShortcutReceiver;->sHandler:Landroid/os/Handler;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 104
    .local v5, msg:Landroid/os/Message;
    new-instance v7, Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutInfo;

    invoke-direct {v7, p1, p2}, Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutInfo;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    sget-object v7, Lcom/htc/launcher/InstallShortcutReceiver;->sHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
