.class Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$2;
.super Landroid/os/Handler;
.source "AccountSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 244
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, b:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 249
    .local v1, key:Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 303
    :goto_0
    return-void

    .line 251
    :pswitch_0
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handler:LOGOUT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 257
    :pswitch_1
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handler:SUCCESS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :pswitch_2
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handler:FAILED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :pswitch_3
    const-string v2, "OOBE_AccountSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handler:UPDATE_STAUS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 270
    const-string v2, "key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x34

    if-ne v2, v3, :cond_1

    .line 273
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;

    const-string v3, "username"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mGoogleAccount:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->access$102(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;

    iput-boolean v6, v2, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mCheckGoogleAccount:Z

    .line 277
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mGoogleAccount:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->access$100(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mShowDialog:I
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->access$200(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;)I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 279
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;

    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mGoogleAccount:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->access$100(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->addGoogleLoginAccount(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->access$300(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mLaunchByIcon:Z
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->access$400(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    const-string v2, "OOBE_AccountSetupActivity"

    const-string v3, "start GoogleRestore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->startGoogleRestore()V
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->access$500(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;)V

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "google_back_up_settings_dialog"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 286
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;

    #setter for: Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mShowDialog:I
    invoke-static {v2, v5}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->access$202(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;I)I

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;

    invoke-virtual {v2, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->updatePreferenceStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    :pswitch_4
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;

    #calls: Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->checkTmoClientServiceStatus()V
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->access$600(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;)V

    goto/16 :goto_0

    .line 299
    :pswitch_5
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->initOrange3rdPartyMailAccounts()V

    .line 300
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$2;->this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;

    invoke-virtual {v2}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->addPreferencesFrom3rdOrangeMailAccounts()V

    goto/16 :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
