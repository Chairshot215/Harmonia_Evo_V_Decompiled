.class Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;
.super Landroid/os/AsyncTask;
.source "GetRecoveryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/GetRecoveryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetRecoveryFromUrl"
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

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/s0up/goomanager/GetRecoveryActivity;


# direct methods
.method private constructor <init>(Lcom/s0up/goomanager/GetRecoveryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "url"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;->mUrl:Ljava/lang/String;

    .line 173
    return-void
.end method

.method synthetic constructor <init>(Lcom/s0up/goomanager/GetRecoveryActivity;Ljava/lang/String;Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;-><init>(Lcom/s0up/goomanager/GetRecoveryActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    .line 194
    new-instance v1, Lcom/s0up/goomanager/WebRequest;

    invoke-direct {v1}, Lcom/s0up/goomanager/WebRequest;-><init>()V

    .line 195
    .local v1, web:Lcom/s0up/goomanager/WebRequest;
    iget-object v2, p0, Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/s0up/goomanager/WebRequest;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 185
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    invoke-virtual {v0}, Lcom/s0up/goomanager/GetRecoveryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "No recoveries were found for your device"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    iget-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    invoke-virtual {v0}, Lcom/s0up/goomanager/GetRecoveryActivity;->finish()V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    #calls: Lcom/s0up/goomanager/GetRecoveryActivity;->processRecoveryJSON(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/s0up/goomanager/GetRecoveryActivity;->access$0(Lcom/s0up/goomanager/GetRecoveryActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;->dialog:Landroid/app/ProgressDialog;

    .line 177
    iget-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 178
    iget-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "OpenRecoveryScript recovery download"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Looking for recoveries..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 181
    return-void
.end method
