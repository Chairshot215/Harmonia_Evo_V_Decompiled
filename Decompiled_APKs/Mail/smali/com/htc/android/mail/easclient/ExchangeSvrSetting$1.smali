.class Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;
.super Ljava/lang/Object;
.source "ExchangeSvrSetting.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/ExchangeSvrSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9
    .parameter "className"
    .parameter "service"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 185
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ExchangeSvrSetting"

    const-string v5, "onServiceConnected"

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-virtual {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    const-string v4, "ExchangeSvrSetting"

    const-string v5, "onServiceConnected: activity is already finish."

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-static {p2}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v5

    #setter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v4, v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$102(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 200
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mInstanceStateBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$200(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 201
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mInstanceStateBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$200(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "ProgressStatus"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, progress:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-static {v2}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->valueOf(Ljava/lang/String;)Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    move-result-object v5

    #setter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;
    invoke-static {v4, v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$302(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;)Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    .line 271
    .end local v2           #progress:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->accountId:J
    invoke-static {v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService;->cancelErrorNotification(J)V

    .line 273
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->setVisible(Z)V

    .line 274
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #calls: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->reLayout()V
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$900(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    .line 275
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    const/4 v5, 0x0

    #setter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mBindingService:Z
    invoke-static {v4, v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2502(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ExchangeSvrSetting"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 205
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsWizard:Z
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 206
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    sget-object v5, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->AUTO_DISCOVER:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    #setter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;
    invoke-static {v4, v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$302(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;)Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getProgressing()I

    move-result v3

    .line 211
    .local v3, progressing:I
    if-ne v3, v8, :cond_6

    .line 212
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showDialog(I)V

    .line 213
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$500()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 214
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$600(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$500()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_4
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$700()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 217
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$800(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v4

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$700()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 266
    .end local v3           #progressing:I
    :catch_1
    move-exception v0

    .line 267
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 208
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    sget-object v5, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    #setter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;
    invoke-static {v4, v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$302(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;)Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 219
    .restart local v3       #progressing:I
    :cond_6
    const/4 v4, 0x4

    if-ne v3, v4, :cond_c

    .line 220
    :try_start_4
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showDialog(I)V

    .line 221
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    sget-object v5, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->CREATE_FULL_SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    #setter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;
    invoke-static {v4, v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$302(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;)Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    .line 222
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #calls: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->reLayout()V
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$900(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)V

    .line 223
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$500()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 224
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editEmailAddr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$600(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$500()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :cond_7
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1000()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 227
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editSvrName:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v4

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_8
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1200()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 230
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editDomain:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1300(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v4

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1200()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_9
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1400()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 233
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editUserName:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1500(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v4

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :cond_a
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$700()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 236
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->editPassword:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$800(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/EditText;

    move-result-object v4

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$700()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_b
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1600()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 239
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->chkUseSSL:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1700(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1600()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 241
    :cond_c
    if-ne v3, v7, :cond_d

    .line 242
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->showDialog(I)V

    goto/16 :goto_1

    .line 243
    :cond_d
    if-ne v3, v6, :cond_2

    .line 247
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsWizard:Z
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$400(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 248
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    sget-object v5, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;->CREATE_FULL_SETTING:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    #setter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mProgressStatus:Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;
    invoke-static {v4, v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$302(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;)Lcom/htc/android/mail/easclient/ExchangeSvrSetting$PROGRESS_STATUS;

    .line 250
    :cond_e
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    const-class v5, Lcom/htc/android/mail/easclient/SynchronizationSetting;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 252
    const-string v4, "intent.eas.from_where"

    iget-object v5, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mFromWhere:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1800(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v4, "intent.eas.mode.wizard"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    const-string v4, "CallingActivity"

    iget-object v5, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mCallingActivity:I
    invoke-static {v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$1900(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    const-string v4, "schedule"

    iget-object v5, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mSchedule:I
    invoke-static {v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2000(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    iget-object v5, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2200(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/mail/eassvc/core/TaskSyncSource;->isTaskApExist(Landroid/content/Context;)Z

    move-result v5

    #setter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsTaskApExist:Z
    invoke-static {v4, v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2102(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Z)Z

    .line 258
    const-string v4, "isTaskAPExist"

    iget-object v5, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mIsTaskApExist:Z
    invoke-static {v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2100(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 260
    invoke-static {}, Lcom/htc/android/mail/Mail;->isEnableHuxRestoreExchangeSettings()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2300(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 262
    const-string v4, "mEASAccountInfo"

    iget-object v5, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    #getter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mEASAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    invoke-static {v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$2300(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;)Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 264
    :cond_f
    iget-object v4, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    sget v5, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mRequestCode:I

    invoke-virtual {v4, v1, v5}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 287
    invoke-static {}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ExchangeSvrSetting"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/ExchangeSvrSetting$1;->this$0:Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v0, v1}, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;->access$102(Lcom/htc/android/mail/easclient/ExchangeSvrSetting;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 291
    return-void
.end method
