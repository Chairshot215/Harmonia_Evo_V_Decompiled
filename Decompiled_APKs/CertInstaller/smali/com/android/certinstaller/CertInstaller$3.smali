.class Lcom/android/certinstaller/CertInstaller$3;
.super Ljava/lang/Object;
.source "CertInstaller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/certinstaller/CertInstaller;->createPkcs12PasswordDialog()Landroid/app/Dialog;
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
    .line 356
    iput-object p1, p0, Lcom/android/certinstaller/CertInstaller$3;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v3, 0x2

    .line 358
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$3;->this$0:Lcom/android/certinstaller/CertInstaller;

    #getter for: Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;
    invoke-static {v1}, Lcom/android/certinstaller/CertInstaller;->access$800(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/ViewHelper;

    move-result-object v1

    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Lcom/android/certinstaller/ViewHelper;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$3;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-virtual {v1, v3}, Lcom/android/certinstaller/CertInstaller;->removeDialog(I)V

    .line 361
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$3;->this$0:Lcom/android/certinstaller/CertInstaller;

    const/4 v2, 0x1

    #setter for: Lcom/android/certinstaller/CertInstaller;->mNameEmptyError:Z
    invoke-static {v1, v2}, Lcom/android/certinstaller/CertInstaller;->access$702(Lcom/android/certinstaller/CertInstaller;Z)Z

    .line 362
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$3;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-virtual {v1, v3}, Lcom/android/certinstaller/CertInstaller;->showDialog(I)V

    .line 368
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$3;->this$0:Lcom/android/certinstaller/CertInstaller;

    new-instance v2, Lcom/android/certinstaller/CertInstaller$Pkcs12ExtractAction;

    invoke-direct {v2, v0}, Lcom/android/certinstaller/CertInstaller$Pkcs12ExtractAction;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;
    invoke-static {v1, v2}, Lcom/android/certinstaller/CertInstaller;->access$502(Lcom/android/certinstaller/CertInstaller;Lcom/android/certinstaller/CertInstaller$MyAction;)Lcom/android/certinstaller/CertInstaller$MyAction;

    .line 365
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$3;->this$0:Lcom/android/certinstaller/CertInstaller;

    #getter for: Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;
    invoke-static {v1}, Lcom/android/certinstaller/CertInstaller;->access$500(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/CertInstaller$MyAction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller$3;->this$0:Lcom/android/certinstaller/CertInstaller;

    invoke-interface {v1, v2}, Lcom/android/certinstaller/CertInstaller$MyAction;->run(Lcom/android/certinstaller/CertInstaller;)V

    .line 366
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller$3;->this$0:Lcom/android/certinstaller/CertInstaller;

    const/4 v2, 0x0

    #setter for: Lcom/android/certinstaller/CertInstaller;->mNameEmptyError:Z
    invoke-static {v1, v2}, Lcom/android/certinstaller/CertInstaller;->access$702(Lcom/android/certinstaller/CertInstaller;Z)Z

    goto :goto_0
.end method
