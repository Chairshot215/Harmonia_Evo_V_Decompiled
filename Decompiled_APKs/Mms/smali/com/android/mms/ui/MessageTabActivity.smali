.class public Lcom/android/mms/ui/MessageTabActivity;
.super Lcom/android/mms/ui/MessageTabSwitchActivity;
.source "MessageTabActivity.java"


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "MessageTabActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const-string v0, "MessageTabActivity"

    const-string v1, "onCreate: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageTabActivity;->setCurrentTab(I)V

    .line 17
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->onDestroy()V

    .line 46
    const-string v0, "MessageTabActivity"

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->onPause()V

    .line 34
    const-string v0, "MessageTabActivity"

    const-string v1, "onPause: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->onRestart()V

    .line 22
    const-string v0, "MessageTabActivity"

    const-string v1, "onRestart: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->onResume()V

    .line 28
    const-string v0, "MessageTabActivity"

    const-string v1, "onResume: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/mms/ui/MessageTabSwitchActivity;->onStop()V

    .line 40
    const-string v0, "MessageTabActivity"

    const-string v1, "onStop: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method
