.class final Lcom/htc/android/mail/easclient/CertificateUtil$3;
.super Ljava/lang/Object;
.source "CertificateUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/CertificateUtil;->handleCreateDialog(Landroid/app/Activity;IJLjava/lang/String;Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$args:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/android/mail/easclient/CertificateUtil$3;->val$args:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/htc/android/mail/easclient/CertificateUtil$3;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/htc/android/mail/easclient/CertificateUtil$3;->val$args:Landroid/os/Bundle;

    const-string v2, "extra.message.cancel"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 109
    .local v0, mCancelMsg:Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/CertificateUtil$3;->val$activity:Landroid/app/Activity;

    const/16 v2, 0x136

    invoke-virtual {v1, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 112
    iget-object v1, p0, Lcom/htc/android/mail/easclient/CertificateUtil$3;->val$activity:Landroid/app/Activity;

    const/16 v2, 0x137

    invoke-virtual {v1, v2}, Landroid/app/Activity;->removeDialog(I)V

    .line 113
    return-void
.end method
