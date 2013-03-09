.class public Lcom/s0up/goomanager/GetRecoveryActivity;
.super Landroid/app/Activity;
.source "GetRecoveryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s0up/goomanager/GetRecoveryActivity$ButtonListener;,
        Lcom/s0up/goomanager/GetRecoveryActivity$GetInstallCommand;,
        Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;,
        Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;
    }
.end annotation


# static fields
.field private static final DOMAIN:Ljava/lang/String; = "http://goo.im"

.field private static final JSON_PATH:Ljava/lang/String; = "http://goo.im/json2&action=recovery&ro_board="


# instance fields
.field private cancelDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field description:Ljava/lang/String;

.field private dialogListener:Landroid/content/DialogInterface$OnClickListener;

.field downloadLink:Ljava/lang/String;

.field private extras:Landroid/os/Bundle;

.field fileMd5:Ljava/lang/String;

.field fileName:Ljava/lang/String;

.field ro_board:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->ro_board:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->downloadLink:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->fileMd5:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->fileName:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->description:Ljava/lang/String;

    .line 246
    new-instance v0, Lcom/s0up/goomanager/GetRecoveryActivity$1;

    invoke-direct {v0, p0}, Lcom/s0up/goomanager/GetRecoveryActivity$1;-><init>(Lcom/s0up/goomanager/GetRecoveryActivity;)V

    iput-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->dialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 254
    new-instance v0, Lcom/s0up/goomanager/GetRecoveryActivity$2;

    invoke-direct {v0, p0}, Lcom/s0up/goomanager/GetRecoveryActivity$2;-><init>(Lcom/s0up/goomanager/GetRecoveryActivity;)V

    iput-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->cancelDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/s0up/goomanager/GetRecoveryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/GetRecoveryActivity;->processRecoveryJSON(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/s0up/goomanager/GetRecoveryActivity;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method private processRecoveryJSON(Ljava/lang/String;)V
    .locals 9
    .parameter "json"

    .prologue
    const/4 v8, 0x0

    .line 81
    const/4 v3, 0x0

    .line 83
    .local v3, jsonObj:Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .local v4, jsonObj:Lorg/json/JSONObject;
    move-object v3, v4

    .line 89
    .end local v4           #jsonObj:Lorg/json/JSONObject;
    .restart local v3       #jsonObj:Lorg/json/JSONObject;
    :goto_0
    if-eqz v3, :cond_0

    const-string v5, "path"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "md5"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "filename"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    :try_start_1
    const-string v5, "path"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->downloadLink:Ljava/lang/String;

    .line 93
    const-string v5, "md5"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->fileMd5:Ljava/lang/String;

    .line 94
    const-string v5, "filename"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->fileName:Ljava/lang/String;

    .line 95
    const-string v5, "description"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->description:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v5

    const-string v6, "recovery_description"

    iget-object v7, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->description:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/s0up/goomanager/Singleton;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v1, Lcom/s0up/goomanager/GetRecoveryActivity$4;

    invoke-direct {v1, p0}, Lcom/s0up/goomanager/GetRecoveryActivity$4;-><init>(Lcom/s0up/goomanager/GetRecoveryActivity;)V

    .line 118
    .local v1, dialogClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 120
    const-string v5, "Confirm download, reboot, and install"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Are you sure you would like to do this?\n\nBy clicking yes, the recovery will download and install.  Your device may reboot in the process.\n\nFilename: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    iget-object v6, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 122
    const-string v6, "Yes"

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 123
    const-string v6, "No"

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialogClickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    :goto_1
    return-void

    .line 84
    :catch_0
    move-exception v2

    .line 86
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {p0}, Lcom/s0up/goomanager/GetRecoveryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Unable to find a recovery for your device :( Check back later!"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 126
    .end local v2           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 128
    .restart local v2       #e:Lorg/json/JSONException;
    invoke-virtual {p0}, Lcom/s0up/goomanager/GetRecoveryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Unable to find a recovery for your device.\n Check back later!"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 129
    invoke-virtual {p0}, Lcom/s0up/goomanager/GetRecoveryActivity;->finish()V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v2, 0x7f03000a

    invoke-virtual {p0, v2}, Lcom/s0up/goomanager/GetRecoveryActivity;->setContentView(I)V

    .line 43
    new-instance v2, Lcom/s0up/goomanager/GetRecoveryActivity$GetInstallCommand;

    invoke-direct {v2, p0, v6}, Lcom/s0up/goomanager/GetRecoveryActivity$GetInstallCommand;-><init>(Lcom/s0up/goomanager/GetRecoveryActivity;Lcom/s0up/goomanager/GetRecoveryActivity$GetInstallCommand;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/s0up/goomanager/GetRecoveryActivity$GetInstallCommand;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    const-string v2, "ro.product.device"

    invoke-static {v2, v6}, Lcom/s0up/goomanager/ExtendedCommandBuilder;->getPropertyValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->ro_board:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/s0up/goomanager/GetRecoveryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->extras:Landroid/os/Bundle;

    .line 49
    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v2

    const-string v3, "ro_board"

    iget-object v4, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->ro_board:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/s0up/goomanager/Singleton;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->extras:Landroid/os/Bundle;

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->extras:Landroid/os/Bundle;

    const-string v3, "downloadedFile"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->extras:Landroid/os/Bundle;

    const-string v3, "downloadedFile"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    :cond_1
    new-instance v1, Lcom/s0up/goomanager/GetRecoveryActivity$3;

    invoke-direct {v1, p0}, Lcom/s0up/goomanager/GetRecoveryActivity$3;-><init>(Lcom/s0up/goomanager/GetRecoveryActivity;)V

    .line 71
    .local v1, dialogClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 73
    const-string v2, "Confirm Recovery Install"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 74
    const-string v2, "Are you sure you would like to do this?\nThis will download and write a recovery image to your device.\n"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 75
    const-string v3, "Yes"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 76
    const-string v3, "No"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 79
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialogClickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 136
    iget-object v4, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->extras:Landroid/os/Bundle;

    const-string v5, "downloadedFile"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, downloadedFile:Ljava/lang/String;
    iget-object v4, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->extras:Landroid/os/Bundle;

    const-string v5, "is_img"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 138
    .local v2, is_img:Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    iget-object v4, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->extras:Landroid/os/Bundle;

    const-string v5, "downloadedFile"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->extras:Landroid/os/Bundle;

    const-string v5, "downloadedFile"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 141
    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v4

    const-string v5, "recovery_description"

    invoke-virtual {v4, v5}, Lcom/s0up/goomanager/Singleton;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v4

    const-string v5, "recovery_description"

    invoke-virtual {v4, v5}, Lcom/s0up/goomanager/Singleton;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 143
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const-string v4, "Your device may require manual installation"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 147
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 148
    .local v3, wv:Landroid/webkit/WebView;
    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v4

    const-string v5, "recovery_description"

    invoke-virtual {v4, v5}, Lcom/s0up/goomanager/Singleton;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/html"

    const-string v6, "utf-8"

    invoke-virtual {v3, v4, v5, v6}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3, v7}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 150
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 153
    const-string v4, "Cancel recovery install"

    iget-object v5, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->cancelDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    const-string v4, "Take me to the manual install page"

    iget-object v5, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->dialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 167
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v3           #wv:Landroid/webkit/WebView;
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    new-instance v4, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;

    iget-object v5, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->extras:Landroid/os/Bundle;

    const-string v6, "downloadedFile"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, p0}, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;-><init>(Lcom/s0up/goomanager/GetRecoveryActivity;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/s0up/goomanager/GetRecoveryActivity$InstallRecoveryImg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 161
    :cond_2
    iget-object v4, p0, Lcom/s0up/goomanager/GetRecoveryActivity;->extras:Landroid/os/Bundle;

    const-string v5, "downloadedFile"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/s0up/goomanager/ExtendedCommandBuilder;->installRecovery(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/s0up/goomanager/GetRecoveryActivity;->finish()V

    goto :goto_0
.end method
