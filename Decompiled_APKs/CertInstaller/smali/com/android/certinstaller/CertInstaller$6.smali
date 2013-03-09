.class Lcom/android/certinstaller/CertInstaller$6;
.super Ljava/lang/Object;
.source "CertInstaller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/certinstaller/CertInstaller;->createNameCredentialDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/certinstaller/CertInstaller;


# direct methods
.method constructor <init>(Lcom/android/certinstaller/CertInstaller;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 399
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    #getter for: Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;
    invoke-static {v2}, Lcom/android/certinstaller/CertInstaller;->access$800(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/ViewHelper;

    move-result-object v2

    const v3, 0x7f080001

    invoke-virtual {v2, v3}, Lcom/android/certinstaller/ViewHelper;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-virtual {v2, v4}, Lcom/android/certinstaller/CertInstaller;->removeDialog(I)V

    .line 402
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    #setter for: Lcom/android/certinstaller/CertInstaller;->mNameEmptyError:Z
    invoke-static {v2, v4}, Lcom/android/certinstaller/CertInstaller;->access$702(Lcom/android/certinstaller/CertInstaller;Z)Z

    .line 403
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-virtual {v2, v4}, Lcom/android/certinstaller/CertInstaller;->showDialog(I)V

    .line 419
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-virtual {v2, v4}, Lcom/android/certinstaller/CertInstaller;->removeDialog(I)V

    .line 406
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    const/4 v3, 0x0

    #setter for: Lcom/android/certinstaller/CertInstaller;->mNameEmptyError:Z
    invoke-static {v2, v3}, Lcom/android/certinstaller/CertInstaller;->access$702(Lcom/android/certinstaller/CertInstaller;Z)Z

    .line 407
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    #getter for: Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;
    invoke-static {v2}, Lcom/android/certinstaller/CertInstaller;->access$200(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/CredentialHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/certinstaller/CredentialHelper;->setName(Ljava/lang/String;)V

    .line 411
    :try_start_0
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    #getter for: Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;
    invoke-static {v3}, Lcom/android/certinstaller/CertInstaller;->access$200(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/CredentialHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/certinstaller/CredentialHelper;->createSystemInstallIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/certinstaller/CertInstaller;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "CertInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "systemInstall(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$6;->this$0:Lcom/android/certinstaller/CertInstaller;

    const v3, 0x7f060018

    #calls: Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V
    invoke-static {v2, v3}, Lcom/android/certinstaller/CertInstaller;->access$600(Lcom/android/certinstaller/CertInstaller;I)V

    goto :goto_0
.end method
