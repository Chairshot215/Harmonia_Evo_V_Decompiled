.class public Lcom/htc/launcher/GeneralPurposeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GeneralPurposeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/GeneralPurposeReceiver$ClearUserDataObserver;
    }
.end annotation


# static fields
.field private static final HOME_PERSONALIZE_CLEAR:Ljava/lang/String; = "package:com.htc.home.personalize"

.field public static final PREF_BUILD_NO:Ljava/lang/String; = "build_no"

.field public static final PREF_SCAN_DONE:Ljava/lang/String; = "scan_htc_widget_done"

.field private static final TAG:Ljava/lang/String; = "GeneralPurposeReceiver"

.field private static final localLOGD:Z

.field public static final syncScanDone:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/launcher/GeneralPurposeReceiver;->syncScanDone:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/htc/launcher/GeneralPurposeReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/htc/launcher/GeneralPurposeReceiver;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private changeScene(Lcom/htc/launcher/Launcher;II)V
    .locals 0
    .parameter "launcher"
    .parameter "fromId"
    .parameter "toId"

    .prologue
    .line 136
    return-void
.end method

.method private clearUserData(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 139
    const-string v2, "WidgetPackageManager"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 140
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 141
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "Initialized"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    const-string v2, "scan_htc_widget_done"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    const-string v2, "build_no"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 150
    return-void
.end method

.method private handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    const-string v17, "com.htc.rosie.ACTION_SCAN_HTC_WIDGET_DONE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 45
    sget-object v18, Lcom/htc/launcher/GeneralPurposeReceiver;->syncScanDone:Ljava/lang/Object;

    monitor-enter v18

    .line 46
    :try_start_0
    const-string v17, "WidgetPackageManager"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 48
    .local v12, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 49
    .local v7, editor:Landroid/content/SharedPreferences$Editor;
    const-string v17, "scan_htc_widget_done"

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50
    const-string v17, "build_no"

    const-string v19, "ro.build.description"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    sget-object v17, Lcom/htc/launcher/GeneralPurposeReceiver;->syncScanDone:Ljava/lang/Object;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 53
    monitor-exit v18

    .line 123
    .end local v7           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v12           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 53
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 54
    :cond_1
    const-string v17, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, clearPackage:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v17, "package:com.htc.home.personalize"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 58
    invoke-direct/range {p0 .. p1}, Lcom/htc/launcher/GeneralPurposeReceiver;->clearUserData(Landroid/content/Context;)V

    goto :goto_0

    .line 60
    .end local v5           #clearPackage:Ljava/lang/String;
    :cond_2
    const-string v17, "com.htc.home.personalize.Action.PickItem"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 61
    const-string v17, "pick_item_type"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 62
    .local v8, itemType:I
    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 64
    :pswitch_0
    const-string v17, "GeneralPurposeReceiver"

    const-string v18, "onReceive: add app-widget (1/2)."

    invoke-static/range {v17 .. v18}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v17, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    if-nez v17, :cond_3

    const/4 v9, 0x0

    .line 66
    .local v9, launcher:Lcom/htc/launcher/Launcher;
    :goto_1
    if-eqz v9, :cond_0

    .line 67
    iget-object v0, v9, Lcom/htc/launcher/Launcher;->mAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/launcher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v3

    .line 68
    .local v3, appWidgetId:I
    new-instance v13, Landroid/content/Intent;

    const-string v17, "com.htc.home.personalize.Action.PickAppWidget"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v13, reply:Landroid/content/Intent;
    const-string v17, "appWidgetId"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 65
    .end local v3           #appWidgetId:I
    .end local v9           #launcher:Lcom/htc/launcher/Launcher;
    .end local v13           #reply:Landroid/content/Intent;
    :cond_3
    sget-object v17, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/launcher/Launcher;

    move-object/from16 v9, v17

    goto :goto_1

    .line 74
    .end local v8           #itemType:I
    :cond_4
    const-string v17, "com.htc.home.personalize.SceneProvider.ACTION_SCENE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 80
    sget-object v17, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    if-nez v17, :cond_5

    const/4 v9, 0x0

    .line 81
    .restart local v9       #launcher:Lcom/htc/launcher/Launcher;
    :goto_2
    const-string v17, "scene_changed_type"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 82
    .local v15, type:I
    const-string v17, "scene_changed_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    .line 83
    .local v4, changedList:[I
    if-eqz v4, :cond_0

    array-length v0, v4

    move/from16 v17, v0

    if-lez v17, :cond_0

    .line 84
    packed-switch v15, :pswitch_data_1

    .line 119
    const-string v17, "GeneralPurposeReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onReceive: unsupported type="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " intent="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 80
    .end local v4           #changedList:[I
    .end local v9           #launcher:Lcom/htc/launcher/Launcher;
    .end local v15           #type:I
    :cond_5
    sget-object v17, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/launcher/Launcher;

    move-object/from16 v9, v17

    goto :goto_2

    .line 86
    .restart local v4       #changedList:[I
    .restart local v9       #launcher:Lcom/htc/launcher/Launcher;
    .restart local v15       #type:I
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v4}, Lcom/htc/launcher/GeneralPurposeReceiver;->removeScene(Landroid/content/Context;Lcom/htc/launcher/Launcher;[I)V

    goto/16 :goto_0

    .line 91
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentScene(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/Scene;

    move-result-object v14

    .line 92
    .local v14, scene:Lcom/htc/htcSceneManager/scene/Scene;
    if-eqz v14, :cond_7

    .line 93
    invoke-virtual {v14}, Lcom/htc/htcSceneManager/scene/Scene;->getId()I

    move-result v10

    .line 97
    .local v10, newSceneId:I
    :goto_3
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_0

    .line 100
    invoke-virtual {v14}, Lcom/htc/htcSceneManager/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v11

    .line 102
    .local v11, newSceneName:Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 103
    invoke-static {v9}, Lcom/htc/launcher/PagesManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/PagesManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Lcom/htc/launcher/PagesManager;->newScene(ILjava/lang/String;)V

    .line 104
    invoke-static {v9}, Lcom/htc/launcher/PagesManager;->instance(Landroid/content/Context;)Lcom/htc/launcher/PagesManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/htc/launcher/PagesManager;->onSceneChange(I)V

    .line 108
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 109
    .local v6, cr:Landroid/content/ContentResolver;
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 111
    .local v16, values:Landroid/content/ContentValues;
    const-string v17, "_id"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    const-string v17, "scene_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v17, "pages_count"

    const/16 v18, 0x7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string v17, "home_index"

    const/16 v18, 0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    sget-object v17, Lcom/htc/launcher/LauncherSettings$ScenePagesInfo;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 95
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v10           #newSceneId:I
    .end local v11           #newSceneName:Ljava/lang/String;
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_7
    const/4 v10, -0x1

    .restart local v10       #newSceneId:I
    goto :goto_3

    .line 62
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch

    .line 84
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private removeScene(Landroid/content/Context;Lcom/htc/launcher/Launcher;[I)V
    .locals 5
    .parameter "context"
    .parameter "launcher"
    .parameter "sceneIds"

    .prologue
    .line 126
    move-object v0, p3

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 127
    .local v2, id:I
    if-eqz p2, :cond_0

    .line 128
    invoke-static {}, Lcom/htc/launcher/PagesManager;->instance()Lcom/htc/launcher/PagesManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/launcher/PagesManager;->removeScene(I)V

    .line 130
    :cond_0
    invoke-static {p1, v2}, Lcom/htc/launcher/LauncherModel;->deleteScene(Landroid/content/Context;I)V

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v2           #id:I
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 33
    new-instance v0, Lcom/htc/launcher/GeneralPurposeReceiver$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/launcher/GeneralPurposeReceiver$1;-><init>(Lcom/htc/launcher/GeneralPurposeReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 39
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 40
    return-void
.end method
