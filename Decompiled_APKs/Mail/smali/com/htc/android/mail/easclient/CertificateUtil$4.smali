.class final Lcom/htc/android/mail/easclient/CertificateUtil$4;
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


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/htc/android/mail/easclient/CertificateUtil$4;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/android/mail/easclient/CertificateUtil$4;->val$activity:Landroid/app/Activity;

    const/16 v1, 0x136

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 124
    return-void
.end method
