.class Lcom/google/android/gsf/login/LoginActivityTask$1;
.super Lcom/google/android/gsf/login/CancelableCallbackThread;
.source "LoginActivityTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/LoginActivityTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/LoginActivityTask;

.field final synthetic val$resultMessage:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/LoginActivityTask;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iput-object p3, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/CancelableCallbackThread;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected runInBackground()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 88
    const/4 v10, 0x0

    .line 89
    .local v10, res:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/LoginActivityTask;->getUserData()Ljava/util/HashMap;

    move-result-object v1

    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->PASSWORD:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 92
    .local v9, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    #getter for: Lcom/google/android/gsf/login/LoginActivityTask;->mConfirmCredentials:Z
    invoke-static {v1}, Lcom/google/android/gsf/login/LoginActivityTask;->access$000(Lcom/google/android/gsf/login/LoginActivityTask;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v1, v2, v9}, Lcom/google/android/gsf/login/LoginActivityTask;->confirmCredentials(Landroid/os/Message;Ljava/lang/String;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    #getter for: Lcom/google/android/gsf/login/LoginActivityTask;->mAddAccount:Z
    invoke-static {v1}, Lcom/google/android/gsf/login/LoginActivityTask;->access$100(Lcom/google/android/gsf/login/LoginActivityTask;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->val$resultMessage:Landroid/os/Message;

    #calls: Lcom/google/android/gsf/login/LoginActivityTask;->updateAccount(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v1, v2, v9}, Lcom/google/android/gsf/login/LoginActivityTask;->access$200(Lcom/google/android/gsf/login/LoginActivityTask;Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    #getter for: Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    invoke-static {v1}, Lcom/google/android/gsf/login/LoginActivityTask;->access$300(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccessToken:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 102
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-static {v3, v5}, Lcom/google/android/gsf/loginservice/GLSUser;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser;

    move-result-object v3

    #setter for: Lcom/google/android/gsf/login/LoginActivityTask;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;
    invoke-static {v1, v3}, Lcom/google/android/gsf/login/LoginActivityTask;->access$402(Lcom/google/android/gsf/login/LoginActivityTask;Lcom/google/android/gsf/loginservice/GLSUser;)Lcom/google/android/gsf/loginservice/GLSUser;

    .line 103
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    #getter for: Lcom/google/android/gsf/login/LoginActivityTask;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;
    invoke-static {v1}, Lcom/google/android/gsf/login/LoginActivityTask;->access$700(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    #getter for: Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    invoke-static {v3}, Lcom/google/android/gsf/login/LoginActivityTask;->access$500(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    #getter for: Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    invoke-static {v4}, Lcom/google/android/gsf/login/LoginActivityTask;->access$600(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccessToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-virtual {v5}, Lcom/google/android/gsf/login/LoginActivityTask;->isSetupWizard()Z

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gsf/loginservice/GLSUser;->addWithRequestToken(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v10

    .line 137
    :goto_1
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v1, v1, Lcom/google/android/gsf/login/LoginActivityTask;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gsf/login/LoginActivityTask$1$1;

    invoke-direct {v3, p0}, Lcom/google/android/gsf/login/LoginActivityTask$1$1;-><init>(Lcom/google/android/gsf/login/LoginActivityTask$1;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iput-boolean v2, v1, Lcom/google/android/gsf/login/LoginActivityTask;->mCancelable:Z

    .line 143
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iput-boolean v2, v1, Lcom/google/android/gsf/login/LoginActivityTask;->mAllowBackHardKey:Z

    .line 146
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->mCallbackMessage:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 151
    const-string v1, "authtoken"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 152
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->toMessage(Landroid/os/Message;)V

    .line 155
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/LoginActivityTask;->getMarket()Lcom/google/android/gsf/login/MarketHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    #getter for: Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    invoke-static {v2}, Lcom/google/android/gsf/login/LoginActivityTask;->access$1100(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/login/MarketHelper;->allowCreditCard(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 157
    .local v11, t0:Ljava/lang/Long;
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    #getter for: Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    invoke-static {v1}, Lcom/google/android/gsf/login/LoginActivityTask;->access$1200(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/LoginActivityTask;->getMarket()Lcom/google/android/gsf/login/MarketHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    #getter for: Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    invoke-static {v3}, Lcom/google/android/gsf/login/LoginActivityTask;->access$1300(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/login/MarketHelper;->noValidCreditCardForAccount(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mNeedsCreditCard:Z

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 160
    .local v12, t1:Ljava/lang/Long;
    const-string v1, "GLSUser"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    const-string v1, "GLSUser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Market check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long/2addr v3, v13

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    #getter for: Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    invoke-static {v3}, Lcom/google/android/gsf/login/LoginActivityTask;->access$1400(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mNeedsCreditCard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v11           #t0:Ljava/lang/Long;
    .end local v12           #t1:Ljava/lang/Long;
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gsf/login/LoginActivityTask;->ensureDelay(J)V

    goto/16 :goto_0

    .line 106
    :cond_4
    if-eqz v9, :cond_6

    .line 108
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/LoginActivityTask;->getUserData()Ljava/util/HashMap;

    move-result-object v1

    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_TOKEN:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 109
    .local v7, captchaToken:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/LoginActivityTask;->getUserData()Ljava/util/HashMap;

    move-result-object v1

    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_ANSWER:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 112
    .local v6, captchaAnswer:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    #getter for: Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    invoke-static {v3}, Lcom/google/android/gsf/login/LoginActivityTask;->access$800(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gsf/loginservice/GLSUser;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser;

    move-result-object v0

    .line 114
    .local v0, user:Lcom/google/android/gsf/loginservice/GLSUser;
    invoke-virtual {v0, v9}, Lcom/google/android/gsf/loginservice/GLSUser;->setPassword(Ljava/lang/String;)V

    .line 115
    if-eqz v6, :cond_5

    .line 117
    invoke-virtual {v0, v7, v6}, Lcom/google/android/gsf/loginservice/GLSUser;->setCaptcha(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_5
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    #getter for: Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    invoke-static {v1}, Lcom/google/android/gsf/login/LoginActivityTask;->access$900(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    #getter for: Lcom/google/android/gsf/login/LoginActivityTask;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    invoke-static {v3}, Lcom/google/android/gsf/login/LoginActivityTask;->access$1000(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v3

    iget-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSetupWizard:Z

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/loginservice/GLSUser;->addAccount(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;ZZZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 123
    goto/16 :goto_1

    .line 125
    .end local v0           #user:Lcom/google/android/gsf/loginservice/GLSUser;
    .end local v6           #captchaAnswer:Ljava/lang/String;
    .end local v7           #captchaToken:Ljava/lang/String;
    :cond_6
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->toMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 165
    :cond_7
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-static {v1, v10}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v8

    .line 166
    .local v8, err:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v8, v1}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->toMessage(Landroid/os/Message;)V

    .line 168
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_2
.end method
