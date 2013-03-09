.class Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;
.super Ljava/lang/Object;
.source "StatusSyncer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/olrespicker/StatusSyncer;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/olrespicker/StatusSyncer;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/olrespicker/StatusSyncer;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->this$0:Lcom/htc/home/personalize/olrespicker/StatusSyncer;

    iput-object p2, p0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$ctx:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 80
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 84
    .local v15, act:Ljava/lang/String;
    sget-object v2, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->ACTION_RES_STATUSCHANGED:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->this$0:Lcom/htc/home/personalize/olrespicker/StatusSyncer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$intent:Landroid/content/Intent;

    #calls: Lcom/htc/home/personalize/olrespicker/StatusSyncer;->handleLocalResourceStatusChanged(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v2, v6, v7}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$100(Lcom/htc/home/personalize/olrespicker/StatusSyncer;Landroid/content/Context;Landroid/content/Intent;)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    sget-object v2, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->ACTION_REQUEST_LOAD_WALLPAPER:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->this$0:Lcom/htc/home/personalize/olrespicker/StatusSyncer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$ctx:Landroid/content/Context;

    #calls: Lcom/htc/home/personalize/olrespicker/StatusSyncer;->reloadWallpapers(Landroid/content/Context;)V
    invoke-static {v2, v6}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$200(Lcom/htc/home/personalize/olrespicker/StatusSyncer;Landroid/content/Context;)V

    goto :goto_0

    .line 89
    :cond_2
    const-string v2, "com.htc.launcher.scene.ACTION_DOWNLOAD_SCENE_SAVED"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->this$0:Lcom/htc/home/personalize/olrespicker/StatusSyncer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$intent:Landroid/content/Intent;

    #calls: Lcom/htc/home/personalize/olrespicker/StatusSyncer;->handleSceneInstalled(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v2, v6, v7}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$300(Lcom/htc/home/personalize/olrespicker/StatusSyncer;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 92
    :cond_3
    const-string v2, "com.htc.store.action.NOTIFY_OAD"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$intent:Landroid/content/Intent;

    const-string v6, "online_item_content_type"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 95
    .local v25, viewType:Ljava/lang/String;
    const-string v2, "Scene"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Wallpaper"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    :cond_4
    invoke-static/range {v25 .. v25}, Lcom/htc/home/personalize/storedatamanager/StoreDataConsts;->toIntType(Ljava/lang/String;)I

    move-result v3

    .line 100
    .local v3, type:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$intent:Landroid/content/Intent;

    const-string v6, "online_item_id"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, guid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$intent:Landroid/content/Intent;

    const-string v6, "online_item_action"

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 103
    .local v5, action:I
    const/4 v2, 0x2

    if-ne v2, v5, :cond_8

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$intent:Landroid/content/Intent;

    const-string v6, "online_item_optional_data"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v16

    .line 106
    .local v16, bundle:Landroid/os/Bundle;
    const/16 v23, -0x1

    .line 107
    .local v23, sceneId:I
    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 108
    const-string v2, "com.htc.launcher.scene.EXTRA_SCENE_ID"

    const/4 v6, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 113
    :goto_1
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v17, intent:Landroid/content/Intent;
    const-string v2, "GUID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const/4 v2, -0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_5

    .line 116
    const-string v2, "com.htc.launcher.scene.EXTRA_SCENE_ID"

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    :cond_5
    const/4 v2, 0x2

    if-ne v2, v3, :cond_7

    .line 121
    const-string v2, "com.htc.home.personalize"

    const-string v6, "com.htc.home.personalize.WallpaperPicker"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    :goto_2
    const/high16 v2, 0x1000

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 110
    .end local v17           #intent:Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$ctx:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->queryDownloadSceneId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v23

    goto :goto_1

    .line 123
    .restart local v17       #intent:Landroid/content/Intent;
    :cond_7
    const-string v2, "com.htc.home.personalize"

    const-string v6, "com.htc.home.personalize.scene.ScenePicker"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 128
    .end local v16           #bundle:Landroid/os/Bundle;
    .end local v17           #intent:Landroid/content/Intent;
    .end local v23           #sceneId:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->this$0:Lcom/htc/home/personalize/olrespicker/StatusSyncer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$intent:Landroid/content/Intent;

    #calls: Lcom/htc/home/personalize/olrespicker/StatusSyncer;->downloadOrCancelOrRemove(ILjava/lang/String;ILandroid/content/Context;Landroid/content/Intent;)V
    invoke-static/range {v2 .. v7}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$400(Lcom/htc/home/personalize/olrespicker/StatusSyncer;ILjava/lang/String;ILandroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 130
    .end local v3           #type:I
    .end local v4           #guid:Ljava/lang/String;
    .end local v5           #action:I
    .end local v25           #viewType:Ljava/lang/String;
    :cond_9
    const-string v2, "com.htc.launcher.scene.ACTION_ASPECT_CHANGED"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$intent:Landroid/content/Intent;

    const-string v6, "EXTRA_ASPECT_ISTHUMB"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 133
    .local v18, isThumb:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$ctx:Landroid/content/Context;

    const-string v6, "PREF"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 134
    .local v19, pref:Landroid/content/SharedPreferences;
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v6, "EXTRA_ASPECT_ISTHUMB"

    move/from16 v0, v18

    invoke-interface {v2, v6, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 136
    .end local v18           #isThumb:Z
    .end local v19           #pref:Landroid/content/SharedPreferences;
    :cond_a
    const-string v2, "com.htc.home.personalize.storedatamanager.ACTION_GETDOWNLOADURL_RESPONSE"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 137
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Get ACTION_GETDOWNLOADURL_RESPONSE"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$intent:Landroid/content/Intent;

    const-string v6, "storedata_type"

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 139
    .restart local v3       #type:I
    const/4 v2, 0x1

    if-eq v3, v2, :cond_b

    const/4 v2, 0x2

    if-ne v3, v2, :cond_0

    .line 140
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$intent:Landroid/content/Intent;

    const-string v6, "store_productid"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, strProductID:Ljava/lang/String;
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$500()Ljava/util/ArrayList;

    move-result-object v26

    monitor-enter v26

    .line 143
    :try_start_0
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$500()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 144
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download has canceled guid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    monitor-exit v26

    goto/16 :goto_0

    .line 178
    :catchall_0
    move-exception v2

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 147
    :cond_c
    :try_start_1
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$500()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$ctx:Landroid/content/Context;

    invoke-static {v8, v3, v2}, Lcom/htc/home/personalize/onlineresource/OnlineResourceList;->getOnlineResourceByGuid(Ljava/lang/String;ILandroid/content/Context;)Lcom/htc/home/personalize/onlineresource/OnlineResource;

    move-result-object v20

    .line 150
    .local v20, res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    if-nez v20, :cond_d

    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$600()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 151
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v6, "get OnlineResource from mListPreparingDownloadWallpaper"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$600()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    check-cast v20, Lcom/htc/home/personalize/onlineresource/OnlineResource;

    .line 155
    .restart local v20       #res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :cond_d
    if-eqz v20, :cond_f

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$intent:Landroid/content/Intent;

    const-string v6, "result_code"

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 157
    .local v21, result:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$intent:Landroid/content/Intent;

    const-string v6, "store_url"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 158
    .local v24, strURI:Ljava/lang/String;
    if-nez v21, :cond_e

    .line 159
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download online resource uri success: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Set targetUri and start download"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->setTargetUrl(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {v20 .. v20}, Lcom/htc/home/personalize/onlineresource/OnlineResource;->download()V

    .line 168
    :goto_3
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 169
    .restart local v17       #intent:Landroid/content/Intent;
    const-string v2, "com.htc.home.personalize.action.UPDATE_PANELITEM"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v2, "extra_update_guid"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v2, "extra_update_result"

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$ctx:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    .end local v17           #intent:Landroid/content/Intent;
    .end local v21           #result:I
    .end local v24           #strURI:Ljava/lang/String;
    :goto_4
    monitor-exit v26

    goto/16 :goto_0

    .line 164
    .restart local v21       #result:I
    .restart local v24       #strURI:Ljava/lang/String;
    :cond_e
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v6, "download online resource uri fail"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->this$0:Lcom/htc/home/personalize/olrespicker/StatusSyncer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$ctx:Landroid/content/Context;

    sget-object v9, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ONLINE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    sget-object v11, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    const/4 v12, -0x1

    const/16 v13, 0xa

    const/4 v14, -0x1

    move v10, v3

    #calls: Lcom/htc/home/personalize/olrespicker/StatusSyncer;->propagate2DetailsView(Landroid/content/Context;Ljava/lang/String;Lcom/htc/home/personalize/abstractresource/Resource$Const;ILcom/htc/home/personalize/abstractresource/Resource$Const;III)V
    invoke-static/range {v6 .. v14}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$700(Lcom/htc/home/personalize/olrespicker/StatusSyncer;Landroid/content/Context;Ljava/lang/String;Lcom/htc/home/personalize/abstractresource/Resource$Const;ILcom/htc/home/personalize/abstractresource/Resource$Const;III)V

    goto :goto_3

    .line 174
    .end local v21           #result:I
    .end local v24           #strURI:Ljava/lang/String;
    :cond_f
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download: fail to get resource info. type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " guid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->this$0:Lcom/htc/home/personalize/olrespicker/StatusSyncer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$ctx:Landroid/content/Context;

    sget-object v9, Lcom/htc/home/personalize/abstractresource/Resource$Const;->ONLINE:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    sget-object v11, Lcom/htc/home/personalize/abstractresource/Resource$Const;->DOWNLOADING:Lcom/htc/home/personalize/abstractresource/Resource$Const;

    const/4 v12, -0x1

    const/16 v13, 0xa

    const/4 v14, -0x1

    move v10, v3

    #calls: Lcom/htc/home/personalize/olrespicker/StatusSyncer;->propagate2DetailsView(Landroid/content/Context;Ljava/lang/String;Lcom/htc/home/personalize/abstractresource/Resource$Const;ILcom/htc/home/personalize/abstractresource/Resource$Const;III)V
    invoke-static/range {v6 .. v14}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$700(Lcom/htc/home/personalize/olrespicker/StatusSyncer;Landroid/content/Context;Ljava/lang/String;Lcom/htc/home/personalize/abstractresource/Resource$Const;ILcom/htc/home/personalize/abstractresource/Resource$Const;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 180
    .end local v3           #type:I
    .end local v8           #strProductID:Ljava/lang/String;
    .end local v20           #res:Lcom/htc/home/personalize/onlineresource/OnlineResource;
    :cond_10
    const-string v2, "com.htc.home.personalize.storedatamanager.ACTION_GETITEMLIST_RESPONSE"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 181
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Get ACTION_GETITEMLIST_RESPONSE"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$intent:Landroid/content/Intent;

    const-string v6, "storedata_type"

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 183
    .local v22, resultType:I
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_11

    .line 184
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$800()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$802(Z)Z

    .line 190
    :cond_11
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$900()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$900()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 192
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v6, "handle waiting download items after retrieve list"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_12
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$900()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 195
    .restart local v4       #guid:Ljava/lang/String;
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$900()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->this$0:Lcom/htc/home/personalize/olrespicker/StatusSyncer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$ctx:Landroid/content/Context;

    move/from16 v0, v22

    #calls: Lcom/htc/home/personalize/olrespicker/StatusSyncer;->handleDownloadByIntent(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v2, v6, v4, v0}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$1000(Lcom/htc/home/personalize/olrespicker/StatusSyncer;Landroid/content/Context;Ljava/lang/String;I)V

    .line 197
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$900()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_12

    .line 200
    .end local v4           #guid:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/home/personalize/olrespicker/StatusSyncer$1;->val$intent:Landroid/content/Intent;

    const-string v6, "result_code"

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 202
    .restart local v21       #result:I
    if-nez v21, :cond_14

    .line 203
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v6, "OnlineResourceList.onReceive: success"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 205
    :cond_14
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v6, "OnlineResourceList.onReceive: unknown problem..."

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 208
    .end local v21           #result:I
    .end local v22           #resultType:I
    :cond_15
    invoke-static {}, Lcom/htc/home/personalize/olrespicker/StatusSyncer;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: unknown act="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
