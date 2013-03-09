.class Lcom/htc/clock3dwidget/socialclock/SocialWidget$2;
.super Ljava/lang/Object;
.source "SocialWidget.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/socialclock/SocialWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;


# direct methods
.method constructor <init>(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$2;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 170
    iget-object v5, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$2;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    invoke-virtual {v5}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->isWidgetDestroy()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SocialNetworkWidget handleMessage~ widget destroied msg.what:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    .line 219
    :goto_0
    return v3

    .line 174
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    :goto_1
    :sswitch_0
    move v3, v4

    .line 219
    goto :goto_0

    .line 177
    :sswitch_1
    iget-object v3, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$2;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$100(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    const v5, 0x8019

    invoke-interface {v3, v5}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 178
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 179
    .local v2, notifyCause:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SocialNetworkWidget WHAT_ON_RESUME~ notifyCause:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->d(Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$2;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #setter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mResume:Z
    invoke-static {v3, v4}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$202(Lcom/htc/clock3dwidget/socialclock/SocialWidget;Z)Z

    .line 182
    const/16 v0, 0x1f4

    .line 183
    .local v0, delay:I
    const/16 v3, 0x1e

    if-ne v2, v3, :cond_1

    .line 184
    const-string v3, "SocialNetworkWidget WHAT_ON_RESUME~ NOTIFY_CAUSE_ACTIVITY"

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 185
    const/16 v0, 0x12c

    .line 187
    :cond_1
    iget-object v3, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$2;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$000(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    const/16 v5, 0x232a

    int-to-long v6, v0

    invoke-interface {v3, v5, v6, v7}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    goto :goto_1

    .line 190
    .end local v0           #delay:I
    .end local v2           #notifyCause:I
    :sswitch_2
    const-string v3, "SocialNetworkWidget WHAT_ON_RESUME_DELAY"

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->d(Ljava/lang/String;)V

    .line 191
    iget-object v3, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$2;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #setter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mResume:Z
    invoke-static {v3, v4}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$202(Lcom/htc/clock3dwidget/socialclock/SocialWidget;Z)Z

    .line 192
    iget-object v3, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$2;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mCtrl:Lcom/htc/clock/util/social/SocialNetworkCtrl;
    invoke-static {v3}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$300(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Lcom/htc/clock/util/social/SocialNetworkCtrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->getState()Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    move-result-object v3

    sget-object v5, Lcom/htc/clock/util/social/SocialNetworkCtrl$State;->START:Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    if-eq v3, v5, :cond_2

    .line 193
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 194
    .local v1, handler:Landroid/os/Handler;
    iget-object v3, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$2;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mCtrl:Lcom/htc/clock/util/social/SocialNetworkCtrl;
    invoke-static {v3}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$300(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Lcom/htc/clock/util/social/SocialNetworkCtrl;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$2;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mResContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$400(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$2;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mOnUpdateListener:Lcom/htc/clock/util/social/SocialNetworkCtrl$OnUpdateListener;
    invoke-static {v6}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$500(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Lcom/htc/clock/util/social/SocialNetworkCtrl$OnUpdateListener;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v1, v1}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->init(Landroid/content/Context;Lcom/htc/clock/util/social/SocialNetworkCtrl$OnUpdateListener;Landroid/os/Handler;Landroid/os/Handler;)V

    goto :goto_1

    .line 197
    .end local v1           #handler:Landroid/os/Handler;
    :cond_2
    iget-object v3, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$2;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mCtrl:Lcom/htc/clock/util/social/SocialNetworkCtrl;
    invoke-static {v3}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$300(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Lcom/htc/clock/util/social/SocialNetworkCtrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->updateIsLoggedIn()Z

    .line 200
    iget-object v3, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$2;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$100(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    const/16 v5, 0x238d

    const-wide/16 v6, 0x0

    invoke-interface {v3, v5, v6, v7}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    goto/16 :goto_1

    .line 205
    :sswitch_3
    const-string v5, "SocialNetworkWidget WHAT_ON_PAUSE"

    invoke-static {v5}, Lcom/htc/clock/util/MyLog;->d(Ljava/lang/String;)V

    .line 206
    iget-object v5, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$2;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #setter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mResume:Z
    invoke-static {v5, v3}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$202(Lcom/htc/clock3dwidget/socialclock/SocialWidget;Z)Z

    goto/16 :goto_1

    .line 213
    :sswitch_4
    iget-object v3, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$2;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #calls: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->doConfigurationChanged()V
    invoke-static {v3}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$600(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)V

    goto/16 :goto_1

    .line 216
    :sswitch_5
    iget-object v3, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$2;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #calls: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->launchSocialAp()V
    invoke-static {v3}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$700(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)V

    goto/16 :goto_1

    .line 174
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x2329 -> :sswitch_0
        0x232a -> :sswitch_2
        0x9011 -> :sswitch_4
        0x9012 -> :sswitch_5
    .end sparse-switch
.end method
