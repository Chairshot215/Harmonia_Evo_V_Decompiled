.class Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VoiceRecorderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/util/VoiceRecorderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/util/VoiceRecorderHelper;


# direct methods
.method private constructor <init>(Lcom/android/phone/util/VoiceRecorderHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;->this$0:Lcom/android/phone/util/VoiceRecorderHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/util/VoiceRecorderHelper;Lcom/android/phone/util/VoiceRecorderHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;-><init>(Lcom/android/phone/util/VoiceRecorderHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 713
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.soundrecorder.recordingstopped"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    iget-object v1, p0, Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;->this$0:Lcom/android/phone/util/VoiceRecorderHelper;

    #getter for: Lcom/android/phone/util/VoiceRecorderHelper;->mIsRecording:Z
    invoke-static {v1}, Lcom/android/phone/util/VoiceRecorderHelper;->access$100(Lcom/android/phone/util/VoiceRecorderHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 717
    iget-object v1, p0, Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;->this$0:Lcom/android/phone/util/VoiceRecorderHelper;

    iget-object v2, p0, Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;->this$0:Lcom/android/phone/util/VoiceRecorderHelper;

    #getter for: Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/util/VoiceRecorderHelper;->access$200(Lcom/android/phone/util/VoiceRecorderHelper;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    #calls: Lcom/android/phone/util/VoiceRecorderHelper;->changeStatus(ZLcom/android/internal/telephony/Call;)V
    invoke-static {v1, v3, v2}, Lcom/android/phone/util/VoiceRecorderHelper;->access$300(Lcom/android/phone/util/VoiceRecorderHelper;ZLcom/android/internal/telephony/Call;)V

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    const-string v1, "com.htc.soundrecorder.recordingstarted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 721
    iget-object v1, p0, Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;->this$0:Lcom/android/phone/util/VoiceRecorderHelper;

    #getter for: Lcom/android/phone/util/VoiceRecorderHelper;->mIsRecording:Z
    invoke-static {v1}, Lcom/android/phone/util/VoiceRecorderHelper;->access$100(Lcom/android/phone/util/VoiceRecorderHelper;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    iget-object v1, p0, Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;->this$0:Lcom/android/phone/util/VoiceRecorderHelper;

    iget-object v2, p0, Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;->this$0:Lcom/android/phone/util/VoiceRecorderHelper;

    #getter for: Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/util/VoiceRecorderHelper;->access$200(Lcom/android/phone/util/VoiceRecorderHelper;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    #calls: Lcom/android/phone/util/VoiceRecorderHelper;->changeStatus(ZLcom/android/internal/telephony/Call;)V
    invoke-static {v1, v4, v2}, Lcom/android/phone/util/VoiceRecorderHelper;->access$300(Lcom/android/phone/util/VoiceRecorderHelper;ZLcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 724
    :cond_2
    const-string v1, "com.htc.soundrecorder.erroroccured"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 726
    iget-object v1, p0, Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;->this$0:Lcom/android/phone/util/VoiceRecorderHelper;

    #getter for: Lcom/android/phone/util/VoiceRecorderHelper;->mIsRecording:Z
    invoke-static {v1}, Lcom/android/phone/util/VoiceRecorderHelper;->access$100(Lcom/android/phone/util/VoiceRecorderHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;->this$0:Lcom/android/phone/util/VoiceRecorderHelper;

    iget-object v2, p0, Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;->this$0:Lcom/android/phone/util/VoiceRecorderHelper;

    #getter for: Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/util/VoiceRecorderHelper;->access$200(Lcom/android/phone/util/VoiceRecorderHelper;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    #calls: Lcom/android/phone/util/VoiceRecorderHelper;->changeStatus(ZLcom/android/internal/telephony/Call;)V
    invoke-static {v1, v3, v2}, Lcom/android/phone/util/VoiceRecorderHelper;->access$300(Lcom/android/phone/util/VoiceRecorderHelper;ZLcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 731
    :cond_3
    const-string v1, "com.htc.soundrecorder.serviceready"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 732
    iget-object v1, p0, Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;->this$0:Lcom/android/phone/util/VoiceRecorderHelper;

    #getter for: Lcom/android/phone/util/VoiceRecorderHelper;->mServiceState:I
    invoke-static {v1}, Lcom/android/phone/util/VoiceRecorderHelper;->access$400(Lcom/android/phone/util/VoiceRecorderHelper;)I

    move-result v1

    if-ne v4, v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;->this$0:Lcom/android/phone/util/VoiceRecorderHelper;

    iget-object v2, p0, Lcom/android/phone/util/VoiceRecorderHelper$RecorderReceiver;->this$0:Lcom/android/phone/util/VoiceRecorderHelper;

    #getter for: Lcom/android/phone/util/VoiceRecorderHelper;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/util/VoiceRecorderHelper;->access$200(Lcom/android/phone/util/VoiceRecorderHelper;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    #calls: Lcom/android/phone/util/VoiceRecorderHelper;->startRecording(Lcom/android/internal/telephony/CallManager;)V
    invoke-static {v1, v2}, Lcom/android/phone/util/VoiceRecorderHelper;->access$500(Lcom/android/phone/util/VoiceRecorderHelper;Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 737
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown action received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/util/VoiceRecorderHelper;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/util/VoiceRecorderHelper;->access$600(Ljava/lang/String;)V

    goto :goto_0
.end method
