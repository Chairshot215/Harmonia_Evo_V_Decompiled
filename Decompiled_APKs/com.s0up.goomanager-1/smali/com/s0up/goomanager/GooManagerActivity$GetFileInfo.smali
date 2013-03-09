.class Lcom/s0up/goomanager/GooManagerActivity$GetFileInfo;
.super Landroid/os/AsyncTask;
.source "GooManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/GooManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetFileInfo"
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

.field final synthetic this$0:Lcom/s0up/goomanager/GooManagerActivity;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/s0up/goomanager/GooManagerActivity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "url"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/s0up/goomanager/GooManagerActivity$GetFileInfo;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 329
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s0up/goomanager/GooManagerActivity$GetFileInfo;->dialog:Landroid/app/ProgressDialog;

    .line 331
    iput-object p2, p0, Lcom/s0up/goomanager/GooManagerActivity$GetFileInfo;->url:Ljava/lang/String;

    .line 332
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/GooManagerActivity$GetFileInfo;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "params"

    .prologue
    .line 370
    new-instance v1, Lcom/s0up/goomanager/WebRequest;

    invoke-direct {v1}, Lcom/s0up/goomanager/WebRequest;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://goo.im/json2&action=info&path="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/s0up/goomanager/GooManagerActivity$GetFileInfo;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s0up/goomanager/WebRequest;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, json:Ljava/lang/String;
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/GooManagerActivity$GetFileInfo;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 10
    .parameter "result"

    .prologue
    const/4 v9, 0x1

    .line 335
    iget-object v7, p0, Lcom/s0up/goomanager/GooManagerActivity$GetFileInfo;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 336
    if-eqz p1, :cond_0

    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 338
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 339
    .local v2, fileInfo:Lorg/json/JSONObject;
    const-string v7, "path"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 340
    .local v5, pathLink:Ljava/lang/String;
    const-string v7, "filename"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 341
    .local v6, pathText:Ljava/lang/String;
    const-string v7, "description"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, fileDescription:Ljava/lang/String;
    const-string v7, "md5"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, fileMd5:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/s0up/goomanager/GooManagerActivity$GetFileInfo;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    const-class v8, Lcom/s0up/goomanager/DownloadActivity;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 345
    .local v4, i:Landroid/content/Intent;
    const-string v7, "pathLink"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v7, "pathText"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v7, "fileMd5"

    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v7, "fileDescription"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v7, p0, Lcom/s0up/goomanager/GooManagerActivity$GetFileInfo;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    invoke-virtual {v7, v4}, Lcom/s0up/goomanager/GooManagerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .end local v1           #fileDescription:Ljava/lang/String;
    .end local v2           #fileInfo:Lorg/json/JSONObject;
    .end local v3           #fileMd5:Ljava/lang/String;
    .end local v4           #i:Landroid/content/Intent;
    .end local v5           #pathLink:Ljava/lang/String;
    .end local v6           #pathText:Ljava/lang/String;
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Lorg/json/JSONException;
    iget-object v7, p0, Lcom/s0up/goomanager/GooManagerActivity$GetFileInfo;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    const-string v8, "Unable to retrieve file information"

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 354
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 357
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    iget-object v7, p0, Lcom/s0up/goomanager/GooManagerActivity$GetFileInfo;->this$0:Lcom/s0up/goomanager/GooManagerActivity;

    const-string v8, "Unable to retrieve file information"

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/s0up/goomanager/GooManagerActivity$GetFileInfo;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Please wait"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/s0up/goomanager/GooManagerActivity$GetFileInfo;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Requesting file information..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/s0up/goomanager/GooManagerActivity$GetFileInfo;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 365
    iget-object v0, p0, Lcom/s0up/goomanager/GooManagerActivity$GetFileInfo;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 366
    return-void
.end method
