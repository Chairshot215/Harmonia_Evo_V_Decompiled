.class Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity$1;
.super Landroid/os/Handler;
.source "BackupWithVerizonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->access$000(Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 80
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;

    #setter for: Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->access$002(Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 81
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;

    #setter for: Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->mSetCall2Thread:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->access$102(Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 83
    const-string v2, "OOBE_BackupWithVerizon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message.what: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 102
    const-string v2, "OOBE_BackupWithVerizon"

    const-string v3, "never should happen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 88
    .local v0, errMsg:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 91
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;

    const-string v3, "com.htc.android.htcsetupwizard.activity.BackupOptionVzwActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;

    const/16 v3, 0x64

    invoke-virtual {v2, v1, v3}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 97
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;

    invoke-virtual {v3}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    #calls: Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v0, v4}, Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;->access$200(Lcom/htc/android/htcsetupwizard/activity/BackupWithVerizonActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
