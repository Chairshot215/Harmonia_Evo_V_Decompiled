.class Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$MyHandler;
.super Landroid/os/Handler;
.source "HtcAboutPhoneNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mStatus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 316
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 317
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    .line 318
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/16 v10, 0xc

    .line 322
    iget-object v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;

    .line 323
    .local v7, status:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;
    if-nez v7, :cond_0

    .line 368
    :goto_0
    return-void

    .line 327
    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 332
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 333
    .local v0, ar:Landroid/os/AsyncResult;
    const-string v1, "00000400"

    .line 334
    .local v1, command:Ljava/lang/String;
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v8, :cond_1

    .line 335
    const-string v8, "HtcAboutPhoneStatus"

    const-string v9, "OoO ERR_NV_CMD_FAILED-ar.result == null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_1
    #calls: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->validateStateOfNv(Ljava/lang/String;)I
    invoke-static {v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$000(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    .line 342
    const/16 v8, 0xa

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 343
    .local v6, naiLength:Ljava/lang/String;
    const/16 v8, 0x10

    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 344
    .local v4, len:I
    mul-int/lit8 v8, v4, 0x2

    add-int/lit8 v8, v8, 0xc

    invoke-virtual {v1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->doStringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 345
    .local v5, nai:Ljava/lang/String;
    const-string v8, "HtcAboutPhoneStatus"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OoO nai (1):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v4           #len:I
    .end local v6           #naiLength:Ljava/lang/String;
    :goto_2
    const-string v8, "HtcAboutPhoneStatus"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OoO Get CDMA NAI ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 354
    .local v3, key:Ljava/lang/String;
    monitor-enter v3

    .line 356
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    invoke-static {}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$200()Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    move-result-object v8

    invoke-static {}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$300()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v9

    invoke-static {v8, v9, v5}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->pluginCdmaNAI(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneNetwork;->access$102(Lcom/htc/preference/HtcPreference;)Lcom/htc/preference/HtcPreference;

    goto :goto_0

    .line 337
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #nai:Ljava/lang/String;
    :cond_1
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 347
    :cond_2
    const-string v5, ""

    .line 348
    .restart local v5       #nai:Ljava/lang/String;
    const-string v8, "HtcAboutPhoneStatus"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OoO nai (2):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 357
    .restart local v3       #key:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 358
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 360
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
    .end packed-switch
.end method
