.class Lcom/htc/clock3dwidget/socialclock/SocialWidget$3;
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
    .line 222
    iput-object p1, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$3;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$3;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    invoke-virtual {v2}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->isWidgetDestroy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SocialNetworkWidget handleMessage~ widget destroied msg.what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    .line 241
    :goto_0
    return v1

    .line 228
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 241
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 230
    :pswitch_0
    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$3;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mCtrl:Lcom/htc/clock/util/social/SocialNetworkCtrl;
    invoke-static {v2}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$300(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Lcom/htc/clock/util/social/SocialNetworkCtrl;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$3;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mCtrl:Lcom/htc/clock/util/social/SocialNetworkCtrl;
    invoke-static {v2}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$300(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Lcom/htc/clock/util/social/SocialNetworkCtrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->getState()Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    move-result-object v2

    sget-object v3, Lcom/htc/clock/util/social/SocialNetworkCtrl$State;->START:Lcom/htc/clock/util/social/SocialNetworkCtrl$State;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$3;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mResume:Z
    invoke-static {v2}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$200(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$3;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mCtrl:Lcom/htc/clock/util/social/SocialNetworkCtrl;
    invoke-static {v2}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$300(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Lcom/htc/clock/util/social/SocialNetworkCtrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->getLastSocialData()Lcom/htc/clock/util/social/SocialData;

    move-result-object v0

    .line 234
    .local v0, data:Lcom/htc/clock/util/social/SocialData;
    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$3;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #setter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mSocialData:Lcom/htc/clock/util/social/SocialData;
    invoke-static {v2, v0}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$802(Lcom/htc/clock3dwidget/socialclock/SocialWidget;Lcom/htc/clock/util/social/SocialData;)Lcom/htc/clock/util/social/SocialData;

    .line 235
    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$3;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    iget-object v3, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$3;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mCtrl:Lcom/htc/clock/util/social/SocialNetworkCtrl;
    invoke-static {v3}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$300(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Lcom/htc/clock/util/social/SocialNetworkCtrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/clock/util/social/SocialNetworkCtrl;->isLoggedIn()Z

    move-result v3

    #setter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mIsLoggedIn:Z
    invoke-static {v2, v3}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$902(Lcom/htc/clock3dwidget/socialclock/SocialWidget;Z)Z

    .line 236
    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$3;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mSocialView:Lcom/htc/clock3dwidget/socialclock/SocialView;
    invoke-static {v2}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$1000(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Lcom/htc/clock3dwidget/socialclock/SocialView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$3;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #getter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mIsLoggedIn:Z
    invoke-static {v3}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$900(Lcom/htc/clock3dwidget/socialclock/SocialWidget;)Z

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/htc/clock3dwidget/socialclock/SocialView;->updateUI(ZLcom/htc/clock/util/social/SocialData;)V

    .line 237
    iget-object v2, p0, Lcom/htc/clock3dwidget/socialclock/SocialWidget$3;->this$0:Lcom/htc/clock3dwidget/socialclock/SocialWidget;

    #setter for: Lcom/htc/clock3dwidget/socialclock/SocialWidget;->mNeedToUpdate:Z
    invoke-static {v2, v1}, Lcom/htc/clock3dwidget/socialclock/SocialWidget;->access$1102(Lcom/htc/clock3dwidget/socialclock/SocialWidget;Z)Z

    goto :goto_1

    .line 228
    :pswitch_data_0
    .packed-switch 0x238d
        :pswitch_0
    .end packed-switch
.end method
