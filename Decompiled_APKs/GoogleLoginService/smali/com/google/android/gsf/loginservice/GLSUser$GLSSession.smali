.class public Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
.super Ljava/lang/Object;
.source "GLSUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/loginservice/GLSUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GLSSession"
.end annotation


# instance fields
.field public mAccessToken:Ljava/lang/String;

.field public mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

.field public mAccountAuthenticatorResponseCalled:Z

.field public mAccountManagerOptions:Landroid/os/Bundle;

.field public mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/loginservice/BaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field public mAllowGooglePlus:Z

.field public mCallingUID:I

.field public mCreatingAccount:Z

.field public mDetail:Ljava/lang/String;

.field public mError:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public mHasGooglePlus:Z

.field public mIsNewAccount:Z

.field public mKey:Ljava/lang/String;

.field public mNameActivityCompleted:Z

.field public mNeedsCreditCard:Z

.field public mPermission:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPhotoActivityCompleted:Z

.field public mProfilePhoto:Landroid/graphics/Bitmap;

.field public mProfileResult:I

.field public mSecondaryEmail:Ljava/lang/String;

.field public mSecurityAnswer:Ljava/lang/String;

.field public mSecurityQuestion:Ljava/lang/String;

.field public mSetupWizard:Z

.field public mTermsOfServiceShown:Z

.field public mUrl:Ljava/lang/String;

.field public mUserData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mUserSelectedGooglePlus:Z

.field public mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountAuthenticatorResponseCalled:Z

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAllowGooglePlus:Z

    .line 244
    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mHasGooglePlus:Z

    .line 247
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mProfileResult:I

    .line 252
    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    .line 266
    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mTermsOfServiceShown:Z

    .line 274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mActivities:Ljava/util/List;

    .line 295
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mKey:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public static fromBundle(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    .locals 7
    .parameter "ctx"
    .parameter "sessionId"
    .parameter "b"

    .prologue
    .line 348
    new-instance v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    invoke-direct {v3, p1}, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;-><init>(Ljava/lang/String;)V

    .line 349
    .local v3, s:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    invoke-static {p0}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v4, "username"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    .line 353
    const-string v4, "callingUID"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCallingUID:I

    .line 354
    const-string v4, "error"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, err:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v4, 0x0

    :goto_0
    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mError:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 356
    const-string v4, "detail"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mDetail:Ljava/lang/String;

    .line 357
    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->URL:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUrl:Ljava/lang/String;

    .line 358
    const-string v4, "permission"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mPermission:Ljava/util/ArrayList;

    .line 359
    const-string v4, "accountAuthenticatorResponse"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/accounts/AccountAuthenticatorResponse;

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 361
    const-string v4, "accountAuthenticatorResponseCalled"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountAuthenticatorResponseCalled:Z

    .line 363
    const-string v4, "key"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mKey:Ljava/lang/String;

    .line 364
    const-string v4, "isNewAccount"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mIsNewAccount:Z

    .line 365
    const-string v4, "setupWizard"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSetupWizard:Z

    .line 366
    const-string v4, "termsOfServiceShown"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mTermsOfServiceShown:Z

    .line 367
    const-string v4, "nameActivityCompleted"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mNameActivityCompleted:Z

    .line 368
    const-string v4, "photoActivityCompleted"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mPhotoActivityCompleted:Z

    .line 369
    const-string v4, "secondaryEmail"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSecondaryEmail:Ljava/lang/String;

    .line 370
    const-string v4, "securityQuestion"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSecurityQuestion:Ljava/lang/String;

    .line 371
    const-string v4, "securityAnswer"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSecurityAnswer:Ljava/lang/String;

    .line 372
    const-string v4, "accessToken"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccessToken:Ljava/lang/String;

    .line 373
    const-string v4, "accountManagerOptions"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    .line 374
    const-string v4, "userSelectedGooglePlus"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    .line 375
    const-string v4, "creatingAccount"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCreatingAccount:Z

    .line 376
    const-string v4, "allowGooglePlus"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAllowGooglePlus:Z

    .line 377
    const-string v4, "hasGooglePlus"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mHasGooglePlus:Z

    .line 378
    const-string v4, "profileResult"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mProfileResult:I

    .line 379
    const-string v4, "url"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUrl:Ljava/lang/String;

    .line 381
    const-string v4, "userData"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 382
    .local v2, kv:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_1

    .line 383
    iget-object v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    mul-int/lit8 v5, v1, 0x2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 355
    .end local v1           #i:I
    .end local v2           #kv:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromJSON(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v4

    goto/16 :goto_0

    .line 388
    .restart local v1       #i:I
    .restart local v2       #kv:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string v4, "needsCreditCard"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mNeedsCreditCard:Z

    .line 390
    return-object v3
.end method


# virtual methods
.method public addSession(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 299
    const-string v0, "session"

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    return-void
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 6
    .parameter "o"

    .prologue
    .line 303
    const-string v4, "username"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v4, "callingUID"

    iget v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCallingUID:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mError:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-eqz v4, :cond_0

    .line 306
    const-string v4, "error"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mError:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    invoke-virtual {v5}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    const-string v4, "detail"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mDetail:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->URL:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v4}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v4, "permission"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mPermission:Ljava/util/ArrayList;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 311
    const-string v4, "accountAuthenticatorResponse"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 313
    const-string v4, "accountAuthenticatorResponseCalled"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountAuthenticatorResponseCalled:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 315
    const-string v4, "key"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v4, "isNewAccount"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mIsNewAccount:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 317
    const-string v4, "setupWizard"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSetupWizard:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 318
    const-string v4, "termsOfServiceShown"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mTermsOfServiceShown:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    const-string v4, "nameActivityCompleted"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mNameActivityCompleted:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 320
    const-string v4, "photoActivityCompleted"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mPhotoActivityCompleted:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 321
    const-string v4, "secondaryEmail"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSecondaryEmail:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v4, "securityQuestion"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSecurityQuestion:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v4, "securityAnwser"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSecurityAnswer:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v4, "accessToken"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccessToken:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v4, "accountManagerOptions"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 326
    const-string v4, "userSelectedGooglePlus"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserSelectedGooglePlus:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 327
    const-string v4, "creatingAccount"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCreatingAccount:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 328
    const-string v4, "allowGooglePlus"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAllowGooglePlus:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 329
    const-string v4, "hasGooglePlus"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mHasGooglePlus:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 330
    const-string v4, "profileResult"

    iget v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mProfileResult:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 331
    const-string v4, "url"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v2, userData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 335
    .local v1, k:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 336
    .local v3, v:Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 337
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    check-cast v3, Ljava/lang/String;

    .end local v3           #v:Ljava/lang/Object;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    .end local v1           #k:Ljava/lang/String;
    :cond_2
    const-string v4, "userData"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 343
    const-string v4, "needsCreditCard"

    iget-boolean v5, p0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mNeedsCreditCard:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 345
    return-void
.end method
