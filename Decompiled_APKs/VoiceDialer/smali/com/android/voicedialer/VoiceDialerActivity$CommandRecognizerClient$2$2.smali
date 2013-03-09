.class Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2$2;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;)V
    .locals 0
    .parameter

    .prologue
    .line 896
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2$2;->this$2:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 900
    const-string v0, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickListener.onClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2$2;->this$2:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2$2;->this$2:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;

    iget-object v1, v1, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->val$intents:[Landroid/content/Intent;

    aget-object v1, v1, p2

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->startActivityHelp(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1100(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/content/Intent;)V

    .line 903
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 904
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2$2;->this$2:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-virtual {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->finish()V

    .line 905
    return-void
.end method
