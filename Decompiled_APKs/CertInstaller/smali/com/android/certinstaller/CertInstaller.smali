.class public Lcom/android/certinstaller/CertInstaller;
.super Landroid/app/Activity;
.source "CertInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/certinstaller/CertInstaller$OnExtractionDoneAction;,
        Lcom/android/certinstaller/CertInstaller$InstallOthersAction;,
        Lcom/android/certinstaller/CertInstaller$Pkcs12ExtractAction;,
        Lcom/android/certinstaller/CertInstaller$MyAction;,
        Lcom/android/certinstaller/CertInstaller$MyMap;,
        Lcom/android/certinstaller/CertInstaller$InstallCaCertsToKeyChainTask;
    }
.end annotation


# static fields
.field private static final NAME_CREDENTIAL_DIALOG:I = 0x1

.field private static final NEXT_ACTION_KEY:Ljava/lang/String; = "na"

.field private static final PKCS12_PASSWORD_DIALOG:I = 0x2

.field private static final PKEY_MAP_KEY:Ljava/lang/String; = "PKEY_MAP"

.field private static final PROGRESS_BAR_DIALOG:I = 0x3

.field private static final REQUEST_SYSTEM_INSTALL_CODE:I = 0x1

.field private static final REQUEST_SYSTEM_UNLOCK_CODE:I = 0x2

.field private static final STATE_INIT:I = 0x1

.field private static final STATE_PAUSED:I = 0x3

.field private static final STATE_RUNNING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CertInstaller"


# instance fields
.field private mCredentials:Lcom/android/certinstaller/CredentialHelper;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mNameEmptyError:Z

.field private mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

.field private mState:I

.field private final mView:Lcom/android/certinstaller/ViewHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mKeyStore:Landroid/security/KeyStore;

    .line 69
    new-instance v0, Lcom/android/certinstaller/ViewHelper;

    invoke-direct {v0}, Lcom/android/certinstaller/ViewHelper;-><init>()V

    iput-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/certinstaller/CertInstaller;->mNameEmptyError:Z

    .line 495
    return-void
.end method

.method static synthetic access$200(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/CredentialHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/certinstaller/CertInstaller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/CertInstaller$MyAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/certinstaller/CertInstaller;Lcom/android/certinstaller/CertInstaller$MyAction;)Lcom/android/certinstaller/CertInstaller$MyAction;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/certinstaller/CertInstaller;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/certinstaller/CertInstaller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/certinstaller/CertInstaller;->mNameEmptyError:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/ViewHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    return-object v0
.end method

.method private createCredentialHelper(Landroid/content/Intent;)Lcom/android/certinstaller/CredentialHelper;
    .locals 3
    .parameter "intent"

    .prologue
    .line 79
    :try_start_0
    new-instance v1, Lcom/android/certinstaller/CredentialHelper;

    invoke-direct {v1, p1}, Lcom/android/certinstaller/CredentialHelper;-><init>(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-object v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "CertInstaller"

    const-string v2, "createCredentialHelper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    const v1, 0x7f06001a

    invoke-direct {p0, v1}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    .line 83
    new-instance v1, Lcom/android/certinstaller/CredentialHelper;

    invoke-direct {v1}, Lcom/android/certinstaller/CredentialHelper;-><init>()V

    goto :goto_0
.end method

.method private createNameCredentialDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 387
    const/high16 v3, 0x7f02

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 388
    .local v2, view:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    invoke-virtual {v3, v2}, Lcom/android/certinstaller/ViewHelper;->setView(Landroid/view/View;)V

    .line 389
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const v4, 0x7f080002

    iget-object v5, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v5, p0}, Lcom/android/certinstaller/CredentialHelper;->getDescription(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/certinstaller/ViewHelper;->setText(ILjava/lang/String;)V

    .line 390
    iget-boolean v3, p0, Lcom/android/certinstaller/CertInstaller;->mNameEmptyError:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const v4, 0x7f060014

    invoke-virtual {v3, v4}, Lcom/android/certinstaller/ViewHelper;->showError(I)V

    .line 391
    :cond_0
    const v3, 0x7f080001

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 393
    .local v1, nameInput:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 394
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060009

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/certinstaller/CertInstaller$6;

    invoke-direct {v5, p0}, Lcom/android/certinstaller/CertInstaller$6;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/certinstaller/CertInstaller$5;

    invoke-direct {v5, p0}, Lcom/android/certinstaller/CertInstaller$5;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 428
    .local v0, d:Landroid/app/Dialog;
    new-instance v3, Lcom/android/certinstaller/CertInstaller$7;

    invoke-direct {v3, p0}, Lcom/android/certinstaller/CertInstaller$7;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 434
    return-object v0
.end method

.method private createPkcs12PasswordDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 345
    const v3, 0x7f020001

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 346
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    invoke-virtual {v3, v2}, Lcom/android/certinstaller/ViewHelper;->setView(Landroid/view/View;)V

    .line 347
    iget-boolean v3, p0, Lcom/android/certinstaller/CertInstaller;->mNameEmptyError:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const v4, 0x7f060013

    invoke-virtual {v3, v4}, Lcom/android/certinstaller/ViewHelper;->showError(I)V

    .line 349
    :cond_0
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v3}, Lcom/android/certinstaller/CredentialHelper;->getName()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, title:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f060006

    invoke-virtual {p0, v3}, Lcom/android/certinstaller/CertInstaller;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 353
    :goto_0
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/certinstaller/CertInstaller$3;

    invoke-direct {v5, p0}, Lcom/android/certinstaller/CertInstaller$3;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/certinstaller/CertInstaller$2;

    invoke-direct {v5, p0}, Lcom/android/certinstaller/CertInstaller$2;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 377
    .local v0, d:Landroid/app/Dialog;
    new-instance v3, Lcom/android/certinstaller/CertInstaller$4;

    invoke-direct {v3, p0}, Lcom/android/certinstaller/CertInstaller$4;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 383
    return-object v0

    .line 350
    .end local v0           #d:Landroid/app/Dialog;
    :cond_1
    const v3, 0x7f060008

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/certinstaller/CertInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getDefaultName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 438
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v2}, Lcom/android/certinstaller/CredentialHelper;->getName()Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    const/4 v2, 0x0

    .line 445
    :goto_0
    return-object v2

    .line 443
    :cond_0
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 444
    .local v0, index:I
    if-lez v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 445
    goto :goto_0
.end method

.method private getPkeyMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mKeyStore:Landroid/security/KeyStore;

    const-string v3, "PKEY_MAP"

    invoke-virtual {v2, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 303
    .local v0, bytes:[B
    if-eqz v0, :cond_0

    .line 304
    invoke-static {v0}, Lcom/android/certinstaller/Util;->fromBytes([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 306
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    if-eqz v1, :cond_0

    .line 308
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/certinstaller/CertInstaller$MyMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/certinstaller/CertInstaller$MyMap;-><init>(Lcom/android/certinstaller/CertInstaller$1;)V

    goto :goto_0
.end method

.method private nameCredential()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0}, Lcom/android/certinstaller/CredentialHelper;->hasAnyForSystemInstall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    const v0, 0x7f060019

    invoke-direct {p0, v0}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertInstaller;->showDialog(I)V

    goto :goto_0
.end method

.method private needsKeyStoreAccess()Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0}, Lcom/android/certinstaller/CredentialHelper;->hasWapiAsCertificate()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0}, Lcom/android/certinstaller/CredentialHelper;->hasWapiUserCertificate()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0}, Lcom/android/certinstaller/CredentialHelper;->hasKeyPair()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0}, Lcom/android/certinstaller/CredentialHelper;->hasUserCertificate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveKeyPair()V
    .locals 6

    .prologue
    .line 280
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    const-string v4, "PKEY"

    invoke-virtual {v3, v4}, Lcom/android/certinstaller/CredentialHelper;->getData(Ljava/lang/String;)[B

    move-result-object v2

    .line 281
    .local v2, privatekey:[B
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    const-string v4, "KEY"

    invoke-virtual {v3, v4}, Lcom/android/certinstaller/CredentialHelper;->getData(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/certinstaller/Util;->toMd5([B)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, key:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->getPkeyMap()Ljava/util/Map;

    move-result-object v1

    .line 283
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-direct {p0, v1}, Lcom/android/certinstaller/CertInstaller;->savePkeyMap(Ljava/util/Map;)V

    .line 285
    const-string v3, "CertInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save privatekey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " --> #keys:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method private savePkeyMap(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mKeyStore:Landroid/security/KeyStore;

    const-string v2, "PKEY_MAP"

    invoke-virtual {v1, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    const-string v1, "CertInstaller"

    const-string v2, "savePkeyMap(): failed to delete pkey map"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-static {p1}, Lcom/android/certinstaller/Util;->toBytes(Ljava/lang/Object;)[B

    move-result-object v0

    .line 296
    .local v0, bytes:[B
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mKeyStore:Landroid/security/KeyStore;

    const-string v2, "PKEY_MAP"

    invoke-virtual {v1, v2, v0}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    const-string v1, "CertInstaller"

    const-string v2, "savePkeyMap(): failed to write pkey map"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendUnlockKeyStoreIntent()V
    .locals 5

    .prologue
    .line 262
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.credentials.UNLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.CredentialStorage"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/certinstaller/CertInstaller;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "CertInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "systemInstall(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private toastErrorAndFinish(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 450
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 451
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstaller;->finish()V

    .line 452
    return-void
.end method


# virtual methods
.method extractPkcs12InBackground(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 313
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertInstaller;->showDialog(I)V

    .line 315
    new-instance v0, Lcom/android/certinstaller/CertInstaller$1;

    invoke-direct {v0, p0, p1}, Lcom/android/certinstaller/CertInstaller$1;-><init>(Lcom/android/certinstaller/CertInstaller;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/certinstaller/CertInstaller$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 329
    return-void
.end method

.method installOthers()V
    .locals 7

    .prologue
    .line 235
    iget-object v4, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v4}, Lcom/android/certinstaller/CredentialHelper;->hasKeyPair()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->saveKeyPair()V

    .line 237
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstaller;->finish()V

    .line 257
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v4, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v4}, Lcom/android/certinstaller/CredentialHelper;->getUserCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 240
    .local v0, cert:Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/certinstaller/Util;->toMd5([B)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, key:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->getPkeyMap()Ljava/util/Map;

    move-result-object v2

    .line 244
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 245
    .local v3, privatekey:[B
    if-eqz v3, :cond_2

    .line 246
    const-string v4, "CertInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found matched key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-direct {p0, v2}, Lcom/android/certinstaller/CertInstaller;->savePkeyMap(Ljava/util/Map;)V

    .line 250
    iget-object v4, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v4, v3}, Lcom/android/certinstaller/CredentialHelper;->setPrivateKey([B)V

    .line 255
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    .end local v3           #privatekey:[B
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->nameCredential()V

    goto :goto_0

    .line 252
    .restart local v1       #key:Ljava/lang/String;
    .restart local v2       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    .restart local v3       #privatekey:[B
    :cond_2
    const-string v4, "CertInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "didn\'t find matched private key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const v6, 0x7f060018

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 178
    if-ne p1, v4, :cond_3

    .line 179
    if-ne p2, v3, :cond_2

    .line 180
    const-string v0, "CertInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "credential is added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v2}, Lcom/android/certinstaller/CredentialHelper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const v0, 0x7f06001b

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v2}, Lcom/android/certinstaller/CredentialHelper;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/android/certinstaller/CertInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0}, Lcom/android/certinstaller/CredentialHelper;->hasCaCerts()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    new-instance v0, Lcom/android/certinstaller/CertInstaller$InstallCaCertsToKeyChainTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/certinstaller/CertInstaller$InstallCaCertsToKeyChainTask;-><init>(Lcom/android/certinstaller/CertInstaller;Lcom/android/certinstaller/CertInstaller$1;)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/certinstaller/CertInstaller$InstallCaCertsToKeyChainTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/certinstaller/CertInstaller;->setResult(I)V

    .line 207
    :goto_1
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstaller;->finish()V

    goto :goto_0

    .line 191
    :cond_2
    const-string v0, "CertInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "credential not saved, err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0, v6}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    goto :goto_1

    .line 194
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 195
    if-ne p2, v3, :cond_4

    .line 196
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    invoke-interface {v0, p0}, Lcom/android/certinstaller/CertInstaller$MyAction;->run(Lcom/android/certinstaller/CertInstaller;)V

    goto :goto_0

    .line 201
    :cond_4
    const-string v0, "CertInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "credential not saved, err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0, v6}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    goto :goto_1

    .line 205
    :cond_5
    const-string v0, "CertInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedStates"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/certinstaller/CertInstaller;->createCredentialHelper(Landroid/content/Intent;)Lcom/android/certinstaller/CredentialHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    .line 93
    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    .line 95
    iget v1, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    if-ne v1, v2, :cond_4

    .line 96
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v1}, Lcom/android/certinstaller/CredentialHelper;->containsAnyRawData()Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    const v1, 0x7f060019

    invoke-direct {p0, v1}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstaller;->finish()V

    .line 115
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 93
    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v1}, Lcom/android/certinstaller/CredentialHelper;->hasPkcs12KeyStore()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    invoke-virtual {p0, v3}, Lcom/android/certinstaller/CertInstaller;->showDialog(I)V

    goto :goto_1

    .line 102
    :cond_2
    new-instance v0, Lcom/android/certinstaller/CertInstaller$InstallOthersAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/certinstaller/CertInstaller$InstallOthersAction;-><init>(Lcom/android/certinstaller/CertInstaller$1;)V

    .line 103
    .local v0, action:Lcom/android/certinstaller/CertInstaller$MyAction;
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->needsKeyStoreAccess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->sendUnlockKeyStoreIntent()V

    .line 105
    iput-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    goto :goto_1

    .line 107
    :cond_3
    invoke-interface {v0, p0}, Lcom/android/certinstaller/CertInstaller$MyAction;->run(Lcom/android/certinstaller/CertInstaller;)V

    goto :goto_1

    .line 111
    .end local v0           #action:Lcom/android/certinstaller/CertInstaller$MyAction;
    :cond_4
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v1, p1}, Lcom/android/certinstaller/CredentialHelper;->onRestoreStates(Landroid/os/Bundle;)V

    .line 112
    const-string v1, "na"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/android/certinstaller/CertInstaller$MyAction;

    iput-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "dialogId"

    .prologue
    .line 157
    packed-switch p1, :pswitch_data_0

    .line 172
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 159
    :pswitch_0
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->createPkcs12PasswordDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 162
    :pswitch_1
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->createNameCredentialDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 165
    :pswitch_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f060007

    invoke-virtual {p0, v1}, Lcom/android/certinstaller/CertInstaller;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 167
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 168
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method onExtractionDone(Z)V
    .locals 4
    .parameter "success"

    .prologue
    const/4 v3, 0x2

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    .line 333
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertInstaller;->removeDialog(I)V

    .line 334
    if-eqz p1, :cond_0

    .line 335
    invoke-virtual {p0, v3}, Lcom/android/certinstaller/CertInstaller;->removeDialog(I)V

    .line 336
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->nameCredential()V

    .line 342
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const v1, 0x7f080003

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/certinstaller/ViewHelper;->setText(ILjava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const v1, 0x7f060012

    invoke-virtual {v0, v1}, Lcom/android/certinstaller/ViewHelper;->showError(I)V

    .line 340
    invoke-virtual {p0, v3}, Lcom/android/certinstaller/CertInstaller;->showDialog(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 143
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    .line 144
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 121
    iget v0, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 122
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    invoke-interface {v0, p0}, Lcom/android/certinstaller/CertInstaller$MyAction;->run(Lcom/android/certinstaller/CertInstaller;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outStates"

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 149
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0, p1}, Lcom/android/certinstaller/CredentialHelper;->onSaveStates(Landroid/os/Bundle;)V

    .line 150
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "na"

    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 153
    :cond_0
    return-void
.end method
