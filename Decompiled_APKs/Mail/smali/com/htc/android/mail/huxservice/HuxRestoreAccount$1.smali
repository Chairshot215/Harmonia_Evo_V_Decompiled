.class Lcom/htc/android/mail/huxservice/HuxRestoreAccount$1;
.super Ljava/lang/Object;
.source "HuxRestoreAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/huxservice/HuxRestoreAccount;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/huxservice/HuxRestoreAccount;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v3, 0x1

    .line 138
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    const-class v2, Lcom/htc/android/mail/ProviderListScreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "CallingActivity"

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mCallingActivity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const-string v1, "verifyDeviceInfo"

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mVerifyDeviceInfo:Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 141
    const-string v1, "huxAuthReady"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    invoke-virtual {v1, v0, v3}, Lcom/htc/android/mail/huxservice/HuxRestoreAccount;->startActivityForResult(Landroid/content/Intent;I)V

    .line 143
    return-void
.end method
