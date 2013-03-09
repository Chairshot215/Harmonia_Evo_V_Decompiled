.class Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;
.super Landroid/os/AsyncTask;
.source "GetRecoveryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/GetRecoveryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallRecoveryImg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field dialog:Landroid/app/ProgressDialog;

.field ecb:Lcom/s0up/goomanager/ExtendedCommandBuilder;

.field imgPath:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field result:Ljava/lang/String;

.field final synthetic this$0:Lcom/s0up/goomanager/GetRecoveryActivity;


# direct methods
.method public constructor <init>(Lcom/s0up/goomanager/GetRecoveryActivity;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "imgPath"
    .parameter "mContext"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 216
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;->dialog:Landroid/app/ProgressDialog;

    .line 217
    const-string v0, ""

    iput-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;->result:Ljava/lang/String;

    .line 218
    const-string v0, ""

    iput-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;->imgPath:Ljava/lang/String;

    .line 222
    iput-object p3, p0, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;->mContext:Landroid/content/Context;

    .line 223
    iput-object p2, p0, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;->imgPath:Ljava/lang/String;

    .line 224
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "params"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;->ecb:Lcom/s0up/goomanager/ExtendedCommandBuilder;

    iget-object v1, p0, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;->imgPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/s0up/goomanager/ExtendedCommandBuilder;->installRecoveryImg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;->result:Ljava/lang/String;

    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 235
    iget-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    const-string v1, "Recovery has been installed!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 236
    iget-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    invoke-virtual {v0}, Lcom/s0up/goomanager/GetRecoveryActivity;->finish()V

    .line 237
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 228
    iget-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Installing recovery image..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 230
    new-instance v0, Lcom/s0up/goomanager/ExtendedCommandBuilder;

    iget-object v1, p0, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/s0up/goomanager/ExtendedCommandBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;->ecb:Lcom/s0up/goomanager/ExtendedCommandBuilder;

    .line 231
    return-void
.end method
