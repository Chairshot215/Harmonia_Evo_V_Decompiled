.class final Lcom/htc/android/epst/ListItemsActivity$AgentHandler;
.super Landroid/os/Handler;
.source "ListItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/ListItemsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AgentHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/ListItemsActivity;


# direct methods
.method public constructor <init>(Lcom/htc/android/epst/ListItemsActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    .line 171
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 172
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 175
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 257
    const-string v0, "ListItemsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no  EVENT :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_0
    return-void

    .line 178
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->DBG:Z
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$000(Lcom/htc/android/epst/ListItemsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ListItemsActivity"

    const-string v1, "handle message: EVENT_GET_DATA"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$100(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #calls: Lcom/htc/android/epst/ListItemsActivity;->getData()V
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$200(Lcom/htc/android/epst/ListItemsActivity;)V

    .line 183
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mSettingGroup:Lcom/htc/android/epst/SettingGroup;
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$100(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/SettingGroup;->getSettingItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #setter for: Lcom/htc/android/epst/ListItemsActivity;->bRenewItems:Z
    invoke-static {v0, v2}, Lcom/htc/android/epst/ListItemsActivity;->access$302(Lcom/htc/android/epst/ListItemsActivity;Z)Z

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    new-instance v1, Lcom/htc/android/epst/ListItemsActivity$AgentHandler$1;

    invoke-direct {v1, p0}, Lcom/htc/android/epst/ListItemsActivity$AgentHandler$1;-><init>(Lcom/htc/android/epst/ListItemsActivity$AgentHandler;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/ListItemsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 227
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->DBG:Z
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$000(Lcom/htc/android/epst/ListItemsActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ListItemsActivity"

    const-string v1, "handle message: EVENT_DESTORY_WIMAXCONTRILLER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_2
    invoke-static {}, Lcom/htc/android/epst/wimax/WiMaxController;->getSingleton()Lcom/htc/android/epst/wimax/WiMaxController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/wimax/WiMaxController;->onDestroy()V

    goto :goto_0

    .line 232
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->DBG:Z
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$000(Lcom/htc/android/epst/ListItemsActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ListItemsActivity"

    const-string v1, "handle message: EVENT_COMMIT_CHANGE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$700(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingValueUpdater;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-interface {v0, v1}, Lcom/htc/android/epst/SettingValueUpdater;->commitChange(Lcom/htc/android/epst/CommitChangeObserver;)V

    goto :goto_0

    .line 236
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->DBG:Z
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$000(Lcom/htc/android/epst/ListItemsActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ListItemsActivity"

    const-string v1, "execute RTN command in new thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_4
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/android/epst/Port;->executeRefurbish(Z)V

    goto/16 :goto_0

    .line 240
    :pswitch_4
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->DBG:Z
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$000(Lcom/htc/android/epst/ListItemsActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ListItemsActivity"

    const-string v1, "execute REFURBISH command in new thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_5
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/Port;->executeClearReburbishDate()V

    .line 242
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/Port;->executeClearReburbishStatus()V

    .line 243
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/Port;->PortRebootDevice()V

    goto/16 :goto_0

    .line 246
    :pswitch_5
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->DBG:Z
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$000(Lcom/htc/android/epst/ListItemsActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ListItemsActivity"

    const-string v1, "execute SCRTN command in new thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_6
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/Port;->executeSCRTN()V

    goto/16 :goto_0

    .line 250
    :pswitch_6
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$AgentHandler;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->DBG:Z
    invoke-static {v0}, Lcom/htc/android/epst/ListItemsActivity;->access$000(Lcom/htc/android/epst/ListItemsActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "ListItemsActivity"

    const-string v1, "execute USERDATA command in new thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_7
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/Port;->executeRestore()V

    goto/16 :goto_0

    .line 254
    :pswitch_7
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/Port;->executeRefurbish(Z)V

    goto/16 :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
