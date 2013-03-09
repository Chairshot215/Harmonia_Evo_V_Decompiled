.class Lcom/htc/store/activity/BaseActivity$BaseUiHandler;
.super Landroid/os/Handler;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/BaseActivity;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/htc/store/activity/BaseActivity$BaseUiHandler;->this$0:Lcom/htc/store/activity/BaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/BaseActivity;Lcom/htc/store/activity/BaseActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lcom/htc/store/activity/BaseActivity$BaseUiHandler;-><init>(Lcom/htc/store/activity/BaseActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 481
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 495
    :goto_0
    return-void

    .line 484
    :pswitch_0
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity$BaseUiHandler;->this$0:Lcom/htc/store/activity/BaseActivity;

    iget-boolean v0, v0, Lcom/htc/store/activity/BaseActivity;->mOnPause:Z

    if-nez v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity$BaseUiHandler;->this$0:Lcom/htc/store/activity/BaseActivity;

    iget-object v0, v0, Lcom/htc/store/activity/BaseActivity;->mContactsManager:Lcom/htc/store/module/ContactsManager;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity$BaseUiHandler;->this$0:Lcom/htc/store/activity/BaseActivity;

    iget-object v0, v0, Lcom/htc/store/activity/BaseActivity;->mContactsManager:Lcom/htc/store/module/ContactsManager;

    invoke-virtual {v0}, Lcom/htc/store/module/ContactsManager;->setCacheDirty()V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity$BaseUiHandler;->this$0:Lcom/htc/store/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/htc/store/activity/BaseActivity;->onContactsChanged()V

    goto :goto_0

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/BaseActivity$BaseUiHandler;->this$0:Lcom/htc/store/activity/BaseActivity;

    iput-boolean v1, v0, Lcom/htc/store/activity/BaseActivity;->mContactsDirty:Z

    .line 491
    invoke-static {v1}, Lcom/htc/store/activity/BaseActivity;->access$102(Z)Z

    goto :goto_0

    .line 481
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
