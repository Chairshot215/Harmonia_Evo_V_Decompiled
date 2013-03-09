.class public Lcom/htc/android/mail/util/MailDialogDismissListener;
.super Ljava/lang/Object;
.source "MailDialogDismissListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mDialogManager:Lcom/htc/android/mail/util/MailDialogManager;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/util/MailDialogManager;)V
    .locals 0
    .parameter "dialogManager"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/htc/android/mail/util/MailDialogDismissListener;->mDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    .line 12
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/android/mail/util/MailDialogDismissListener;->mDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/htc/android/mail/util/MailDialogDismissListener;->mDialogManager:Lcom/htc/android/mail/util/MailDialogManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/util/MailDialogManager;->remove(Landroid/content/DialogInterface;)V

    .line 18
    :cond_0
    return-void
.end method
