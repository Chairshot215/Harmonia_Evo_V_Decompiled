.class public Lcom/google/android/gm/AutoSendActivity;
.super Lcom/google/android/gm/ComposeActivity;
.source "AutoSendActivity.java"


# instance fields
.field private mDontSaveOrSend:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/gm/ComposeActivity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/AutoSendActivity;->mDontSaveOrSend:Z

    return-void
.end method


# virtual methods
.method protected getInitialAccount()Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/android/gm/AutoSendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 38
    .local v1, extras:Landroid/os/Bundle;
    const-string v2, "com.google.android.gm.extra.ACCOUNT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, account:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #account:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #account:Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lcom/google/android/gm/ComposeActivity;->getInitialAccount()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getSendingAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/gm/AutoSendActivity;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method protected initFromExtras(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 71
    const-string v0, "dontSendOrSave"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/AutoSendActivity;->mDontSaveOrSend:Z

    .line 74
    invoke-super {p0, p1}, Lcom/google/android/gm/ComposeActivity;->initFromExtras(Landroid/content/Intent;)V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gm/AutoSendActivity;->getBodyText()Landroid/text/Spanned;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gm/AutoSendActivity;->sendOrSaveWithSanityChecks(Landroid/text/Spanned;ZZ)Z

    .line 77
    return-void
.end method

.method protected sendOrSaveWithSanityChecks(Landroid/text/Spanned;ZZ)Z
    .locals 1
    .parameter "body"
    .parameter "save"
    .parameter "showToast"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/android/gm/AutoSendActivity;->mDontSaveOrSend:Z

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gm/ComposeActivity;->sendOrSaveWithSanityChecks(Landroid/text/Spanned;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method protected showEmptyTextWarnings()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method protected showSendConfirmation()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method
