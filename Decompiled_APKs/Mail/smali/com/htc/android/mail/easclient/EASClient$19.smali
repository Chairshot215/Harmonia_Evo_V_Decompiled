.class Lcom/htc/android/mail/easclient/EASClient$19;
.super Landroid/os/Handler;
.source "EASClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/EASClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASClient;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASClient$19;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x3

    .line 1116
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$19;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-virtual {v1}, Lcom/htc/android/mail/easclient/EASClient;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1117
    const-string v1, "EASClient"

    const-string v2, "handleMessage: activity is already finish."

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    :goto_0
    :pswitch_0
    return-void

    .line 1120
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 1126
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$19;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #calls: Lcom/htc/android/mail/easclient/EASClient;->updateAllUI()V
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASClient;->access$2400(Lcom/htc/android/mail/easclient/EASClient;)V

    .line 1127
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$19;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/easclient/EASClient;->dismissDialog(I)V

    .line 1128
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$19;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #calls: Lcom/htc/android/mail/easclient/EASClient;->startSync()V
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASClient;->access$1500(Lcom/htc/android/mail/easclient/EASClient;)V

    goto :goto_0

    .line 1122
    :pswitch_3
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$19;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #calls: Lcom/htc/android/mail/easclient/EASClient;->initUI()V
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASClient;->access$2300(Lcom/htc/android/mail/easclient/EASClient;)V

    .line 1123
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$19;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient$19;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #calls: Lcom/htc/android/mail/easclient/EASClient;->getScheduleType()I
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASClient;->access$600(Lcom/htc/android/mail/easclient/EASClient;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/android/mail/easclient/EASClient;->updateScheduleUI(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/easclient/EASClient;->access$700(Lcom/htc/android/mail/easclient/EASClient;Ljava/lang/String;)V

    goto :goto_0

    .line 1131
    :pswitch_4
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$19;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/easclient/EASClient;->showDialog(I)V

    goto :goto_0

    .line 1135
    :pswitch_5
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$19;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/easclient/EASClient;->dismissDialog(I)V

    .line 1137
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$19;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #calls: Lcom/htc/android/mail/easclient/EASClient;->startSync()V
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASClient;->access$1500(Lcom/htc/android/mail/easclient/EASClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1145
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_6
    invoke-static {}, Lcom/htc/android/mail/easclient/EASClient;->access$800()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "EASClient"

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient$19;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message end delete account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1146
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 1147
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$19;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-virtual {v1, v6}, Lcom/htc/android/mail/easclient/EASClient;->dismissDialog(I)V

    .line 1158
    :goto_1
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$19;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/android/mail/easclient/EASClient;->inDeleteAccount:Z

    goto :goto_0

    .line 1151
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$19;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/easclient/EASClient;->dismissDialog(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1155
    :goto_2
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$19;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/easclient/EASClient;->setResult(I)V

    .line 1156
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$19;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-virtual {v1}, Lcom/htc/android/mail/easclient/EASClient;->finish()V

    goto :goto_1

    .line 1152
    :catch_1
    move-exception v0

    .line 1153
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 1162
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :pswitch_7
    :try_start_2
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$19;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/easclient/EASClient;->removeDialog(I)V

    .line 1163
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$19;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-virtual {v1}, Lcom/htc/android/mail/easclient/EASClient;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1164
    :catch_2
    move-exception v0

    .line 1165
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
