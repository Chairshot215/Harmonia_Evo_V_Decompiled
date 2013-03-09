.class public abstract Lcom/google/android/gsf/login/BackgroundTask;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "BackgroundTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/BackgroundTask$2;
    }
.end annotation


# instance fields
.field mCancelButton:Landroid/widget/Button;

.field mCancelable:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mStartTime:J

.field protected mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

.field private mVerboseMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCancelable:Z

    .line 78
    new-instance v0, Lcom/google/android/gsf/login/BackgroundTask$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/BackgroundTask$1;-><init>(Lcom/google/android/gsf/login/BackgroundTask;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/BackgroundTask;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onReply(Landroid/os/Message;)V

    return-void
.end method

.method private onReply(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->cancelTaskThread()V

    .line 203
    invoke-static {p1}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromMessage(Landroid/os/Message;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v1

    .line 204
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 206
    iget-boolean v2, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "GLSActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReply() - status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    sget-object v2, Lcom/google/android/gsf/login/BackgroundTask$2;->$SwitchMap$com$google$android$gsf$loginservice$GLSUser$Status:[I

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 221
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gsf/login/BackgroundTask;->onError(Lcom/google/android/gsf/loginservice/GLSUser$Status;Landroid/content/Intent;)V

    .line 223
    :goto_0
    return-void

    .line 210
    :pswitch_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gsf/login/BackgroundTask;->setResult(ILandroid/content/Intent;)V

    .line 211
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->finish()V

    goto :goto_0

    .line 215
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 216
    const-class v1, Lcom/google/android/gsf/login/CaptchaActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 217
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/BackgroundTask;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected cancelTaskThread()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/CancelableCallbackThread;->cancel()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 162
    :cond_0
    return-void
.end method

.method protected ensureDelay(J)V
    .locals 7
    .parameter "minTime"

    .prologue
    .line 119
    iget-wide v5, p0, Lcom/google/android/gsf/login/BackgroundTask;->mStartTime:J

    add-long v1, v5, p1

    .line 120
    .local v1, endTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 123
    .local v3, t1:J
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-lez v5, :cond_0

    cmp-long v5, v3, v1

    if-gez v5, :cond_0

    .line 125
    sub-long v5, v1, v3

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 134
    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_0

    .line 135
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/BackgroundTask;->setResult(I)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->finish()V

    .line 155
    :goto_0
    return-void

    .line 137
    :cond_0
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_5

    .line 138
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 139
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Captcha answered, retry withthread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    const v0, 0x320ca

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "with action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    goto :goto_0

    .line 145
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->onCancel()V

    goto :goto_0

    .line 149
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v0, :cond_4

    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Captcha failed with resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->onCancel()V

    goto :goto_0

    .line 153
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BackgroundTask;->setResult(I)V

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->finish()V

    .line 179
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 187
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCancelable:Z

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->onCancel()V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCancelButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mStartTime:J

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->getActivityContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BackgroundTask;->setContentView(I)V

    .line 95
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BackgroundTask;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCancelButton:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v0, 0x7f0c0050

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BackgroundTask;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mVerboseMessage:Landroid/widget/TextView;

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    .line 100
    :cond_0
    return-void
.end method

.method protected onError(Lcom/google/android/gsf/loginservice/GLSUser$Status;Landroid/content/Intent;)V
    .locals 1
    .parameter "status"
    .parameter "res"

    .prologue
    .line 226
    if-nez p2, :cond_0

    .line 227
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->createErrorIntent(Lcom/google/android/gsf/loginservice/GLSUser$Status;)Landroid/content/Intent;

    move-result-object p2

    .line 229
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gsf/login/BackgroundTask;->setResult(ILandroid/content/Intent;)V

    .line 230
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->finish()V

    .line 231
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 104
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onPause()V

    .line 105
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause(), class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onStop()V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->cancelTaskThread()V

    .line 113
    return-void
.end method

.method protected setMessage(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mVerboseMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    return-void
.end method
