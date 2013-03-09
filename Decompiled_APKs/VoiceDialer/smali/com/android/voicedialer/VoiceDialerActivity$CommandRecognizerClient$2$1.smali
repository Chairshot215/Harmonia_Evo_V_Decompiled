.class Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2$1;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 884
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2$1;->this$2:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 888
    const-string v0, "VoiceDialerActivity"

    const-string v1, "cancelListener.onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 891
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2$1;->this$2:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-virtual {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->finish()V

    .line 892
    return-void
.end method
