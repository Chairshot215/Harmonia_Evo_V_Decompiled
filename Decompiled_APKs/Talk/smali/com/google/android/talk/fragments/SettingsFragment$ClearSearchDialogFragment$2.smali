.class Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment$2;->this$0:Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 324
    iget-object v2, p0, Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment$2;->this$0:Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;

    invoke-virtual {v2}, Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 328
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 329
    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    .line 330
    .local v1, app:Lcom/google/android/talk/TalkApp;
    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    .line 331
    iget-object v2, p0, Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment$2;->this$0:Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;

    invoke-virtual {v2}, Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;->dismiss()V

    .line 333
    .end local v1           #app:Lcom/google/android/talk/TalkApp;
    :cond_0
    return-void
.end method
