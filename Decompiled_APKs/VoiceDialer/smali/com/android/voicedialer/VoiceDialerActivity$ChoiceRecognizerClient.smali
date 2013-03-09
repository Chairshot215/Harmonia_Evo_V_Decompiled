.class Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Lcom/android/voicedialer/RecognizerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicedialer/VoiceDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChoiceRecognizerClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/VoiceDialerActivity;


# direct methods
.method private constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 938
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity;Lcom/android/voicedialer/VoiceDialerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 938
    invoke-direct {p0, p1}, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;)V

    return-void
.end method


# virtual methods
.method public onMicrophoneStart(Ljava/io/InputStream;)V
    .locals 2
    .parameter "mic"

    .prologue
    .line 1007
    const-string v0, "VoiceDialerActivity"

    const-string v1, "ChoiceRecognizerClient onMicrophoneStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    return-void
.end method

.method public onRecognitionError(Ljava/lang/String;)V
    .locals 4
    .parameter "err"

    .prologue
    .line 1001
    const-string v0, "VoiceDialerActivity"

    const-string v1, "ChoiceRecognizerClient onRecognitionError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$400(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;

    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const v3, 0x7f04000a

    invoke-direct {v1, v2, v3}, Lcom/android/voicedialer/VoiceDialerActivity$ErrorRunnable;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1003
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->exitActivity()V
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1500(Lcom/android/voicedialer/VoiceDialerActivity;)V

    .line 1004
    return-void
.end method

.method public onRecognitionFailure(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 996
    const-string v0, "VoiceDialerActivity"

    const-string v1, "ChoiceRecognizerClient onRecognitionFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->exitActivity()V
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1500(Lcom/android/voicedialer/VoiceDialerActivity;)V

    .line 998
    return-void
.end method

.method public onRecognitionSuccess([Landroid/content/Intent;)V
    .locals 6
    .parameter "intents"

    .prologue
    const/4 v5, 0x0

    .line 940
    const-string v2, "VoiceDialerActivity"

    const-string v3, "ChoiceRecognizerClient onRecognitionSuccess"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mState:I
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$700(Lcom/android/voicedialer/VoiceDialerActivity;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 943
    const-string v2, "VoiceDialerActivity"

    const-string v3, "not waiting for choice, ignoring"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2300(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 948
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2300(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 952
    :cond_2
    array-length v2, p1

    if-lez v2, :cond_0

    .line 953
    aget-object v2, p1, v5

    const-string v3, "semantic"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 955
    .local v1, value:Ljava/lang/String;
    const-string v2, "VoiceDialerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string v2, "R"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 957
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mUsingBluetooth:Z
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$500(Lcom/android/voicedialer/VoiceDialerActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 958
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$400(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/voicedialer/VoiceDialerActivity$GreetingRunnable;

    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct {v3, v4}, Lcom/android/voicedialer/VoiceDialerActivity$GreetingRunnable;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 960
    :cond_3
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->listenForCommand()V
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$800(Lcom/android/voicedialer/VoiceDialerActivity;)V

    goto :goto_0

    .line 962
    :cond_4
    const-string v2, "X"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 963
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->exitActivity()V
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1500(Lcom/android/voicedialer/VoiceDialerActivity;)V

    goto :goto_0

    .line 966
    :cond_5
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/4 v3, 0x0

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mChosenAction:Landroid/content/Intent;
    invoke-static {v2, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1002(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 967
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mAvailableChoices:[Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2600(Lcom/android/voicedialer/VoiceDialerActivity;)[Landroid/content/Intent;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 968
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mAvailableChoices:[Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2600(Lcom/android/voicedialer/VoiceDialerActivity;)[Landroid/content/Intent;

    move-result-object v2

    aget-object v2, v2, v0

    const-string v3, "phone_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 971
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    iget-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mAvailableChoices:[Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2600(Lcom/android/voicedialer/VoiceDialerActivity;)[Landroid/content/Intent;

    move-result-object v3

    aget-object v3, v3, v0

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mChosenAction:Landroid/content/Intent;
    invoke-static {v2, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1002(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 967
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 975
    :cond_7
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mChosenAction:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1000(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 977
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->performChoice()V
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2700(Lcom/android/voicedialer/VoiceDialerActivity;)V

    goto/16 :goto_0

    .line 981
    :cond_8
    const-string v2, "VoiceDialerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid choice"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mUsingBluetooth:Z
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$500(Lcom/android/voicedialer/VoiceDialerActivity;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 985
    const-string v2, "VoiceDialerActivity"

    const-string v3, "TTS, speak invalid_choice~"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1200(Lcom/android/voicedialer/VoiceDialerActivity;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "utteranceId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1300(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    iget-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const v4, 0x7f040014

    invoke-virtual {v3, v4}, Lcom/android/voicedialer/VoiceDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1200(Lcom/android/voicedialer/VoiceDialerActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 989
    :cond_9
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->waitForChoice()V
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2800(Lcom/android/voicedialer/VoiceDialerActivity;)V

    goto/16 :goto_0
.end method
