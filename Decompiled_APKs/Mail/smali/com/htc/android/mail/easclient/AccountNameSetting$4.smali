.class Lcom/htc/android/mail/easclient/AccountNameSetting$4;
.super Ljava/lang/Object;
.source "AccountNameSetting.java"

# interfaces
.implements Lcom/htc/android/mail/easclient/EASProgressDialog$DialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/AccountNameSetting;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/AccountNameSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$4;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 4

    .prologue
    .line 435
    iget-object v1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$4;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    iget-object v1, v1, Lcom/htc/android/mail/easclient/AccountNameSetting;->mCreateAccThread:Lcom/htc/android/mail/easclient/AccountNameSetting$CreateAccountThread;

    if-nez v1, :cond_0

    .line 436
    invoke-static {}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$500()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 438
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 439
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 440
    iget-object v1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$4;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    #getter for: Lcom/htc/android/mail/easclient/AccountNameSetting;->mAccountHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$600(Lcom/htc/android/mail/easclient/AccountNameSetting;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 446
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$4;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    const-wide/16 v2, -0x1

    #calls: Lcom/htc/android/mail/easclient/AccountNameSetting;->setResultValue(J)V
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/easclient/AccountNameSetting;->access$700(Lcom/htc/android/mail/easclient/AccountNameSetting;J)V

    .line 443
    iget-object v1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$4;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    invoke-virtual {v1}, Lcom/htc/android/mail/easclient/AccountNameSetting;->finish()V

    goto :goto_0
.end method
