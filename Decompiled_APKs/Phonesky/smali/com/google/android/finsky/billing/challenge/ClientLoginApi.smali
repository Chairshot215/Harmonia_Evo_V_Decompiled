.class public Lcom/google/android/finsky/billing/challenge/ClientLoginApi;
.super Ljava/lang/Object;
.source "ClientLoginApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;,
        Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;,
        Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ErrorType;
    }
.end annotation


# static fields
.field private static CLIENT_LOGIN_URI:Ljava/lang/String;

.field private static REQUEST_PARAM_ACCOUNT_TYPE:Ljava/lang/String;

.field private static REQUEST_PARAM_EMAIL:Ljava/lang/String;

.field private static REQUEST_PARAM_PASSWD:Ljava/lang/String;

.field private static REQUEST_PARAM_SERVICE:Ljava/lang/String;

.field private static REQUEST_PARAM_SOURCE:Ljava/lang/String;

.field private static REQUEST_VALUE_ACCOUNT_TYPE:Ljava/lang/String;

.field private static REQUEST_VALUE_SERVICE:Ljava/lang/String;

.field private static REQUEST_VALUE_SOURCE:Ljava/lang/String;

.field private static RESULT_ERROR_BAD_AUTH:Ljava/lang/String;

.field private static RESULT_ERROR_CAPTCHA_REQUIRED:Ljava/lang/String;

.field private static RESULT_ERROR_INFO_TWO_FACTOR:Ljava/lang/String;


# instance fields
.field private final mQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "https://www.google.com/accounts/ClientLogin"

    sput-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->CLIENT_LOGIN_URI:Ljava/lang/String;

    .line 26
    const-string v0, "accountType"

    sput-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_PARAM_ACCOUNT_TYPE:Ljava/lang/String;

    .line 27
    const-string v0, "Email"

    sput-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_PARAM_EMAIL:Ljava/lang/String;

    .line 28
    const-string v0, "Passwd"

    sput-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_PARAM_PASSWD:Ljava/lang/String;

    .line 29
    const-string v0, "service"

    sput-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_PARAM_SERVICE:Ljava/lang/String;

    .line 30
    const-string v0, "source"

    sput-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_PARAM_SOURCE:Ljava/lang/String;

    .line 32
    const-string v0, "HOSTED_OR_GOOGLE"

    sput-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_VALUE_ACCOUNT_TYPE:Ljava/lang/String;

    .line 33
    const-string v0, "apps"

    sput-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_VALUE_SERVICE:Ljava/lang/String;

    .line 34
    const-string v0, "Google-GooglePlay-"

    sput-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_VALUE_SOURCE:Ljava/lang/String;

    .line 36
    const-string v0, "Error=BadAuthentication"

    sput-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->RESULT_ERROR_BAD_AUTH:Ljava/lang/String;

    .line 37
    const-string v0, "Info=InvalidSecondFactor"

    sput-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->RESULT_ERROR_INFO_TWO_FACTOR:Ljava/lang/String;

    .line 38
    const-string v0, "Error=CaptchaRequired"

    sput-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->RESULT_ERROR_CAPTCHA_REQUIRED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/RequestQueue;)V
    .locals 0
    .parameter "queue"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->mQueue:Lcom/android/volley/RequestQueue;

    .line 58
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->RESULT_ERROR_BAD_AUTH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->RESULT_ERROR_INFO_TWO_FACTOR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_VALUE_SOURCE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->RESULT_ERROR_CAPTCHA_REQUIRED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_PARAM_ACCOUNT_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_VALUE_ACCOUNT_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_PARAM_EMAIL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_PARAM_PASSWD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_PARAM_SERVICE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_VALUE_SERVICE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->REQUEST_PARAM_SOURCE:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public validateUser(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;)Lcom/android/volley/Request;
    .locals 7
    .parameter "accountName"
    .parameter "gaiaPasswd"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;

    sget-object v2, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->CLIENT_LOGIN_URI:Ljava/lang/String;

    new-instance v5, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$1;

    invoke-direct {v5, p0, p3}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$1;-><init>(Lcom/google/android/finsky/billing/challenge/ClientLoginApi;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;)V

    new-instance v6, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$2;

    invoke-direct {v6, p0, p3, p2}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$2;-><init>(Lcom/google/android/finsky/billing/challenge/ClientLoginApi;Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginListener;Ljava/lang/String;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;-><init>(Lcom/google/android/finsky/billing/challenge/ClientLoginApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 94
    .local v0, request:Lcom/google/android/finsky/billing/challenge/ClientLoginApi$ClientLoginRequest;
    iget-object v1, p0, Lcom/google/android/finsky/billing/challenge/ClientLoginApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    return-object v1
.end method
