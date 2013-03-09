.class public Lcom/google/android/voicesearch/HelpActivity;
.super Landroid/app/Activity;
.source "HelpActivity.java"


# instance fields
.field private mApplication:Lcom/google/android/voicesearch/VoiceSearchApplication;

.field private mChooserDialog:Lcom/google/android/voicesearch/HelpChooserDialog;

.field private mFeedBackUri:Landroid/net/Uri;

.field private mHelpCenterUri:Landroid/net/Uri;

.field private mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

.field private mSoundManager:Lcom/google/android/voicesearch/SoundManager;

.field private mTutorialDialog:Lcom/google/android/voicesearch/HelpDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/HelpActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/voicesearch/HelpActivity;->speakAgain()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/HelpActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/voicesearch/HelpActivity;->cancel()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/HelpActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mHelpCenterUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/HelpActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mFeedBackUri:Landroid/net/Uri;

    return-object v0
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mSoundManager:Lcom/google/android/voicesearch/SoundManager;

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/SoundManager;->playSound(I)V

    .line 134
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpActivity;->finish()V

    .line 135
    return-void
.end method

.method private speakAgain()V
    .locals 3

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 139
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/voicesearch/RecognitionActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 143
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/HelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpActivity;->finish()V

    .line 145
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mTutorialDialog:Lcom/google/android/voicesearch/HelpDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/HelpDialog;->updateLayout()V

    .line 192
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mChooserDialog:Lcom/google/android/voicesearch/HelpChooserDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/HelpChooserDialog;->updateLayout()V

    .line 193
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 194
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/VoiceSearchApplication;

    iput-object v2, p0, Lcom/google/android/voicesearch/HelpActivity;->mApplication:Lcom/google/android/voicesearch/VoiceSearchApplication;

    .line 52
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    .line 54
    .local v0, container:Lcom/google/android/voicesearch/VoiceSearchContainer;
    iget-object v2, p0, Lcom/google/android/voicesearch/HelpActivity;->mApplication:Lcom/google/android/voicesearch/VoiceSearchApplication;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getSoundManager()Lcom/google/android/voicesearch/SoundManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/HelpActivity;->mSoundManager:Lcom/google/android/voicesearch/SoundManager;

    .line 55
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getVoiceSearchLogger()Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/HelpActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    .line 56
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v1

    .line 57
    .local v1, helper:Lcom/google/android/voicesearch/GservicesHelper;
    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getFeedbackUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/HelpActivity;->mFeedBackUri:Landroid/net/Uri;

    .line 58
    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getHelpCenterUri()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/voicesearch/HelpActivity;->mHelpCenterUri:Landroid/net/Uri;

    .line 59
    new-instance v2, Lcom/google/android/voicesearch/HelpDialog;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/HelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/HelpActivity;->mTutorialDialog:Lcom/google/android/voicesearch/HelpDialog;

    .line 63
    iget-object v2, p0, Lcom/google/android/voicesearch/HelpActivity;->mTutorialDialog:Lcom/google/android/voicesearch/HelpDialog;

    new-instance v3, Lcom/google/android/voicesearch/HelpActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/voicesearch/HelpActivity$1;-><init>(Lcom/google/android/voicesearch/HelpActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/voicesearch/HelpDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 69
    iget-object v2, p0, Lcom/google/android/voicesearch/HelpActivity;->mTutorialDialog:Lcom/google/android/voicesearch/HelpDialog;

    new-instance v3, Lcom/google/android/voicesearch/HelpActivity$2;

    invoke-direct {v3, p0}, Lcom/google/android/voicesearch/HelpActivity$2;-><init>(Lcom/google/android/voicesearch/HelpActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/voicesearch/HelpDialog;->setHelpDialogListener(Lcom/google/android/voicesearch/HelpDialog$Listener;)V

    .line 81
    new-instance v2, Lcom/google/android/voicesearch/HelpChooserDialog;

    invoke-direct {v2, p0}, Lcom/google/android/voicesearch/HelpChooserDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/voicesearch/HelpActivity;->mChooserDialog:Lcom/google/android/voicesearch/HelpChooserDialog;

    .line 84
    iget-object v2, p0, Lcom/google/android/voicesearch/HelpActivity;->mChooserDialog:Lcom/google/android/voicesearch/HelpChooserDialog;

    new-instance v3, Lcom/google/android/voicesearch/HelpActivity$3;

    invoke-direct {v3, p0}, Lcom/google/android/voicesearch/HelpActivity$3;-><init>(Lcom/google/android/voicesearch/HelpActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/voicesearch/HelpChooserDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 90
    iget-object v2, p0, Lcom/google/android/voicesearch/HelpActivity;->mChooserDialog:Lcom/google/android/voicesearch/HelpChooserDialog;

    new-instance v3, Lcom/google/android/voicesearch/HelpActivity$4;

    invoke-direct {v3, p0}, Lcom/google/android/voicesearch/HelpActivity$4;-><init>(Lcom/google/android/voicesearch/HelpActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/voicesearch/HelpChooserDialog;->setListener(Lcom/google/android/voicesearch/HelpChooserDialog$Listener;)V

    .line 130
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 200
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mTutorialDialog:Lcom/google/android/voicesearch/HelpDialog;

    .line 205
    :goto_0
    return-object v0

    .line 202
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mChooserDialog:Lcom/google/android/voicesearch/HelpChooserDialog;

    goto :goto_0

    .line 205
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 173
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpActivity;->finish()V

    .line 176
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 161
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->shouldShowFirstRunMessage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpActivity;->showDialog(I)V

    .line 167
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/HelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/VoiceSearchPreferences;->setShouldShowFirstRunMessage(Landroid/content/Context;Z)V

    .line 168
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/HelpActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 181
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mLogger:Lcom/google/android/voicesearch/logging/VoiceSearchLogger;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/logging/VoiceSearchLogger;->flush()V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mTutorialDialog:Lcom/google/android/voicesearch/HelpDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/HelpDialog;->stopAutoScroll()V

    .line 185
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mTutorialDialog:Lcom/google/android/voicesearch/HelpDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/HelpDialog;->dismiss()V

    .line 186
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity;->mChooserDialog:Lcom/google/android/voicesearch/HelpChooserDialog;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/HelpChooserDialog;->dismiss()V

    .line 187
    return-void
.end method
