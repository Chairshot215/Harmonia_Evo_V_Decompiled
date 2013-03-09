.class public Lcom/htc/messaging/service/SmsSenderService;
.super Landroid/app/Service;
.source "SmsSenderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/messaging/service/SmsSenderService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SmsSenderService"


# instance fields
.field private mServiceHandler:Lcom/htc/messaging/service/SmsSenderService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 113
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 54
    const-string v1, "SmsSenderService"

    const-string v2, "Creating SmsReceiverService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SmsSenderService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 61
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 63
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/messaging/service/SmsSenderService;->mServiceLooper:Landroid/os/Looper;

    .line 64
    new-instance v1, Lcom/htc/messaging/service/SmsSenderService$ServiceHandler;

    iget-object v2, p0, Lcom/htc/messaging/service/SmsSenderService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/htc/messaging/service/SmsSenderService$ServiceHandler;-><init>(Lcom/htc/messaging/service/SmsSenderService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/messaging/service/SmsSenderService;->mServiceHandler:Lcom/htc/messaging/service/SmsSenderService$ServiceHandler;

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "SmsSenderService"

    const-string v1, "Destroying SmsSenderService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/htc/messaging/service/SmsSenderService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 111
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 71
    const-string v1, "SmsSenderService"

    const-string v2, "null extras"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    const-string v1, "dest"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 78
    const-string v1, "SmsSenderService"

    const-string v2, "null dest"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_1
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 84
    const-string v1, "SmsSenderService"

    const-string v2, "null msg"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_2
    const-string v1, "SmsSenderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "priority"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v1, "SmsSenderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "callback"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/htc/messaging/service/SmsSenderService;->mServiceHandler:Lcom/htc/messaging/service/SmsSenderService$ServiceHandler;

    invoke-virtual {v1}, Lcom/htc/messaging/service/SmsSenderService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 94
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 95
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/htc/messaging/service/SmsSenderService;->mServiceHandler:Lcom/htc/messaging/service/SmsSenderService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/htc/messaging/service/SmsSenderService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    return-void

    .line 73
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    const-string v1, "SmsSenderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 80
    :cond_2
    const-string v1, "SmsSenderService"

    const-string v2, "dest"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 86
    :cond_3
    const-string v1, "SmsSenderService"

    const-string v2, "msg"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public sendSms(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 137
    const-string v4, "SmsSenderService"

    const-string v5, "sendSMS"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-nez p1, :cond_0

    .line 141
    const-string v4, "SmsSenderService"

    const-string v5, "intent is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v4, "dest"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, destAddress:Ljava/lang/String;
    const-string v4, "msg"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, msg:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Lcom/android/mms/ui/RecipientList$Recipient;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 152
    :cond_1
    const-string v4, "SmsSenderService"

    const-string v5, "Invalid destinating address!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 157
    const-string v4, "SmsSenderService"

    const-string v5, "message is empty!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :cond_3
    new-instance v3, Lcom/android/mms/transaction/SmsMessageSender;

    invoke-virtual {p0}, Lcom/htc/messaging/service/SmsSenderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 171
    .local v3, sender:Lcom/android/mms/transaction/MessageSender;
    const-wide/16 v4, 0x0

    :try_start_0
    invoke-interface {v3, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v4, "SmsSenderService"

    const-string v5, "Failed to send message: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 176
    .end local v1           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v1

    .line 177
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "SmsSenderService"

    const-string v5, "Failed to send message: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
