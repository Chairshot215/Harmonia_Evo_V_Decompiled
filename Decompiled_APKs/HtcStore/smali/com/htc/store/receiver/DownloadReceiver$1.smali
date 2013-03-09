.class Lcom/htc/store/receiver/DownloadReceiver$1;
.super Ljava/lang/Object;
.source "DownloadReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/store/receiver/DownloadReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/receiver/DownloadReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/store/receiver/DownloadReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/store/receiver/DownloadReceiver$1;->this$0:Lcom/htc/store/receiver/DownloadReceiver;

    iput-object p2, p0, Lcom/htc/store/receiver/DownloadReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/htc/store/receiver/DownloadReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 44
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v9

    .line 45
    .local v9, contentUri:Ljava/lang/String;
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "notificationextras"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "status"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "uri"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 59
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 62
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, compositedId:Ljava/lang/String;
    const/4 v15, 0x0

    .line 64
    .local v15, onlineId:Ljava/lang/String;
    const/16 v17, 0x0

    .line 65
    .local v17, parentOnlineId:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 67
    .local v13, isForUpdate:Ljava/lang/Boolean;
    invoke-static {v8}, Lcom/htc/store/util/DownloadUtils;->parseCompositedId(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v16

    .line 69
    .local v16, params:[Ljava/lang/Object;
    if-eqz v16, :cond_0

    .line 70
    const/4 v1, 0x0

    aget-object v15, v16, v1

    .end local v15           #onlineId:Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 71
    .restart local v15       #onlineId:Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v17, v16, v1

    .end local v17           #parentOnlineId:Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 72
    .restart local v17       #parentOnlineId:Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v13, v16, v1

    .end local v13           #isForUpdate:Ljava/lang/Boolean;
    check-cast v13, Ljava/lang/Boolean;

    .line 75
    .restart local v13       #isForUpdate:Ljava/lang/Boolean;
    :cond_0
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v2, v3

    const/4 v3, 0x1

    const-string v4, " is "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v15, v2, v3

    const/4 v3, 0x3

    const-string v4, ", parentOnlineId is "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object v17, v2, v3

    const/4 v3, 0x5

    const-string v4, ", isForUpdate is "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object v13, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 78
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onlineId is "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v15, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    new-instance v7, Lcom/htc/store/provider/AccessHelper;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {v7, v1}, Lcom/htc/store/provider/AccessHelper;-><init>(Landroid/content/Context;)V

    .line 80
    .local v7, accessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-virtual {v7, v15}, Lcom/htc/store/provider/AccessHelper;->getItem(Ljava/lang/String;)Lcom/htc/store/module/vo/ItemItem;

    move-result-object v14

    .line 81
    .local v14, item:Lcom/htc/store/module/vo/ItemItem;
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 82
    .local v11, downloadStatus:I
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "download status: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    const/16 v1, 0xc8

    if-ne v11, v1, :cond_7

    .line 84
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 85
    .local v12, filePath:Ljava/lang/String;
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "file is downloaded to "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$1;->this$0:Lcom/htc/store/receiver/DownloadReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/receiver/DownloadReceiver$1;->val$context:Landroid/content/Context;

    #calls: Lcom/htc/store/receiver/DownloadReceiver;->makeFileReady(Landroid/content/Context;Ljava/lang/String;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;)Z
    invoke-static {v1, v2, v9, v14, v12}, Lcom/htc/store/receiver/DownloadReceiver;->access$100(Lcom/htc/store/receiver/DownloadReceiver;Landroid/content/Context;Ljava/lang/String;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 88
    invoke-virtual {v14}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    invoke-virtual {v14}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    invoke-virtual {v14}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 92
    :cond_1
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "start installing"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v14, v9, v12, v2}, Lcom/htc/store/util/InstallationUtils;->installApk(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 127
    .end local v7           #accessHelper:Lcom/htc/store/provider/AccessHelper;
    .end local v8           #compositedId:Ljava/lang/String;
    .end local v11           #downloadStatus:I
    .end local v12           #filePath:Ljava/lang/String;
    .end local v13           #isForUpdate:Ljava/lang/Boolean;
    .end local v14           #item:Lcom/htc/store/module/vo/ItemItem;
    .end local v15           #onlineId:Ljava/lang/String;
    .end local v16           #params:[Ljava/lang/Object;
    .end local v17           #parentOnlineId:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v10, :cond_3

    .line 128
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_3
    return-void

    .line 100
    .restart local v7       #accessHelper:Lcom/htc/store/provider/AccessHelper;
    .restart local v8       #compositedId:Ljava/lang/String;
    .restart local v11       #downloadStatus:I
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v13       #isForUpdate:Ljava/lang/Boolean;
    .restart local v14       #item:Lcom/htc/store/module/vo/ItemItem;
    .restart local v15       #onlineId:Ljava/lang/String;
    .restart local v16       #params:[Ljava/lang/Object;
    .restart local v17       #parentOnlineId:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/htc/store/util/DownloadUtils;->isSoundsetCompositedId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "this is a subitem of soundset "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v17, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$200()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$200()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$200()Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 107
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$1;->this$0:Lcom/htc/store/receiver/DownloadReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/receiver/DownloadReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, v17

    #calls: Lcom/htc/store/receiver/DownloadReceiver;->notifyDownloadComplete(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/htc/store/receiver/DownloadReceiver;->access$300(Lcom/htc/store/receiver/DownloadReceiver;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$1;->this$0:Lcom/htc/store/receiver/DownloadReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/receiver/DownloadReceiver$1;->val$context:Landroid/content/Context;

    #calls: Lcom/htc/store/receiver/DownloadReceiver;->notifyDownloadComplete(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v2, v15}, Lcom/htc/store/receiver/DownloadReceiver;->access$300(Lcom/htc/store/receiver/DownloadReceiver;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_6
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "item doesn\'t exist or copy file error"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$1;->this$0:Lcom/htc/store/receiver/DownloadReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/receiver/DownloadReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, v17

    #calls: Lcom/htc/store/receiver/DownloadReceiver;->handleDownloadFailed(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;)V
    invoke-static {v1, v2, v14, v0}, Lcom/htc/store/receiver/DownloadReceiver;->access$400(Lcom/htc/store/receiver/DownloadReceiver;Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    .end local v12           #filePath:Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "download failed"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$1;->this$0:Lcom/htc/store/receiver/DownloadReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/store/receiver/DownloadReceiver$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, v17

    #calls: Lcom/htc/store/receiver/DownloadReceiver;->handleDownloadFailed(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;)V
    invoke-static {v1, v2, v14, v0}, Lcom/htc/store/receiver/DownloadReceiver;->access$400(Lcom/htc/store/receiver/DownloadReceiver;Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    .end local v7           #accessHelper:Lcom/htc/store/provider/AccessHelper;
    .end local v11           #downloadStatus:I
    .end local v14           #item:Lcom/htc/store/module/vo/ItemItem;
    :cond_8
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onlineId or parentOnlineId is wrong"

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
