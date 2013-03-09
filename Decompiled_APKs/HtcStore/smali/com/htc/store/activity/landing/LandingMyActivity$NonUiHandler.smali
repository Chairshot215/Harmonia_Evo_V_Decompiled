.class Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;
.super Landroid/os/Handler;
.source "LandingMyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingMyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingMyActivity;


# direct methods
.method public constructor <init>(Lcom/htc/store/activity/landing/LandingMyActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    .line 331
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 332
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 335
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 337
    :pswitch_0
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Receive MESSAGE_CHECK_GET_HISTORY_CALL"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$400(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$500(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mDirtyFlag:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$300(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    const/4 v1, 0x2

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->doAction(I)V
    invoke-static {v0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$600(Lcom/htc/store/activity/landing/LandingMyActivity;I)V

    .line 341
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$NonUiHandler;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #setter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mDirtyFlag:Z
    invoke-static {v0, v3}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$302(Lcom/htc/store/activity/landing/LandingMyActivity;Z)Z

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
