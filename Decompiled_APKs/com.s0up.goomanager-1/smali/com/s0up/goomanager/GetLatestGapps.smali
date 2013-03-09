.class public Lcom/s0up/goomanager/GetLatestGapps;
.super Landroid/os/AsyncTask;
.source "GetLatestGapps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/s0up/goomanager/GetLatestGapps;->context:Landroid/content/Context;

    .line 19
    return-void
.end method

.method static synthetic access$2(Lcom/s0up/goomanager/GetLatestGapps;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/s0up/goomanager/GetLatestGapps;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/GetLatestGapps;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5
    .parameter "result"

    .prologue
    .line 29
    new-instance v2, Lcom/s0up/goomanager/WebRequest;

    invoke-direct {v2}, Lcom/s0up/goomanager/WebRequest;-><init>()V

    .line 30
    .local v2, webReq:Lcom/s0up/goomanager/WebRequest;
    const-string v0, "GB"

    .line 32
    .local v0, androidVersion:Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 33
    const-string v0, "ICS"

    .line 35
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 36
    const-string v0, "JB"

    .line 38
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://goo.im/json2&action=gapps_update&gapps_platform="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&gapps_addon_version=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/s0up/goomanager/WebRequest;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, json:Ljava/lang/String;
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/GetLatestGapps;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 11
    .parameter "json"

    .prologue
    .line 43
    iget-object v9, p0, Lcom/s0up/goomanager/GetLatestGapps;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->cancel()V

    .line 44
    if-eqz p1, :cond_0

    const-string v9, ""

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 46
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    .local v3, fileData:Lorg/json/JSONObject;
    const-string v9, "path"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, pathLink:Ljava/lang/String;
    const-string v9, "filename"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 50
    .local v8, pathText:Ljava/lang/String;
    const-string v9, "description"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, fileDescription:Ljava/lang/String;
    const-string v9, "md5"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, fileMd5:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    iget-object v9, p0, Lcom/s0up/goomanager/GetLatestGapps;->context:Landroid/content/Context;

    const-class v10, Lcom/s0up/goomanager/DownloadActivity;

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v6, i:Landroid/content/Intent;
    const-string v9, "pathLink"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v9, "pathText"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v9, "fileMd5"

    invoke-virtual {v6, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v9, "fileDescription"

    invoke-virtual {v6, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    new-instance v1, Lcom/s0up/goomanager/GetLatestGapps$1;

    invoke-direct {v1, p0, v6}, Lcom/s0up/goomanager/GetLatestGapps$1;-><init>(Lcom/s0up/goomanager/GetLatestGapps;Landroid/content/Intent;)V

    .line 75
    .local v1, dialogClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/s0up/goomanager/GetLatestGapps;->context:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 77
    const-string v9, "Download latest google apps?"

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 78
    const-string v9, "Would you like to download the latest google apps for your device?"

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 79
    const-string v10, "Yes"

    invoke-virtual {v9, v10, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 80
    const-string v10, "No"

    invoke-virtual {v9, v10, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialogClickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v3           #fileData:Lorg/json/JSONObject;
    .end local v4           #fileDescription:Ljava/lang/String;
    .end local v5           #fileMd5:Ljava/lang/String;
    .end local v6           #i:Landroid/content/Intent;
    .end local v7           #pathLink:Ljava/lang/String;
    .end local v8           #pathText:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/s0up/goomanager/GetLatestGapps;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s0up/goomanager/GetLatestGapps;->dialog:Landroid/app/ProgressDialog;

    .line 23
    iget-object v0, p0, Lcom/s0up/goomanager/GetLatestGapps;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Requesting google apps listing"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/s0up/goomanager/GetLatestGapps;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Requesting google apps information for your device..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/s0up/goomanager/GetLatestGapps;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 26
    return-void
.end method
