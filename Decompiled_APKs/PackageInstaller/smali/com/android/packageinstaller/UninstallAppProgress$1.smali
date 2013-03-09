.class Lcom/android/packageinstaller/UninstallAppProgress$1;
.super Landroid/os/Handler;
.source "UninstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/UninstallAppProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/UninstallAppProgress;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/UninstallAppProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 57
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v4, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-virtual {v4}, Lcom/android/packageinstaller/UninstallAppProgress;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v1, result:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INSTALL_RESULT"

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    iget-object v4, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_0

    const/4 v3, -0x1

    :cond_0
    invoke-virtual {v4, v3, v1}, Lcom/android/packageinstaller/UninstallAppProgress;->setResult(ILandroid/content/Intent;)V

    .line 65
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-virtual {v3}, Lcom/android/packageinstaller/UninstallAppProgress;->finish()V

    goto :goto_0

    .line 69
    .end local v1           #result:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    iget v4, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/android/packageinstaller/UninstallAppProgress;->mResultCode:I
    invoke-static {v3, v4}, Lcom/android/packageinstaller/UninstallAppProgress;->access$002(Lcom/android/packageinstaller/UninstallAppProgress;I)I

    .line 70
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 74
    .local v0, packageName:Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_1

    .line 85
    :pswitch_1
    const-string v3, "UninstallAppProgress"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uninstall failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const v2, 0x7f050029

    .line 90
    .local v2, statusText:I
    :goto_1
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    #getter for: Lcom/android/packageinstaller/UninstallAppProgress;->mStatusTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/packageinstaller/UninstallAppProgress;->access$200(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    #getter for: Lcom/android/packageinstaller/UninstallAppProgress;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/android/packageinstaller/UninstallAppProgress;->access$300(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 94
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    #getter for: Lcom/android/packageinstaller/UninstallAppProgress;->mOkPanel:Landroid/view/View;
    invoke-static {v3}, Lcom/android/packageinstaller/UninstallAppProgress;->access$400(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 76
    .end local v2           #statusText:I
    :pswitch_2
    const v2, 0x7f050028

    .line 77
    .restart local v2       #statusText:I
    goto :goto_1

    .line 79
    .end local v2           #statusText:I
    :pswitch_3
    const-string v3, "UninstallAppProgress"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uninstall failed because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is a device admin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallAppProgress$1;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    #getter for: Lcom/android/packageinstaller/UninstallAppProgress;->mDeviceManagerButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/packageinstaller/UninstallAppProgress;->access$100(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    const v2, 0x7f05002a

    .line 83
    .restart local v2       #statusText:I
    goto :goto_1

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 74
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
