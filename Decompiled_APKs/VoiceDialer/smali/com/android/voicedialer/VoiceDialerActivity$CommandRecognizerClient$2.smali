.class Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->onRecognitionSuccess([Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

.field final synthetic val$intents:[Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;[Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 824
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iput-object p2, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->val$intents:[Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 826
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v6, v6, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mUsingBluetooth:Z
    invoke-static {v6}, Lcom/android/voicedialer/VoiceDialerActivity;->access$500(Lcom/android/voicedialer/VoiceDialerActivity;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 827
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v6, v6, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/16 v7, 0x19

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->playSound(I)I
    invoke-static {v6, v7}, Lcom/android/voicedialer/VoiceDialerActivity;->access$600(Lcom/android/voicedialer/VoiceDialerActivity;I)I

    .line 829
    :cond_0
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v6, v6, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/voicedialer/VoiceDialerActivity;->access$400(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v7, v7, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mMicFlasher:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/android/voicedialer/VoiceDialerActivity;->access$300(Lcom/android/voicedialer/VoiceDialerActivity;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 831
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->val$intents:[Landroid/content/Intent;

    array-length v6, v6

    new-array v4, v6, [Ljava/lang/String;

    .line 832
    .local v4, sentences:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->val$intents:[Landroid/content/Intent;

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 833
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->val$intents:[Landroid/content/Intent;

    aget-object v6, v6, v2

    const-string v7, "sentence"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 832
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 837
    :cond_1
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->val$intents:[Landroid/content/Intent;

    array-length v6, v6

    if-nez v6, :cond_2

    .line 838
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    const-string v7, "zero intents"

    invoke-virtual {v6, v7}, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->onRecognitionFailure(Ljava/lang/String;)V

    .line 933
    :goto_1
    return-void

    .line 842
    :cond_2
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->val$intents:[Landroid/content/Intent;

    array-length v6, v6

    if-lez v6, :cond_3

    .line 844
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->val$intents:[Landroid/content/Intent;

    aget-object v6, v6, v9

    const-string v7, "semantic"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 846
    .local v5, value:Ljava/lang/String;
    const-string v6, "VoiceDialerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const-string v6, "X"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 848
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v6, v6, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->exitActivity()V
    invoke-static {v6}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1500(Lcom/android/voicedialer/VoiceDialerActivity;)V

    goto :goto_1

    .line 853
    .end local v5           #value:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v6, v6, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mUsingBluetooth:Z
    invoke-static {v6}, Lcom/android/voicedialer/VoiceDialerActivity;->access$500(Lcom/android/voicedialer/VoiceDialerActivity;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->val$intents:[Landroid/content/Intent;

    array-length v6, v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    iget-object v7, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->val$intents:[Landroid/content/Intent;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 873
    :cond_4
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v6, v6, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    iget-object v7, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->val$intents:[Landroid/content/Intent;

    aget-object v7, v7, v9

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mChosenAction:Landroid/content/Intent;
    invoke-static {v6, v7}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1002(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 874
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v6, v6, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->performChoice()V
    invoke-static {v6}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2700(Lcom/android/voicedialer/VoiceDialerActivity;)V

    goto :goto_1

    .line 883
    :cond_5
    new-instance v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2$1;

    invoke-direct {v0, p0}, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2$1;-><init>(Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;)V

    .line 895
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v1, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2$2;

    invoke-direct {v1, p0}, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2$2;-><init>(Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;)V

    .line 908
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2$3;

    invoke-direct {v3, p0}, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2$3;-><init>(Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;)V

    .line 921
    .local v3, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v6, v6, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v8, v8, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v8, 0x7f040004

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x104

    invoke-virtual {v7, v8, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v6, v7}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2302(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 931
    iget-object v6, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v6, v6, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->waitForChoice()V
    invoke-static {v6}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2800(Lcom/android/voicedialer/VoiceDialerActivity;)V

    goto/16 :goto_1
.end method
