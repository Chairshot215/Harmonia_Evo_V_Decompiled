.class Lcom/android/server/AppWidgetService$2;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppWidgetService;


# direct methods
.method constructor <init>(Lcom/android/server/AppWidgetService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v15, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15}, Lcom/android/server/AppWidgetService;->sendInitialBroadcasts()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v15, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v15, v15, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v15, v15, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    invoke-virtual {v13, v15}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    iput-object v13, v15, Lcom/android/server/AppWidgetService;->mLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v0, v15, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    #calls: Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V
    invoke-static {v15}, Lcom/android/server/AppWidgetService;->access$000(Lcom/android/server/AppWidgetService;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v15, v15, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    :goto_1
    if-ltz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v15, v15, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v7, v15, :cond_3

    const-string v15, "AppWidgetService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid index i:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", size:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v15, v15, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AppWidgetService$Provider;

    iget-object v15, v10, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v15, v15, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15, v12}, Lcom/android/server/AppWidgetService;->updateProvidersForPackageLocked(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const-string v15, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    const-string v15, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v3, 0x1

    :goto_3
    if-eqz v11, :cond_0

    array-length v15, v11

    if-eqz v15, :cond_0

    if-nez v3, :cond_6

    if-eqz v5, :cond_c

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v0, v15, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    #calls: Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V
    invoke-static {v15}, Lcom/android/server/AppWidgetService;->access$000(Lcom/android/server/AppWidgetService;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-nez v5, :cond_7

    if-eqz v6, :cond_a

    const-string v15, "android.intent.extra.REPLACING"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_a

    :cond_7
    move-object v4, v11

    array-length v9, v4

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v9, :cond_b

    aget-object v12, v4, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15, v12}, Lcom/android/server/AppWidgetService;->updateProvidersForPackageLocked(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    const-string v15, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    const-string v15, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v3, 0x0

    goto :goto_3

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    const/4 v15, 0x1

    new-array v11, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v12, v11, v15

    const-string v15, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v15, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_3

    :cond_a
    move-object v4, v11

    :try_start_3
    array-length v9, v4

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v9, :cond_b

    aget-object v12, v4, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15, v12}, Lcom/android/server/AppWidgetService;->addProvidersForPackageLocked(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    monitor-exit v16

    goto/16 :goto_0

    :catchall_1
    move-exception v15

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v15

    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_d

    const-string v15, "android.intent.extra.REPLACING"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    iget-object v0, v15, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    #calls: Lcom/android/server/AppWidgetService;->ensureStateLoadedLocked()V
    invoke-static {v15}, Lcom/android/server/AppWidgetService;->access$000(Lcom/android/server/AppWidgetService;)V

    move-object v4, v11

    array-length v9, v4

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v9, :cond_e

    aget-object v12, v4, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15, v12}, Lcom/android/server/AppWidgetService;->removeProvidersForPackageLocked(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    invoke-virtual {v15}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_e
    monitor-exit v16

    goto/16 :goto_0

    :catchall_2
    move-exception v15

    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v15
.end method
