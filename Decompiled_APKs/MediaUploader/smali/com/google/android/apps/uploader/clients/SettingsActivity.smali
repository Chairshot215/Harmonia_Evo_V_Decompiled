.class public abstract Lcom/google/android/apps/uploader/clients/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# static fields
.field public static final EXTRA_PREFERRED_ACCOUNT:Ljava/lang/String; = "com.google.android.apps.uploader.extra.preferredAccount"

.field private static final LAST_ACCOUNT_PREF:Ljava/lang/String; = "last_account"

.field private static final MAX_UPLOAD_INFOS_PER_INTENT:I = 0xa

.field protected static final RES_CONFIRMATION_MULTIPLE:I = 0x5

.field protected static final RES_CONFIRMATION_SINGLE:I = 0x4

.field protected static final RES_EXPLANATION_LIMIT:I = 0x6

.field protected static final RES_FILE_TOO_LARGE_MESSAGE:I = 0x3

.field protected static final RES_MAIN_TITLE:I = 0x0

.field protected static final RES_MAX_FILE_SIZE:I = 0x2


# instance fields
.field private account:Ljava/lang/String;

.field private accountsSpinner:Landroid/widget/Spinner;

.field private addAccountListener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private application:Lcom/google/android/apps/uploader/UploaderApplication;

.field private authProvider:Lcom/google/android/apps/uploader/Authorizer;

.field private authToken:Ljava/lang/String;

.field private fetchAccountsListener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fetchAuthTokenListener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fileCount:I

.field private fileInfo:Lcom/google/android/apps/uploader/FileInfo;

.field private maxFileSize:J

.field private needsWifi:Z

.field private uploadingSpinner:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 198
    new-instance v0, Lcom/google/android/apps/uploader/clients/SettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity$5;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->fetchAccountsListener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;

    .line 236
    new-instance v0, Lcom/google/android/apps/uploader/clients/SettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity$6;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->fetchAuthTokenListener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;

    .line 258
    new-instance v0, Lcom/google/android/apps/uploader/clients/SettingsActivity$7;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity$7;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->addAccountListener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->accountsSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/uploader/clients/SettingsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->onAccountSelected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->account:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/uploader/clients/SettingsActivity;Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getMultipleUploadsIntents(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/uploader/clients/SettingsActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getSingleUploadIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->needsWifi:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Lcom/google/android/apps/uploader/UploaderApplication;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/uploader/clients/SettingsActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->showToastOnUiThread(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->uploadingSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->upload()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Lcom/google/android/apps/uploader/FileInfo;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->fileInfo:Lcom/google/android/apps/uploader/FileInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/uploader/clients/SettingsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->fileCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->addAccountListener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Lcom/google/android/apps/uploader/Authorizer;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->authProvider:Lcom/google/android/apps/uploader/Authorizer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/uploader/clients/SettingsActivity;[Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->initAccountsSpinner([Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->showAccountErrorToast()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/uploader/clients/SettingsActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/apps/uploader/clients/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->authToken:Ljava/lang/String;

    return-object p1
.end method

.method private getMultipleUploadsIntents(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 392
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    .line 393
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getAuthTokenType()Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 395
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getDestination()Ljava/lang/String;

    move-result-object v5

    .line 397
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 399
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->needsWifi:Z

    .line 400
    const/4 v1, 0x0

    move v9, v1

    move-object v10, v0

    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 401
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 402
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne v9, v0, :cond_2

    const/4 v0, 0x1

    move v11, v0

    .line 403
    :goto_1
    invoke-direct {p0, p1, v7}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->loadAndValidateFileInfo(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 404
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->fileInfo:Lcom/google/android/apps/uploader/FileInfo;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->account:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->fileInfo:Lcom/google/android/apps/uploader/FileInfo;

    invoke-virtual {p0, v4}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getRequestTemplate(Lcom/google/android/apps/uploader/FileInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/uploader/FileInfo;->toUploadInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/uploader/UploadInfo;

    move-result-object v0

    .line 406
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/uploader/UploaderApplication;->needsWifi(Lcom/google/android/apps/uploader/UploadInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->needsWifi:Z

    .line 411
    :cond_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    if-eqz v11, :cond_5

    .line 412
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/uploader/UploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 414
    const-string v1, "com.google.android.apps.uploader.action.UPLOAD_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string v1, "com.google.android.apps.uploader.extra.uploadInfo"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 416
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    if-nez v11, :cond_5

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 400
    :goto_2
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move-object v10, v0

    goto :goto_0

    .line 402
    :cond_2
    const/4 v0, 0x0

    move v11, v0

    goto :goto_1

    .line 425
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    move-object v0, v6

    .line 428
    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    move-object v0, v10

    goto :goto_2
.end method

.method private getSingleUploadIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 7
    .parameter

    .prologue
    .line 377
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/google/android/apps/uploader/UploadService;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    const-string v0, "com.google.android.apps.uploader.action.UPLOAD"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->fileInfo:Lcom/google/android/apps/uploader/FileInfo;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->account:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getAuthTokenType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->fileInfo:Lcom/google/android/apps/uploader/FileInfo;

    invoke-virtual {p0, v4}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getRequestTemplate(Lcom/google/android/apps/uploader/FileInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getDestination()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/uploader/FileInfo;->toUploadInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/uploader/UploadInfo;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/uploader/UploaderApplication;->needsWifi(Lcom/google/android/apps/uploader/UploadInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->needsWifi:Z

    .line 385
    const-string v1, "com.google.android.apps.uploader.extra.uploadInfo"

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 386
    return-object v6
.end method

.method private initAccountsSpinner([Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 294
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 298
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 300
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->accountsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 301
    if-ltz p2, :cond_0

    .line 302
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->accountsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->accountsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->accountsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->onAccountSelected(Ljava/lang/String;)V

    .line 310
    :cond_1
    return-void
.end method

.method private initSpinner()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 433
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->uploadingSpinner:Landroid/app/ProgressDialog;

    .line 434
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->uploadingSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 436
    const v0, 0x7f060018

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getResourceId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->account:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f060019

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->account:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->uploadingSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 444
    return-void
.end method

.method private loadAndValidateFileInfo(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 479
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->fileInfo:Lcom/google/android/apps/uploader/FileInfo;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Lcom/google/android/apps/uploader/FileInfo;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/FileInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->fileInfo:Lcom/google/android/apps/uploader/FileInfo;

    .line 482
    :cond_0
    iget-wide v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->maxFileSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getResourceId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->maxFileSize:J

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->fileInfo:Lcom/google/android/apps/uploader/FileInfo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/uploader/FileInfo;->retrieveFileProperties(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 488
    const v0, 0x7f06001c

    .line 494
    :goto_0
    if-ne v0, v4, :cond_3

    .line 495
    const/4 v0, 0x1

    .line 504
    :goto_1
    return v0

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->fileInfo:Lcom/google/android/apps/uploader/FileInfo;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/FileInfo;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->maxFileSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 491
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getResourceId(I)I

    move-result v0

    goto :goto_0

    .line 498
    :cond_3
    new-instance v1, Lcom/google/android/apps/uploader/clients/SettingsActivity$10;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity$10;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;I)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 504
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_0
.end method

.method private loadThumbnail()V
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/uploader/clients/SettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity$4;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 196
    return-void
.end method

.method private onAccountSelected(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->account:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    .line 278
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->account:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->authProvider:Lcom/google/android/apps/uploader/Authorizer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->account:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->fetchAuthTokenListener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;

    invoke-interface {v0, v1, p0, v2}, Lcom/google/android/apps/uploader/Authorizer;->fetchAuthToken(Ljava/lang/String;Landroid/app/Activity;Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;)V

    .line 281
    :cond_0
    return-void
.end method

.method private showAccountErrorToast()V
    .locals 1

    .prologue
    .line 447
    const v0, 0x7f06001d

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->showToastOnUiThread(I)V

    .line 448
    return-void
.end method

.method private showToastOnUiThread(I)V
    .locals 1
    .parameter

    .prologue
    .line 451
    new-instance v0, Lcom/google/android/apps/uploader/clients/SettingsActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/uploader/clients/SettingsActivity$9;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 457
    return-void
.end method

.method private upload()V
    .locals 2

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->initSpinner()V

    .line 332
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->uploadingSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 334
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;

    invoke-direct {v1, p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity$8;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 374
    return-void
.end method


# virtual methods
.method protected getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->account:Ljava/lang/String;

    return-object v0
.end method

.method protected getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getAuthTokenType()Ljava/lang/String;
.end method

.method protected abstract getContentView()Landroid/view/View;
.end method

.method protected abstract getDestination()Ljava/lang/String;
.end method

.method protected getFileCount()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->fileCount:I

    return v0
.end method

.method protected getFileInfo()Lcom/google/android/apps/uploader/FileInfo;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->fileInfo:Lcom/google/android/apps/uploader/FileInfo;

    return-object v0
.end method

.method protected abstract getRequestTemplate(Lcom/google/android/apps/uploader/FileInfo;)Ljava/lang/String;
.end method

.method public abstract getResourceId(I)I
.end method

.method protected abstract getUrl()Ljava/lang/String;
.end method

.method protected handleIntent()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    const-string v0, "MediaUploader"

    const-string v1, "EXTRA_STREAM Uri missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    move-object v1, v6

    move v2, v5

    .line 168
    :goto_0
    if-nez v2, :cond_4

    .line 169
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->loadAndValidateFileInfo(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v4

    .line 177
    :goto_1
    return v0

    .line 148
    :cond_0
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    iput v5, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->fileCount:I

    .line 150
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 151
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    move v2, v4

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_0

    .line 152
    :cond_1
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->fileCount:I

    .line 156
    iget v2, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->fileCount:I

    if-lez v2, :cond_2

    .line 157
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 158
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    move v2, v4

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_0

    .line 160
    :cond_2
    const-string v0, "MediaUploader"

    const-string v1, "Empty multiple intent."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    move-object v1, v6

    move v2, v5

    .line 161
    goto :goto_0

    .line 164
    :cond_3
    const-string v1, "MediaUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid intent action ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    move-object v1, v6

    move v2, v5

    .line 165
    goto :goto_0

    .line 173
    :cond_4
    const v0, 0x7f06001b

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v4

    .line 175
    goto :goto_1

    :cond_5
    move v0, v5

    .line 177
    goto :goto_1
.end method

.method protected onAccountChanged()V
    .locals 3

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 289
    const-string v1, "last_account"

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->account:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 291
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const-string v0, "MediaUploader"

    const-string v1, "Creating SettingsActivity."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->handleIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->finish()V

    .line 135
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->setContentView(Landroid/view/View;)V

    .line 101
    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->loadThumbnail()V

    .line 103
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->accountsSpinner:Landroid/widget/Spinner;

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->accountsSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/google/android/apps/uploader/clients/SettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity$1;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/UploaderApplication;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->getAuthTokenType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/UploaderApplication;->getAuthorizer(Ljava/lang/String;)Lcom/google/android/apps/uploader/Authorizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->authProvider:Lcom/google/android/apps/uploader/Authorizer;

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->authProvider:Lcom/google/android/apps/uploader/Authorizer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/SettingsActivity;->fetchAccountsListener:Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;

    invoke-interface {v0, v1}, Lcom/google/android/apps/uploader/Authorizer;->fetchAccounts(Lcom/google/android/apps/uploader/Authorizer$AuthorizationListener;)V

    .line 119
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 120
    new-instance v1, Lcom/google/android/apps/uploader/clients/SettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity$2;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 127
    new-instance v1, Lcom/google/android/apps/uploader/clients/SettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity$3;-><init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->setResult(I)V

    goto :goto_0
.end method

.method protected onUpload()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method
