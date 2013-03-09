.class Lcom/google/android/voicesearch/HelpActivity$4;
.super Ljava/lang/Object;
.source "HelpActivity.java"

# interfaces
.implements Lcom/google/android/voicesearch/HelpChooserDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/HelpActivity;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/HelpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpActivity$4;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity$4;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    #calls: Lcom/google/android/voicesearch/HelpActivity;->cancel()V
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpActivity;->access$100(Lcom/google/android/voicesearch/HelpActivity;)V

    .line 128
    return-void
.end method

.method public onFeedback()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpActivity$4;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    #getter for: Lcom/google/android/voicesearch/HelpActivity;->mFeedBackUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/google/android/voicesearch/HelpActivity;->access$300(Lcom/google/android/voicesearch/HelpActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpActivity$4;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/HelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method public onSettings()V
    .locals 4

    .prologue
    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/voicesearch/HelpActivity$4;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    const-class v3, Lcom/google/android/voicesearch/VoiceSearchPreferences;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpActivity$4;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/HelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method

.method public onSpeakNow()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity$4;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    #calls: Lcom/google/android/voicesearch/HelpActivity;->speakAgain()V
    invoke-static {v0}, Lcom/google/android/voicesearch/HelpActivity;->access$000(Lcom/google/android/voicesearch/HelpActivity;)V

    .line 108
    return-void
.end method

.method public onTutorial()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpActivity$4;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/HelpActivity;->showDialog(I)V

    .line 103
    return-void
.end method

.method public onWebHelp()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpActivity$4;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    #getter for: Lcom/google/android/voicesearch/HelpActivity;->mHelpCenterUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/google/android/voicesearch/HelpActivity;->access$200(Lcom/google/android/voicesearch/HelpActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpActivity$4;->this$0:Lcom/google/android/voicesearch/HelpActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/HelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method
