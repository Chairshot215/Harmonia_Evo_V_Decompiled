.class public Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;
.super Landroid/os/AsyncTask;
.source "HuxSetAccountBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DoSaveHuxAccountAndCloseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field aContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;


# direct methods
.method protected constructor <init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V
    .locals 1
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 828
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->aContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 827
    check-cast p1, [Landroid/content/Context;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 13
    .parameter "params"

    .prologue
    .line 844
    const/4 v9, 0x0

    aget-object v9, p1, v9

    iput-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->aContext:Landroid/content/Context;

    .line 846
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v9, v9, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUserEndPointInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;

    .line 847
    .local v8, userEndPoint:Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;
    sget-boolean v9, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "HuxSetAccountBase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "userEndpoint:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " defaultAccount:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->defaultAccount:Ljava/lang/Boolean;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :cond_1
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v10, 0x7f0b03cf

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->provider:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 850
    sget-boolean v9, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "HuxSetAccountBase"

    const-string v10, "Not adding exchange account"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 854
    :cond_2
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v9, v9, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v2

    .line 855
    .local v2, accountPool:Lcom/htc/android/mail/AccountPool;
    const-wide/16 v0, -0x1

    .line 856
    .local v0, accountId:J
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v9, v9, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    iget-object v10, v8, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userName:Ljava/lang/String;

    const/4 v11, 0x6

    invoke-virtual {v2, v9, v10, v11}, Lcom/htc/android/mail/AccountPool;->getAccountIdByEmailAddr(Landroid/content/Context;Ljava/lang/String;I)J

    move-result-wide v0

    .line 858
    const-wide/16 v9, -0x1

    cmp-long v9, v0, v9

    if-eqz v9, :cond_4

    .line 859
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4}, Ljava/lang/Error;-><init>()V

    .line 860
    .local v4, e:Ljava/lang/Error;
    sget-boolean v9, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "HuxSetAccountBase"

    const-string v10, "account already exists"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Error;->printStackTrace()V

    goto/16 :goto_0

    .line 865
    .end local v4           #e:Ljava/lang/Error;
    :cond_4
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v10, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v10, v10, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v11, v11, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v11, v11, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiYourName:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v12, v12, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v12, v12, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiAccountName:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v8, v11, v12}, Lcom/htc/android/mail/huxservice/HUXUTIL;->insertAccount(Landroid/content/Context;Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v9, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUri:Landroid/net/Uri;

    .line 867
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v9, v9, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUri:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 869
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v9, v9, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/htc/android/mail/Mail;->setServicesEnabled(Landroid/content/Context;)V

    .line 872
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 873
    .local v7, result:Landroid/os/Bundle;
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v9}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "accountAuthenticatorResponse"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/accounts/AccountAuthenticatorResponse;

    .line 875
    .local v3, callback:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v3, :cond_5

    invoke-virtual {v3, v7}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 877
    :cond_5
    sget-object v9, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v9}, Lcom/htc/android/mail/MailEventBroadcaster;->setAccountChange()V

    .line 878
    sget-object v9, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v9, v0, v1}, Lcom/htc/android/mail/MailEventBroadcaster;->setAccountID(J)V

    .line 879
    sget-object v9, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    iget-object v10, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v10, v10, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 884
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v9, v9, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v9}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 886
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v9, v9, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    iget-object v10, v8, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userName:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/htc/android/mail/huxservice/HUXUTIL;->updateEmailAddrToPublicAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 888
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.htc.launcher.ThemeChooser.action.silder_change"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 889
    .local v6, intent:Landroid/content/Intent;
    const-string v9, "silder_state"

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 890
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->aContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 893
    .end local v0           #accountId:J
    .end local v2           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v3           #callback:Landroid/accounts/AccountAuthenticatorResponse;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #result:Landroid/os/Bundle;
    .end local v8           #userEndPoint:Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;
    :cond_6
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Void;

    invoke-virtual {p0, v9}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->publishProgress([Ljava/lang/Object;)V

    .line 895
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v9, v9, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mDefaultAccountEmailAddr:Ljava/lang/String;

    if-eqz v9, :cond_7

    .line 896
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v9, v9, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v2

    .line 897
    .restart local v2       #accountPool:Lcom/htc/android/mail/AccountPool;
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v10, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v10, v10, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v11, v11, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mDefaultAccountEmailAddr:Ljava/lang/String;

    const/4 v12, 0x6

    invoke-virtual {v2, v10, v11, v12}, Lcom/htc/android/mail/AccountPool;->getAccountIdByEmailAddr(Landroid/content/Context;Ljava/lang/String;I)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mDefaultAccountId:J

    .line 898
    iget-object v9, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->aContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-wide v10, v10, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mDefaultAccountId:J

    invoke-static {v9, v10, v11}, Lcom/htc/android/mail/MailProvider;->setDefaultAccountById(Landroid/content/Context;J)V

    .line 901
    .end local v2           #accountPool:Lcom/htc/android/mail/AccountPool;
    :cond_7
    sget-boolean v9, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v9, :cond_8

    const-string v9, "HuxSetAccountBase"

    const-string v10, "done HUX:doSaveAccount()"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :cond_8
    const/4 v9, 0x0

    return-object v9
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 827
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 832
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 833
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->removeDialog(I)V

    .line 834
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->setResultAndClose()V

    .line 835
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 827
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 839
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$DoSaveHuxAccountAndCloseTask;->aContext:Landroid/content/Context;

    const v1, 0x7f0b008c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 840
    return-void
.end method
