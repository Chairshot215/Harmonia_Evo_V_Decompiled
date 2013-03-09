.class Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;
.super Landroid/os/Handler;
.source "CdmaVoicePrivacyCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_VP:I = 0x0

.field private static final MESSAGE_SET_VP:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;)V

    return-void
.end method

.method private handleGetVPResponse(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 71
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 73
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->setEnabled(Z)V

    .line 108
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v4

    .line 81
    .local v1, enable:I
    iget-object v2, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    #getter for: Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->CdmaVPA:Lcom/android/phone/CdmaVoicePrivacyAsyn;
    invoke-static {v2}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->access$100(Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;)Lcom/android/phone/CdmaVoicePrivacyAsyn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/CdmaVoicePrivacyAsyn;->isEnableToSetupVoicePrivacy()Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 83
    iget-object v5, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    if-eqz v1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->setChecked(Z)V

    .line 105
    :goto_2
    iget-object v2, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    invoke-virtual {v2}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enhanced_voice_privacy_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    move v2, v4

    .line 83
    goto :goto_1

    .line 87
    :cond_2
    iget-object v2, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    #getter for: Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->triggerOnClicking:Z
    invoke-static {v2}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->access$200(Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;)Z

    move-result v2

    if-ne v2, v3, :cond_4

    .line 89
    iget-object v2, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    #getter for: Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->CdmaVPA:Lcom/android/phone/CdmaVoicePrivacyAsyn;
    invoke-static {v2}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->access$100(Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;)Lcom/android/phone/CdmaVoicePrivacyAsyn;

    sget-boolean v2, Lcom/android/phone/CdmaVoicePrivacyAsyn;->isUserEnableVoicePrivacy:Z

    if-nez v2, :cond_3

    .line 91
    const/4 v1, 0x0

    goto :goto_2

    .line 95
    :cond_3
    const/4 v1, 0x1

    goto :goto_2

    .line 100
    :cond_4
    iget-object v2, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    if-eqz v1, :cond_5

    :goto_3
    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->setChecked(Z)V

    .line 101
    iget-object v2, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    #setter for: Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->triggerOnClicking:Z
    invoke-static {v2, v4}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->access$202(Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;Z)Z

    goto :goto_2

    :cond_5
    move v3, v4

    .line 100
    goto :goto_3
.end method

.method private handleSetVPResponse(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 111
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 113
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    iget-object v1, v1, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 119
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 62
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->handleGetVPResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 65
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->handleSetVPResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
