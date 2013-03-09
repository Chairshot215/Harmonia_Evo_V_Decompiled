.class public Lcom/htc/android/mail/util/MailDialogManager;
.super Ljava/lang/Object;
.source "MailDialogManager.java"


# instance fields
.field private mDialogMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/DialogInterface;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/util/MailDialogManager;->mDialogMap:Ljava/util/HashMap;

    return-void
.end method

.method public static show(Lcom/htc/android/mail/util/MailDialogManager;Lcom/htc/widget/HtcAlertDialog$Builder;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "mailDialogManager"
    .parameter "builder"

    .prologue
    .line 13
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/util/MailDialogManager;->show(Lcom/htc/widget/HtcAlertDialog$Builder;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 16
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/android/mail/util/MailDialogManager;->mDialogMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/htc/android/mail/util/MailDialogManager;->mDialogMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 41
    iget-object v2, p0, Lcom/htc/android/mail/util/MailDialogManager;->mDialogMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 42
    iget-object v2, p0, Lcom/htc/android/mail/util/MailDialogManager;->mDialogMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/DialogInterface;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface;

    .line 44
    .local v0, dialog:Landroid/content/DialogInterface;
    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 50
    .end local v0           #dialog:Landroid/content/DialogInterface;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/DialogInterface;>;"
    :cond_1
    return-void
.end method

.method public remove(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/android/mail/util/MailDialogManager;->mDialogMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/htc/android/mail/util/MailDialogManager;->mDialogMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    return-void
.end method

.method public show(Lcom/htc/widget/HtcAlertDialog$Builder;)Lcom/htc/widget/HtcAlertDialog;
    .locals 2
    .parameter "builder"

    .prologue
    .line 21
    invoke-virtual {p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 22
    .local v0, dialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v1, Lcom/htc/android/mail/util/MailDialogDismissListener;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/util/MailDialogDismissListener;-><init>(Lcom/htc/android/mail/util/MailDialogManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/util/MailDialogManager;->add(Landroid/content/DialogInterface;)V

    .line 24
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 25
    return-object v0
.end method
