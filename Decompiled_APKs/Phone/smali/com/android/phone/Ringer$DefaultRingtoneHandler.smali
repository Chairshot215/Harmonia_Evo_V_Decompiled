.class Lcom/android/phone/Ringer$DefaultRingtoneHandler;
.super Landroid/os/Handler;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultRingtoneHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method private constructor <init>(Lcom/android/phone/Ringer;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/phone/Ringer$DefaultRingtoneHandler;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/phone/Ringer$DefaultRingtoneHandler;-><init>(Lcom/android/phone/Ringer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 123
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 126
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/Ringer$DefaultRingtoneHandler;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/phone/Ringer$DefaultRingtoneHandler;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/android/phone/Ringer$DefaultRingtoneHandler;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, p0, Lcom/android/phone/Ringer$DefaultRingtoneHandler;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/Ringer;->mDefaultRingtone:Landroid/media/Ringtone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Ringer"

    const-string v2, "exception while opening"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
