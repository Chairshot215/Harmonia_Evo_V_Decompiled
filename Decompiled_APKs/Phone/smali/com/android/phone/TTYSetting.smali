.class public Lcom/android/phone/TTYSetting;
.super Ljava/lang/Object;
.source "TTYSetting.java"


# static fields
.field static final DISABLED:Ljava/lang/String; = "tty_off"

.field static final ENABLED:Ljava/lang/String; = "tty_full"

.field private static final TAG:Ljava/lang/String; = "TTYSetting"


# instance fields
.field mCM:Lcom/android/internal/telephony/CallManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "cm"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/phone/TTYSetting;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 28
    return-void
.end method


# virtual methods
.method public toggle(Z)V
    .locals 12
    .parameter "enable"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 33
    const/4 v5, 0x0

    .line 34
    .local v5, ttyMode:I
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 35
    if-eqz p1, :cond_2

    move v5, v7

    .line 38
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/phone/TTYSetting;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v4

    .line 39
    .local v4, phones:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    .line 40
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v3, :cond_1

    .line 41
    const/4 v9, 0x0

    invoke-interface {v3, v5, v9}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 52
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v4           #phones:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    :catch_0
    move-exception v1

    .line 53
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "TTYSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v1           #e:Ljava/lang/Exception;
    :goto_2
    return-void

    :cond_2
    move v5, v8

    .line 35
    goto :goto_0

    .line 44
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #phones:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    :cond_3
    :try_start_1
    const-string v10, "TTYSetting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setTTY to: tty_mode="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-ne v5, v7, :cond_4

    const-string v9, "tty_full"

    :goto_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 47
    .local v0, audioManager:Landroid/media/AudioManager;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tty_mode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-ne v5, v7, :cond_5

    const-string v9, "tty_full"

    :goto_4
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 49
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v6, ttyModeChanged:Landroid/content/Intent;
    const-string v9, "ttyEnabled"

    if-ne v5, v7, :cond_6

    :goto_5
    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 44
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v6           #ttyModeChanged:Landroid/content/Intent;
    :cond_4
    const-string v9, "tty_off"

    goto :goto_3

    .line 47
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_5
    const-string v9, "tty_off"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .restart local v6       #ttyModeChanged:Landroid/content/Intent;
    :cond_6
    move v7, v8

    .line 50
    goto :goto_5
.end method
