.class public Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;
.super Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;
.source "HuxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HuxServiceRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxService;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/huxservice/HuxService;Landroid/content/Context;Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "target"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;Landroid/content/Context;Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    .line 106
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "message"

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x200

    const/16 v8, 0x9

    .line 110
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "HuxService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    .line 113
    .local v3, target:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 114
    :cond_1
    sget-boolean v5, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "HuxService"

    const-string v6, "target is null"

    invoke-static {v5, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_2
    :goto_0
    return-void

    .line 117
    :cond_3
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 186
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$HuxRequestHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 119
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 120
    .local v2, key:I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 122
    .local v4, val:Ljava/lang/Object;
    const/4 v5, 0x2

    if-ne v2, v5, :cond_8

    move-object v0, v4

    .line 123
    check-cast v0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    .line 126
    .local v0, info:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    #getter for: Lcom/htc/android/mail/huxservice/HuxService;->mRestoreAccountOnly:Z
    invoke-static {v5}, Lcom/htc/android/mail/huxservice/HuxService;->access$000(Lcom/htc/android/mail/huxservice/HuxService;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 127
    iget-object v5, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->users:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 128
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    invoke-virtual {v5}, Lcom/htc/android/mail/huxservice/HuxService;->finish()V

    goto :goto_0

    .line 129
    :cond_5
    iget-object v5, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->users:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 131
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    iget-object v5, v5, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    invoke-virtual {v5, v8, v10}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_6
    iget-object v5, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->users:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 139
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    iget-object v5, v5, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    invoke-virtual {v5, v12, v10}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    goto :goto_1

    .line 141
    :cond_7
    iget-object v5, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->users:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 144
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    iget-object v5, v5, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    invoke-virtual {v5, v8, v10}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V

    goto :goto_1

    .line 147
    .end local v0           #info:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;
    :cond_8
    if-ne v2, v12, :cond_9

    .line 149
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    iget-object v5, v5, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    const-class v6, Lcom/htc/android/mail/ProviderListScreen;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "CallingActivity"

    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    iget v6, v6, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    const-string v5, "verifyDeviceInfo"

    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    iget-object v6, v6, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mVerifyDeviceInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 152
    const-string v5, "huxAuthReady"

    invoke-virtual {v1, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 154
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    invoke-virtual {v5, v1}, Lcom/htc/android/mail/huxservice/HuxService;->startActivity(Landroid/content/Intent;)V

    .line 155
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    invoke-virtual {v5}, Lcom/htc/android/mail/huxservice/HuxService;->finish()V

    goto/16 :goto_1

    .line 156
    .end local v1           #intent:Landroid/content/Intent;
    :cond_9
    if-ne v2, v8, :cond_a

    .line 158
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    iget-object v5, v5, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    const-class v6, Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "CallingActivity"

    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    iget v6, v6, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const-string v5, "verifyDeviceInfo"

    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    iget-object v6, v6, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mVerifyDeviceInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 161
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 162
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    invoke-virtual {v5, v1}, Lcom/htc/android/mail/huxservice/HuxService;->startActivity(Landroid/content/Intent;)V

    .line 163
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    invoke-virtual {v5}, Lcom/htc/android/mail/huxservice/HuxService;->finish()V

    goto/16 :goto_1

    .line 165
    .end local v1           #intent:Landroid/content/Intent;
    :cond_a
    const/16 v5, 0xa

    if-eq v2, v5, :cond_b

    const/16 v5, 0x15

    if-eq v2, v5, :cond_b

    const/16 v5, 0x14

    if-ne v2, v5, :cond_4

    .line 170
    :cond_b
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    #getter for: Lcom/htc/android/mail/huxservice/HuxService;->mRestoreAccountOnly:Z
    invoke-static {v5}, Lcom/htc/android/mail/huxservice/HuxService;->access$000(Lcom/htc/android/mail/huxservice/HuxService;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 171
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    invoke-virtual {v5}, Lcom/htc/android/mail/huxservice/HuxService;->finish()V

    goto/16 :goto_0

    .line 175
    :cond_c
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    iget-object v5, v5, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    const-class v6, Lcom/htc/android/mail/ProviderListScreen;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "CallingActivity"

    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    iget v6, v6, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    const-string v5, "HuxCmdTimeOut"

    invoke-virtual {v1, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 178
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    invoke-virtual {v5, v1}, Lcom/htc/android/mail/huxservice/HuxService;->startActivity(Landroid/content/Intent;)V

    .line 180
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxService$HuxServiceRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxService;

    invoke-virtual {v5}, Lcom/htc/android/mail/huxservice/HuxService;->finish()V

    goto/16 :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
