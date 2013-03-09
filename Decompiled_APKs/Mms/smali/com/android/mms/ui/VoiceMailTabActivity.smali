.class public Lcom/android/mms/ui/VoiceMailTabActivity;
.super Lcom/android/mms/ui/MessageTabSwitchActivity;
.source "VoiceMailTabActivity.java"


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "VoiceMailTabActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const-string v0, "VoiceMailTabActivity"

    const-string v1, "onCreate: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/VoiceMailTabActivity;->setCurrentTab(I)V

    .line 16
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->onDestroy()V

    .line 62
    const-string v0, "VoiceMailTabActivity"

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->onPause()V

    .line 40
    const-string v2, "VoiceMailTabActivity"

    const-string v3, "onPause: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Lcom/android/mms/ui/VoiceMailTabActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->detectGotoHome(Landroid/content/Context;Z)Z

    move-result v0

    .line 44
    .local v0, gotoHome:Z
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/android/mms/ui/VoiceMailTabActivity;->getCurrentTab()I

    move-result v1

    .line 46
    .local v1, tab:I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/mms/ui/VoiceMailTabActivity;->finish()V

    .line 51
    .end local v1           #tab:I
    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 20
    invoke-super {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->onRestart()V

    .line 21
    const-string v0, "VoiceMailTabActivity"

    const-string v1, "onRestart: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->onResume()V

    .line 27
    const-string v0, "VoiceMailTabActivity"

    const-string v1, "onResume: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->onStop()V

    .line 56
    const-string v0, "VoiceMailTabActivity"

    const-string v1, "onStop: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method
