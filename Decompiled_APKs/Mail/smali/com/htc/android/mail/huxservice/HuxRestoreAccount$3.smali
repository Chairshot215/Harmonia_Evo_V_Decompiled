.class Lcom/htc/android/mail/huxservice/HuxRestoreAccount$3;
.super Ljava/lang/Object;
.source "HuxRestoreAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxRestoreAccount;
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
    .line 233
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$3;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "button"

    .prologue
    const v4, 0x7f090165

    const/4 v7, 0x0

    .line 235
    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$3;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$3;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiRestoreAcctDialogLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/mail/util/ParseMachine;->parseHuxPwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mPassword:Ljava/lang/String;

    .line 237
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$3;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 238
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$3;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUI:Lcom/htc/android/mail/huxservice/HuxAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiRestoreAcctDialogLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 239
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$3;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/huxservice/HuxRestoreAccount;->showDialog(I)V

    .line 242
    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$3;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEndPointId:I

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$3;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget-object v3, v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$3;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mPassword:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$3;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget v5, v5, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mUserEndPointId:I

    iget-object v6, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$3;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    iget v6, v6, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mTermsId:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/android/mail/huxservice/HUXUTIL;->gen_getToken(ILjava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, body:Ljava/lang/String;
    new-instance v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxRestoreAccount$3;->this$0:Lcom/htc/android/mail/huxservice/HuxRestoreAccount;

    invoke-direct {v2, v3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v7

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostTokenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 244
    return-void
.end method
