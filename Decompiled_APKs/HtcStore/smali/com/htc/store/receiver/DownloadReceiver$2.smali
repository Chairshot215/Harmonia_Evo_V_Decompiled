.class Lcom/htc/store/receiver/DownloadReceiver$2;
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
    .line 133
    iput-object p1, p0, Lcom/htc/store/receiver/DownloadReceiver$2;->this$0:Lcom/htc/store/receiver/DownloadReceiver;

    iput-object p2, p0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$intent:Landroid/content/Intent;

    const-string v3, "soundset_online_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, soundsetOnlineId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$intent:Landroid/content/Intent;

    const-string v3, "soundset_online_title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, soundsetLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$intent:Landroid/content/Intent;

    const-string v3, "soundset_is_download_for_updateonline_title"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 141
    .local v8, isForUpdate:Z
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 142
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "receive Soundset Online Id "

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v6, ", label is "

    aput-object v6, v3, v4

    const/4 v4, 0x3

    aput-object v2, v3, v4

    const/4 v4, 0x4

    const-string v6, ", and is for update "

    aput-object v6, v3, v4

    const/4 v4, 0x5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$200()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$200()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 149
    .local v15, keyIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v19, removingItemkeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 152
    .local v14, key:Ljava/lang/String;
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$200()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    .end local v14           #key:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 157
    .local v18, removingItemkey:Ljava/lang/String;
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$200()Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 161
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v15           #keyIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v18           #removingItemkey:Ljava/lang/String;
    .end local v19           #removingItemkeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$intent:Landroid/content/Intent;

    const-string v3, "soundset_ringtone"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Lcom/htc/store/module/vo/ItemItem;

    .line 162
    .local v20, ringtoneItem:Lcom/htc/store/module/vo/ItemItem;
    if-eqz v20, :cond_3

    .line 163
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$200()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual/range {v20 .. v20}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v8}, Lcom/htc/store/util/DownloadUtils;->getCompositedId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$intent:Landroid/content/Intent;

    const-string v3, "soundset_alarm"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/htc/store/module/vo/ItemItem;

    .line 166
    .local v9, alarmItem:Lcom/htc/store/module/vo/ItemItem;
    if-eqz v9, :cond_4

    .line 167
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$200()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v9}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v8}, Lcom/htc/store/util/DownloadUtils;->getCompositedId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$intent:Landroid/content/Intent;

    const-string v3, "soundset_notification"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Lcom/htc/store/module/vo/ItemItem;

    .line 170
    .local v17, notificationItem:Lcom/htc/store/module/vo/ItemItem;
    if-eqz v17, :cond_5

    .line 171
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$200()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v8}, Lcom/htc/store/util/DownloadUtils;->getCompositedId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$intent:Landroid/content/Intent;

    const-string v3, "soundset_message"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Lcom/htc/store/module/vo/ItemItem;

    .line 174
    .local v16, messageItem:Lcom/htc/store/module/vo/ItemItem;
    if-eqz v16, :cond_6

    .line 175
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$200()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v8}, Lcom/htc/store/util/DownloadUtils;->getCompositedId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$intent:Landroid/content/Intent;

    const-string v3, "soundset_email"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/htc/store/module/vo/ItemItem;

    .line 178
    .local v11, emailItem:Lcom/htc/store/module/vo/ItemItem;
    if-eqz v11, :cond_7

    .line 179
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$200()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v11}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v8}, Lcom/htc/store/util/DownloadUtils;->getCompositedId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$intent:Landroid/content/Intent;

    const-string v3, "soundset_calendar"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/htc/store/module/vo/ItemItem;

    .line 182
    .local v10, calendarItem:Lcom/htc/store/module/vo/ItemItem;
    if-eqz v10, :cond_8

    .line 183
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$200()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v8}, Lcom/htc/store/util/DownloadUtils;->getCompositedId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$intent:Landroid/content/Intent;

    const-string v3, "soundset_task"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Lcom/htc/store/module/vo/ItemItem;

    .line 186
    .local v21, taskItem:Lcom/htc/store/module/vo/ItemItem;
    if-eqz v21, :cond_9

    .line 187
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$200()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual/range {v21 .. v21}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5, v8}, Lcom/htc/store/util/DownloadUtils;->getCompositedId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_9
    const/4 v13, 0x0

    .line 192
    .local v13, isNeedToDownload:Z
    if-eqz v20, :cond_a

    .line 193
    if-eqz v13, :cond_12

    .line 194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v6

    invoke-virtual/range {v20 .. v20}, Lcom/htc/store/module/vo/ItemItem;->getOnlineContentURL()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v8}, Lcom/htc/store/util/DownloadUtils;->downloadItemInvisible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    .line 198
    :goto_2
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "download Ringtone"

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    const/4 v13, 0x1

    .line 201
    :cond_a
    if-eqz v9, :cond_b

    .line 202
    if-eqz v13, :cond_13

    .line 203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v6

    invoke-virtual {v9}, Lcom/htc/store/module/vo/ItemItem;->getOnlineContentURL()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v8}, Lcom/htc/store/util/DownloadUtils;->downloadItemInvisible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    .line 207
    :goto_3
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "download Alarm"

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    const/4 v13, 0x1

    .line 210
    :cond_b
    if-eqz v17, :cond_c

    .line 211
    if-eqz v13, :cond_14

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Lcom/htc/store/module/vo/ItemItem;->getOnlineContentURL()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v8}, Lcom/htc/store/util/DownloadUtils;->downloadItemInvisible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    .line 216
    :goto_4
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "download Notification"

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    const/4 v13, 0x1

    .line 219
    :cond_c
    if-eqz v16, :cond_d

    .line 220
    if-eqz v13, :cond_15

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Lcom/htc/store/module/vo/ItemItem;->getOnlineContentURL()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v8}, Lcom/htc/store/util/DownloadUtils;->downloadItemInvisible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    .line 225
    :goto_5
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "download Message"

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    const/4 v13, 0x1

    .line 228
    :cond_d
    if-eqz v11, :cond_e

    .line 229
    if-eqz v13, :cond_16

    .line 230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual {v11}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v6

    invoke-virtual {v11}, Lcom/htc/store/module/vo/ItemItem;->getOnlineContentURL()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v8}, Lcom/htc/store/util/DownloadUtils;->downloadItemInvisible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    .line 234
    :goto_6
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "download Email"

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    const/4 v13, 0x1

    .line 237
    :cond_e
    if-eqz v10, :cond_f

    .line 238
    if-eqz v13, :cond_17

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v6

    invoke-virtual {v10}, Lcom/htc/store/module/vo/ItemItem;->getOnlineContentURL()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v8}, Lcom/htc/store/util/DownloadUtils;->downloadItemInvisible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    .line 243
    :goto_7
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "download Calendar"

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    const/4 v13, 0x1

    .line 246
    :cond_f
    if-eqz v21, :cond_10

    .line 247
    if-eqz v13, :cond_18

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v6

    invoke-virtual/range {v21 .. v21}, Lcom/htc/store/module/vo/ItemItem;->getOnlineContentURL()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v8}, Lcom/htc/store/util/DownloadUtils;->downloadItemInvisible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    .line 252
    :goto_8
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "download Task"

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    const/4 v13, 0x1

    .line 256
    :cond_10
    if-nez v13, :cond_11

    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->this$0:Lcom/htc/store/receiver/DownloadReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$context:Landroid/content/Context;

    #calls: Lcom/htc/store/receiver/DownloadReceiver;->notifyDownloadComplete(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v3, v5}, Lcom/htc/store/receiver/DownloadReceiver;->access$300(Lcom/htc/store/receiver/DownloadReceiver;Landroid/content/Context;Ljava/lang/String;)V

    .line 263
    .end local v9           #alarmItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v10           #calendarItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v11           #emailItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v13           #isNeedToDownload:Z
    .end local v16           #messageItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v17           #notificationItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v20           #ringtoneItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v21           #taskItem:Lcom/htc/store/module/vo/ItemItem;
    :cond_11
    :goto_9
    return-void

    .line 196
    .restart local v9       #alarmItem:Lcom/htc/store/module/vo/ItemItem;
    .restart local v10       #calendarItem:Lcom/htc/store/module/vo/ItemItem;
    .restart local v11       #emailItem:Lcom/htc/store/module/vo/ItemItem;
    .restart local v13       #isNeedToDownload:Z
    .restart local v16       #messageItem:Lcom/htc/store/module/vo/ItemItem;
    .restart local v17       #notificationItem:Lcom/htc/store/module/vo/ItemItem;
    .restart local v20       #ringtoneItem:Lcom/htc/store/module/vo/ItemItem;
    .restart local v21       #taskItem:Lcom/htc/store/module/vo/ItemItem;
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v6

    invoke-virtual/range {v20 .. v20}, Lcom/htc/store/module/vo/ItemItem;->getOnlineContentURL()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v8}, Lcom/htc/store/util/DownloadUtils;->downloadItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    goto/16 :goto_2

    .line 205
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v6

    invoke-virtual {v9}, Lcom/htc/store/module/vo/ItemItem;->getOnlineContentURL()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v8}, Lcom/htc/store/util/DownloadUtils;->downloadItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    goto/16 :goto_3

    .line 214
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Lcom/htc/store/module/vo/ItemItem;->getOnlineContentURL()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v8}, Lcom/htc/store/util/DownloadUtils;->downloadItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    goto/16 :goto_4

    .line 223
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Lcom/htc/store/module/vo/ItemItem;->getOnlineContentURL()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v8}, Lcom/htc/store/util/DownloadUtils;->downloadItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    goto/16 :goto_5

    .line 232
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual {v11}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v6

    invoke-virtual {v11}, Lcom/htc/store/module/vo/ItemItem;->getOnlineContentURL()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v8}, Lcom/htc/store/util/DownloadUtils;->downloadItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    goto/16 :goto_6

    .line 241
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v6

    invoke-virtual {v10}, Lcom/htc/store/module/vo/ItemItem;->getOnlineContentURL()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v8}, Lcom/htc/store/util/DownloadUtils;->downloadItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    goto/16 :goto_7

    .line 250
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/store/receiver/DownloadReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Lcom/htc/store/module/vo/ItemItem;->getOnlineId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lcom/htc/store/module/vo/ItemItem;->getOnlineVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lcom/htc/store/module/vo/ItemItem;->getContentType()I

    move-result v6

    invoke-virtual/range {v21 .. v21}, Lcom/htc/store/module/vo/ItemItem;->getOnlineContentURL()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v8}, Lcom/htc/store/util/DownloadUtils;->downloadItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Z

    goto/16 :goto_8

    .line 261
    .end local v9           #alarmItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v10           #calendarItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v11           #emailItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v13           #isNeedToDownload:Z
    .end local v16           #messageItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v17           #notificationItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v20           #ringtoneItem:Lcom/htc/store/module/vo/ItemItem;
    .end local v21           #taskItem:Lcom/htc/store/module/vo/ItemItem;
    :cond_19
    invoke-static {}, Lcom/htc/store/receiver/DownloadReceiver;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "invalid Soundset Online Id or Label"

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9
.end method
