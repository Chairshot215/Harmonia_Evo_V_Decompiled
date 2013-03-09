.class Lcom/htc/ml/PhotoLockScreen/SettingActivity$MessageHandler;
.super Landroid/os/Handler;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/ml/PhotoLockScreen/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;


# direct methods
.method constructor <init>(Lcom/htc/ml/PhotoLockScreen/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$MessageHandler;->this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 218
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 236
    :goto_0
    return-void

    .line 221
    :pswitch_0
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$MessageHandler;->this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->setResult(I)V

    .line 222
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$MessageHandler;->this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;

    invoke-virtual {v0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->finish()V

    goto :goto_0

    .line 225
    :pswitch_1
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$MessageHandler;->this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;

    invoke-virtual {v0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->finish()V

    goto :goto_0

    .line 228
    :pswitch_2
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$MessageHandler;->this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;

    #getter for: Lcom/htc/ml/PhotoLockScreen/SettingActivity;->dialog:Lcom/htc/dialog/HtcAlertDialog;
    invoke-static {v0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->access$400(Lcom/htc/ml/PhotoLockScreen/SettingActivity;)Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/SettingActivity$MessageHandler;->this$0:Lcom/htc/ml/PhotoLockScreen/SettingActivity;

    #getter for: Lcom/htc/ml/PhotoLockScreen/SettingActivity;->dialog:Lcom/htc/dialog/HtcAlertDialog;
    invoke-static {v0}, Lcom/htc/ml/PhotoLockScreen/SettingActivity;->access$400(Lcom/htc/ml/PhotoLockScreen/SettingActivity;)Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    goto :goto_0

    .line 232
    :cond_0
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v1, "dialog == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
