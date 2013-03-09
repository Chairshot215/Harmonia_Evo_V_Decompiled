.class public Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;
.super Landroid/app/Activity;
.source "NewAlbumActivity.java"


# static fields
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field private static final EXTRA_AUTH_TOKEN:Ljava/lang/String; = "auth_token"

.field private static final PREFS_NAME:Ljava/lang/String; = "PicasaPrefs"

.field private static final PUBLIC:Ljava/lang/String; = "public"

.field private static final STATE_LAST_ALBUM_ACCESS:Ljava/lang/String; = "last_album_access"

.field private static final UNLISTED:Ljava/lang/String; = "private"


# instance fields
.field private access:Ljava/lang/String;

.field private account:Ljava/lang/String;

.field private albumAccessId:I

.field private authToken:Ljava/lang/String;

.field final callbackHandler:Landroid/os/Handler;

.field private cancelListener:Landroid/view/View$OnClickListener;

.field final createAlbumFail:Ljava/lang/Runnable;

.field final createAlbumSuccess:Ljava/lang/Runnable;

.field private createListener:Landroid/view/View$OnClickListener;

.field private newAlbum:Lcom/google/android/apps/uploader/clients/picasa/Album;

.field final problemWithAccountFail:Ljava/lang/Runnable;

.field private progressSpinner:Landroid/app/ProgressDialog;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->callbackHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$1;-><init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->createAlbumSuccess:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$2;-><init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->createAlbumFail:Ljava/lang/Runnable;

    .line 91
    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$3;-><init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->problemWithAccountFail:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$5;-><init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->createListener:Landroid/view/View$OnClickListener;

    .line 227
    new-instance v0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$6;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$6;-><init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->cancelListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->createSucceeded()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->createFailed()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->problemWithAccount()V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;Lcom/google/android/apps/uploader/clients/picasa/Album;)Lcom/google/android/apps/uploader/clients/picasa/Album;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->newAlbum:Lcom/google/android/apps/uploader/clients/picasa/Album;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->createAlbum()V

    return-void
.end method

.method private createAlbum()V
    .locals 7

    .prologue
    .line 118
    const-string v1, "MediaUploader"

    const-string v2, "Called create album"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const v1, 0x7f080002

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->albumAccessId:I

    .line 122
    iget v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->albumAccessId:I

    const v2, 0x7f080003

    if-ne v1, v2, :cond_0

    .line 123
    const-string v1, "public"

    iput-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->access:Ljava/lang/String;

    .line 129
    :goto_0
    const-string v1, "PicasaPrefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 130
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 131
    const-string v2, "last_album_access"

    iget v3, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->albumAccessId:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    const v1, 0x7f080001

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->title:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->showBadAlbumTitleMessage()V

    .line 171
    :goto_1
    return-void

    .line 125
    :cond_0
    const-string v1, "private"

    iput-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->access:Ljava/lang/String;

    goto :goto_0

    .line 142
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->showProgressDialog(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/apps/uploader/UploaderApplication;

    move-object v3, v0

    .line 145
    new-instance v1, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;

    invoke-virtual {v3}, Lcom/google/android/apps/uploader/UploaderApplication;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/uploader/clients/picasa/GDataPicasaConnector;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 147
    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->account:Ljava/lang/String;

    const-string v4, "lh2"

    invoke-virtual {v3, v4}, Lcom/google/android/apps/uploader/UploaderApplication;->getAuthorizer(Ljava/lang/String;)Lcom/google/android/apps/uploader/Authorizer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->access:Ljava/lang/String;

    new-instance v6, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$4;

    invoke-direct {v6, p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$4;-><init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V

    invoke-interface/range {v1 .. v6}, Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector;->createAlbum(Ljava/lang/String;Lcom/google/android/apps/uploader/Authorizer;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;)V

    goto :goto_1
.end method

.method private createFailed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->showProgressDialog(Z)V

    .line 212
    const v0, 0x7f06000e

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 213
    return-void
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v1, "auth_token"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    return-object v0
.end method

.method private createSucceeded()V
    .locals 3

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->showProgressDialog(Z)V

    .line 195
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/uploader/clients/picasa/AlbumProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->newAlbum:Lcom/google/android/apps/uploader/clients/picasa/Album;

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/clients/picasa/Album;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 200
    const-string v1, "_id"

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->newAlbum:Lcom/google/android/apps/uploader/clients/picasa/Album;

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/clients/picasa/Album;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->setResult(ILandroid/content/Intent;)V

    .line 202
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->finish()V

    .line 203
    return-void
.end method

.method private problemWithAccount()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->showProgressDialog(Z)V

    .line 217
    const v0, 0x7f06001e

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 218
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->finish()V

    .line 219
    return-void
.end method

.method private showBadAlbumTitleMessage()V
    .locals 2

    .prologue
    .line 185
    const v0, 0x7f06000f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    return-void
.end method

.method private showProgressDialog(Z)V
    .locals 2
    .parameter

    .prologue
    .line 174
    if-eqz p1, :cond_1

    .line 175
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->progressSpinner:Landroid/app/ProgressDialog;

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->progressSpinner:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->progressSpinner:Landroid/app/ProgressDialog;

    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->progressSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->progressSpinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->progressSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const-string v0, "MediaUploader"

    const-string v1, "Created NewAlbumActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->setContentView(I)V

    .line 105
    const-string v0, "PicasaPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    const-string v1, "last_album_access"

    const v2, 0x7f080003

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->albumAccessId:I

    .line 109
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->albumAccessId:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 111
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->createListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->account:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->authToken:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->account:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->authToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    const-string v0, "MediaUploader"

    const-string v1, "NewAlbumActivity no account."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->finish()V

    .line 76
    :cond_1
    return-void
.end method
