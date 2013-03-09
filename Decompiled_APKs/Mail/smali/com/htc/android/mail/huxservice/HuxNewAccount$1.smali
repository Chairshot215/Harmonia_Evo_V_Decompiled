.class Lcom/htc/android/mail/huxservice/HuxNewAccount$1;
.super Ljava/lang/Object;
.source "HuxNewAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxNewAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/huxservice/HuxNewAccount;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 181
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxNewAccount;->showDialog(I)V

    .line 182
    const/4 v0, 0x0

    .line 186
    .local v0, body:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;

    iget v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEndPointId:I

    if-gez v1, :cond_0

    .line 187
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;

    invoke-direct {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "POST/snc/user/authTwo/getToken"

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$GetVerifyDeviceInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;

    iget v1, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEndPointId:I

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;

    iget-object v3, v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mPassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;

    iget v4, v4, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUserEndPointId:I

    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;

    iget v5, v5, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mTermsId:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/android/mail/huxservice/HUXUTIL;->gen_getToken(ILjava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 191
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxNewAccount$1;->this$0:Lcom/htc/android/mail/huxservice/HuxNewAccount;

    invoke-direct {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v6

    aput-object v0, v2, v7

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
