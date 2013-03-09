.class public Lcom/google/android/gm/CreateShortcutActivity;
.super Lcom/google/android/gm/GmailBaseActivity;
.source "CreateShortcutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/android/gm/GmailBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 16
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v0

    invoke-virtual {v0, p0, v4}, Lcom/google/android/gm/persistence/Persistence;->getCachedConfiguredGoogleAccounts(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gm/CreateShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 20
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 21
    const-class v2, Lcom/google/android/gm/LabelSelectionActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 22
    const/high16 v2, 0x4200

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    const-string v2, "account-shortcut"

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/gm/CreateShortcutActivity;->startActivity(Landroid/content/Intent;)V

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gm/CreateShortcutActivity;->finish()V

    .line 32
    return-void

    .line 27
    :cond_0
    const-class v0, Lcom/google/android/gm/MailboxSelectionActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 28
    const/high16 v0, 0x200

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method
