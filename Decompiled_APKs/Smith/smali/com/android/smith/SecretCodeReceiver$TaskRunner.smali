.class Lcom/android/smith/SecretCodeReceiver$TaskRunner;
.super Ljava/lang/Thread;
.source "SecretCodeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/SecretCodeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskRunner"
.end annotation


# instance fields
.field msgDone:I

.field msgTask:I

.field r1:I

.field r2:I

.field result:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "msgTask"
    .parameter "msgDone"

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 145
    iput p1, p0, Lcom/android/smith/SecretCodeReceiver$TaskRunner;->msgTask:I

    .line 146
    iput p2, p0, Lcom/android/smith/SecretCodeReceiver$TaskRunner;->msgDone:I

    .line 147
    iput v0, p0, Lcom/android/smith/SecretCodeReceiver$TaskRunner;->r1:I

    .line 148
    iput v0, p0, Lcom/android/smith/SecretCodeReceiver$TaskRunner;->r2:I

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/smith/SecretCodeReceiver$TaskRunner;->result:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 154
    const-string v3, "SM:SecretCodeReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TaskRunner: begin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/smith/SecretCodeReceiver$TaskRunner;->msgTask:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget v3, p0, Lcom/android/smith/SecretCodeReceiver$TaskRunner;->msgTask:I

    packed-switch v3, :pswitch_data_0

    .line 205
    :cond_0
    :goto_0
    const-string v3, "SM:SecretCodeReceiver"

    const-string v4, "TaskRunner: end"

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/android/smith/SecretCodeReceiver;->access$200()Landroid/os/Handler;

    move-result-object v3

    invoke-static {}, Lcom/android/smith/SecretCodeReceiver;->access$200()Landroid/os/Handler;

    move-result-object v4

    iget v5, p0, Lcom/android/smith/SecretCodeReceiver$TaskRunner;->msgDone:I

    iget v6, p0, Lcom/android/smith/SecretCodeReceiver$TaskRunner;->r1:I

    iget v7, p0, Lcom/android/smith/SecretCodeReceiver$TaskRunner;->r2:I

    iget-object v8, p0, Lcom/android/smith/SecretCodeReceiver$TaskRunner;->result:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    return-void

    .line 159
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 160
    .local v2, mCalendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 162
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "htc_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/smith/Device;->getBoardName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, filename:Ljava/lang/String;
    invoke-static {}, Lcom/android/smith/HtcNative;->getExternalStorageState()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/smith/HtcNative;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_1
    if-eqz v0, :cond_0

    .line 198
    iput v6, p0, Lcom/android/smith/SecretCodeReceiver$TaskRunner;->r1:I

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/smith/SecretCodeReceiver$TaskRunner;->result:Ljava/lang/String;

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpstate -o "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/smith/Device;->execAndWait(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 173
    :cond_1
    invoke-static {}, Lcom/android/smith/HtcNative;->getPhoneStorageState()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/smith/HtcNative;->getPhoneStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 179
    :cond_2
    const-string v3, "Bugreport error :\nCannot find phone/external storage!"

    iput-object v3, p0, Lcom/android/smith/SecretCodeReceiver$TaskRunner;->result:Ljava/lang/String;

    .line 180
    const/4 v0, 0x0

    .line 182
    const-string v3, "SM:SecretCodeReceiver"

    iget-object v4, p0, Lcom/android/smith/SecretCodeReceiver$TaskRunner;->result:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-wide/16 v3, 0x7d0

    :try_start_0
    invoke-static {v3, v4}, Lcom/android/smith/SecretCodeReceiver$TaskRunner;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 191
    :catch_0
    move-exception v3

    goto :goto_1

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
