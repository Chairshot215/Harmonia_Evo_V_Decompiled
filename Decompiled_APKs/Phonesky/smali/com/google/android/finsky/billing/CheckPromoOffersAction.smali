.class public Lcom/google/android/finsky/billing/CheckPromoOffersAction;
.super Ljava/lang/Object;
.source "CheckPromoOffersAction.java"

# interfaces
.implements Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;


# static fields
.field private static sRunning:Z


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mActivity:Lcom/google/android/finsky/activities/MainActivity;

.field private final mAuthenticator:Lcom/android/volley/toolbox/Authenticator;

.field private mCallback:Ljava/lang/Runnable;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private sNumAuthRetries:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->sRunning:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/activities/MainActivity;Lcom/google/android/finsky/api/DfeApi;)V
    .locals 4
    .parameter "activity"
    .parameter "dfeApi"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->sNumAuthRetries:I

    .line 40
    iput-object p2, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 41
    invoke-interface {p2}, Lcom/google/android/finsky/api/DfeApi;->getApiContext()Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mAccount:Landroid/accounts/Account;

    .line 42
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    .line 43
    new-instance v1, Lcom/android/volley/toolbox/AndroidAuthenticator;

    iget-object v2, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v3, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mAccount:Landroid/accounts/Account;

    sget-object v0, Lcom/google/android/finsky/config/G;->checkoutAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mAuthenticator:Lcom/android/volley/toolbox/Authenticator;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->sNumAuthRetries:I

    return v0
.end method

.method static synthetic access$006(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->sNumAuthRetries:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->sNumAuthRetries:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/CheckPromoOffersAction;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->checkPromoOffers(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)Lcom/google/android/finsky/activities/MainActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    sput-boolean p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->sRunning:Z

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method private checkPromoOffers(Ljava/lang/String;)V
    .locals 2
    .parameter "authToken"

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/finsky/billing/AsyncAuthenticator;

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mAuthenticator:Lcom/android/volley/toolbox/Authenticator;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/billing/AsyncAuthenticator;-><init>(Lcom/android/volley/toolbox/Authenticator;)V

    .line 61
    .local v0, asyncAuthenticator:Lcom/google/android/finsky/billing/AsyncAuthenticator;
    invoke-virtual {v0, p0, p1}, Lcom/google/android/finsky/billing/AsyncAuthenticator;->getToken(Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public onAuthTokenReceived(Ljava/lang/String;)V
    .locals 3
    .parameter "authToken"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    new-instance v1, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/billing/CheckPromoOffersAction$1;-><init>(Lcom/google/android/finsky/billing/CheckPromoOffersAction;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/finsky/billing/CheckPromoOffersAction$2;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/billing/CheckPromoOffersAction$2;-><init>(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->checkPromoOffers(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 109
    return-void
.end method

.method public onError(Lcom/android/volley/AuthFailureError;)V
    .locals 3
    .parameter "error"

    .prologue
    const/4 v2, 0x0

    .line 113
    const-string v0, "Could not retrieve Checkout auth token."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    sput-boolean v2, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->sRunning:Z

    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 116
    return-void
.end method

.method public run(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mCallback:Ljava/lang/Runnable;

    .line 50
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->checkPromoOffers:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v1, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->sRunning:Z

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->sRunning:Z

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->checkPromoOffers(Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
