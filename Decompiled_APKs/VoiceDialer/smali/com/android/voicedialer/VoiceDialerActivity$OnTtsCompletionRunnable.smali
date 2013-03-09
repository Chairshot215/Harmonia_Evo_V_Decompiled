.class Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicedialer/VoiceDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnTtsCompletionRunnable"
.end annotation


# instance fields
.field private mFallback:Z

.field final synthetic this$0:Lcom/android/voicedialer/VoiceDialerActivity;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity;Z)V
    .locals 0
    .parameter
    .parameter "fallback"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-boolean p2, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;->mFallback:Z

    .line 302
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 306
    const-string v0, "VoiceDialerActivity"

    const-string v1, "===OnTtsCompletionRunnable()\'s run==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-boolean v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;->mFallback:Z

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "VoiceDialerActivity"

    const-string v1, "utterance completion not delivered, using fallback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    const-string v0, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTtsCompletionRunnable, mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mState:I
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$700(Lcom/android/voicedialer/VoiceDialerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mState:I
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$700(Lcom/android/voicedialer/VoiceDialerActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mState:I
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$700(Lcom/android/voicedialer/VoiceDialerActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->listenForCommand()V
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$800(Lcom/android/voicedialer/VoiceDialerActivity;)V

    .line 331
    :cond_2
    :goto_0
    return-void

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mState:I
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$700(Lcom/android/voicedialer/VoiceDialerActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 318
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->listenForChoice()V
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$900(Lcom/android/voicedialer/VoiceDialerActivity;)V

    goto :goto_0

    .line 319
    :cond_4
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mState:I
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$700(Lcom/android/voicedialer/VoiceDialerActivity;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 321
    const-string v0, "VoiceDialerActivity"

    const-string v1, "mState updated to ===EXITING==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mState:I
    invoke-static {v0, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->access$702(Lcom/android/voicedialer/VoiceDialerActivity;I)I

    .line 323
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-virtual {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->finish()V

    goto :goto_0

    .line 324
    :cond_5
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mState:I
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$700(Lcom/android/voicedialer/VoiceDialerActivity;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 326
    const-string v0, "VoiceDialerActivity"

    const-string v1, "mState updated to ===EXITING==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mState:I
    invoke-static {v0, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->access$702(Lcom/android/voicedialer/VoiceDialerActivity;I)I

    .line 328
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mChosenAction:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1000(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/content/Intent;

    move-result-object v1

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->startActivityHelp(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1100(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/content/Intent;)V

    .line 329
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$OnTtsCompletionRunnable;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-virtual {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->finish()V

    goto :goto_0
.end method
