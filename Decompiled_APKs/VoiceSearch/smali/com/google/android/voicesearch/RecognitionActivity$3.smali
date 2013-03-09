.class Lcom/google/android/voicesearch/RecognitionActivity$3;
.super Ljava/lang/Object;
.source "RecognitionActivity.java"

# interfaces
.implements Lcom/google/android/voicesearch/DisambigDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/RecognitionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/RecognitionActivity;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/RecognitionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/google/android/voicesearch/RecognitionActivity$3;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 546
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$3;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mAllResults:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2600(Lcom/google/android/voicesearch/RecognitionActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 547
    .local v0, action:Lcom/google/android/voicesearch/actions/VoiceAction;
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$3;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->disambigAccepted(Lcom/google/android/voicesearch/actions/VoiceAction;)V

    .line 548
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$3;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mDevice:Lcom/google/android/voicesearch/DeviceCapabilityManager;
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2700(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/DeviceCapabilityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/actions/VoiceAction;->isEditorNeeded(Lcom/google/android/voicesearch/DeviceCapabilityManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$3;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mEditorDialog:Lcom/google/android/voicesearch/EditorDialog;
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2800(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/EditorDialog;

    move-result-object v1

    check-cast v0, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    .end local v0           #action:Lcom/google/android/voicesearch/actions/VoiceAction;
    iget-object v2, p0, Lcom/google/android/voicesearch/RecognitionActivity$3;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mAllResults:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2600(Lcom/google/android/voicesearch/RecognitionActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/voicesearch/EditorDialog;->setAction(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;Ljava/util/List;)V

    .line 550
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$3;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mController:Lcom/google/android/voicesearch/speechservice/RecognitionController;
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1800(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/speechservice/RecognitionController;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/voicesearch/speechservice/RecognitionController;->releaseMicrophone()V

    .line 551
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$3;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    const/4 v2, 0x3

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->showScreen(I)V
    invoke-static {v1, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1000(Lcom/google/android/voicesearch/RecognitionActivity;I)V

    .line 556
    :goto_0
    return-void

    .line 553
    .restart local v0       #action:Lcom/google/android/voicesearch/actions/VoiceAction;
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$3;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;
    invoke-static {v1}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2500(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/DisambigDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/voicesearch/DisambigDialog;->dismiss()V

    .line 554
    iget-object v1, p0, Lcom/google/android/voicesearch/RecognitionActivity$3;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    const/4 v2, 0x0

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->startAction(Lcom/google/android/voicesearch/actions/VoiceAction;Z)V
    invoke-static {v1, v0, v2}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2900(Lcom/google/android/voicesearch/RecognitionActivity;Lcom/google/android/voicesearch/actions/VoiceAction;Z)V

    goto :goto_0
.end method

.method public onCancel()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$3;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->getSoundManager()Lcom/google/android/voicesearch/SoundManager;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1200(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/SoundManager;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/SoundManager;->playSound(I)V

    .line 575
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$3;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2500(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/DisambigDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/DisambigDialog;->dismiss()V

    .line 576
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$3;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->finish()V

    .line 577
    return-void
.end method

.method public onHelp()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$3;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mDisambigDialog:Lcom/google/android/voicesearch/DisambigDialog;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2500(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/DisambigDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/DisambigDialog;->dismiss()V

    .line 563
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$3;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #getter for: Lcom/google/android/voicesearch/RecognitionActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$100(Lcom/google/android/voicesearch/RecognitionActivity;)Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->helpButtonUsed(Z)V

    .line 564
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$3;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->startHelpActivity()V
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$1900(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 565
    return-void
.end method

.method public onSettings()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$3;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->launchSettings()V
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2200(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 582
    return-void
.end method

.method public onSpeakAgain()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/android/voicesearch/RecognitionActivity$3;->this$0:Lcom/google/android/voicesearch/RecognitionActivity;

    #calls: Lcom/google/android/voicesearch/RecognitionActivity;->initAndStart()V
    invoke-static {v0}, Lcom/google/android/voicesearch/RecognitionActivity;->access$2100(Lcom/google/android/voicesearch/RecognitionActivity;)V

    .line 570
    return-void
.end method
