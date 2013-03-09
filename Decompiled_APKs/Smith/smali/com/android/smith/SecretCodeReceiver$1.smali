.class final Lcom/android/smith/SecretCodeReceiver$1;
.super Landroid/os/Handler;
.source "SecretCodeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/SecretCodeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 91
    :pswitch_0
    invoke-static {}, Lcom/android/smith/SecretCodeReceiver;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    const-string v1, "SM:SecretCodeReceiver"

    const-string v2, "Bugreport is running!"

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/android/smith/SecretCodeReceiver;->access$100()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {}, Lcom/android/smith/SecretCodeReceiver;->access$100()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Bugreport is running"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {v4}, Lcom/android/smith/SecretCodeReceiver;->access$002(Z)Z

    .line 104
    const-string v1, "SM:SecretCodeReceiver"

    const-string v2, "MSG_BUGREPORT_BEGIN"

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/android/smith/SecretCodeReceiver;->access$100()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 108
    invoke-static {}, Lcom/android/smith/SecretCodeReceiver;->access$100()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Bugreport begin :\nIt may take minutes, please wait ..."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 111
    :cond_2
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 112
    new-instance v1, Lcom/android/smith/SecretCodeReceiver$TaskRunner;

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/android/smith/SecretCodeReceiver$TaskRunner;-><init>(II)V

    invoke-virtual {v1}, Lcom/android/smith/SecretCodeReceiver$TaskRunner;->start()V

    goto :goto_0

    .line 116
    :pswitch_1
    invoke-static {v3}, Lcom/android/smith/SecretCodeReceiver;->access$002(Z)Z

    .line 118
    const-string v1, "SM:SecretCodeReceiver"

    const-string v2, "MSG_BUGREPORT_END"

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/android/smith/SecretCodeReceiver;->access$100()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 122
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 123
    .local v0, result:Ljava/lang/String;
    invoke-static {}, Lcom/android/smith/SecretCodeReceiver;->access$100()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bugreport end :\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0           #result:Ljava/lang/String;
    :cond_3
    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 126
    :cond_4
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    goto/16 :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 126
    :array_0
    .array-data 0x8
        0x32t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
