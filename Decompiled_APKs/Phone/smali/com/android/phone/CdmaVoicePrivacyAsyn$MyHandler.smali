.class Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;
.super Landroid/os/Handler;
.source "CdmaVoicePrivacyAsyn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaVoicePrivacyAsyn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_VP:I = 0x0

.field private static final MESSAGE_SET_VP:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaVoicePrivacyAsyn;


# direct methods
.method private constructor <init>(Lcom/android/phone/CdmaVoicePrivacyAsyn;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyAsyn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CdmaVoicePrivacyAsyn;Lcom/android/phone/CdmaVoicePrivacyAsyn$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;-><init>(Lcom/android/phone/CdmaVoicePrivacyAsyn;)V

    return-void
.end method

.method private handleGetVPResponse(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 111
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 113
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 115
    const-string v2, "CdmaVoicePrivacyAsyn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetVPResponse: ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 120
    .local v1, enable:I
    const-string v2, "CdmaVoicePrivacyAsyn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetVPResponse: VP state successfully queried.== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v2, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyAsyn;

    #getter for: Lcom/android/phone/CdmaVoicePrivacyAsyn;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/CdmaVoicePrivacyAsyn;->access$100(Lcom/android/phone/CdmaVoicePrivacyAsyn;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyAsyn;

    #getter for: Lcom/android/phone/CdmaVoicePrivacyAsyn;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/CdmaVoicePrivacyAsyn;->access$100(Lcom/android/phone/CdmaVoicePrivacyAsyn;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enhanced_voice_privacy_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    const-string v2, "CdmaVoicePrivacyAsyn"

    const-string v3, "OoO Fail to puInt ENHANCED_VOICE_PRIVACY_ENABLED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSetVPResponse(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 134
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 136
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 137
    const-string v1, "CdmaVoicePrivacyAsyn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetVPResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    const-string v1, "CdmaVoicePrivacyAsyn"

    const-string v2, "handleSetVPResponse: re get"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyAsyn;

    iget-object v1, v1, Lcom/android/phone/CdmaVoicePrivacyAsyn;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 142
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 102
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;->handleGetVPResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaVoicePrivacyAsyn$MyHandler;->handleSetVPResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
