.class public Lcom/google/android/gsf/GoogleLoginServiceConstants;
.super Ljava/lang/Object;
.source "GoogleLoginServiceConstants.java"


# static fields
.field public static final ACCOUNTS_KEY:Ljava/lang/String; = "accounts"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field public static final ACTION_GET_GLS:Ljava/lang/String; = "com.google.android.gsf.action.GET_GLS"

.field public static final AUTHTOKEN_KEY:Ljava/lang/String; = "authtoken"

.field public static final AUTH_ACCOUNT_KEY:Ljava/lang/String; = "authAccount"

.field public static final ERROR_CODE_GLS_NOT_FOUND:I = 0x0

.field public static final ERROR_CODE_GLS_VERIFICATION_FAILED:I = 0x1

.field public static final ERROR_CODE_KEY:Ljava/lang/String; = "errorCode"

.field public static final FEATURE_GOOGLE:Ljava/lang/String; = "google"

.field public static final FEATURE_HOSTED_OR_GOOGLE:Ljava/lang/String; = "hosted_or_google"

.field public static final FEATURE_LEGACY_GOOGLE:Ljava/lang/String; = "legacy_google"

.field public static final FEATURE_LEGACY_HOSTED_OR_GOOGLE:Ljava/lang/String; = "legacy_hosted_or_google"

.field public static final FEATURE_SAML_ACCOUNT:Ljava/lang/String; = "saml"

.field public static final FEATURE_SERVICE_PREFIX:Ljava/lang/String; = "service_"

.field public static final FEATURE_YOUTUBE:Ljava/lang/String; = "youtubelinked"

.field public static final FLAG_GOOGLE_ACCOUNT:I = 0x1

.field public static final FLAG_HOSTED_ACCOUNT:I = 0x2

.field public static final FLAG_LEGACY_GOOGLE:I = 0x10

.field public static final FLAG_LEGACY_HOSTED_OR_GOOGLE:I = 0x20

.field public static final FLAG_SAML_ACCOUNT:I = 0x8

.field public static final FLAG_YOUTUBE_ACCOUNT:I = 0x4

.field public static final LOGIN_ACCOUNTS_MISSING_ACTION:Ljava/lang/String; = "com.google.android.gsf.LOGIN_ACCOUNTS_MISSING"

.field public static final PREFER_HOSTED:Z = false

.field public static final REQUEST_EXTRAS:Ljava/lang/String; = "callerExtras"

.field public static final REQUIRE_GOOGLE:Z = true

.field public static final SERVICE_INTENT:Landroid/content/Intent; = null

.field public static final YOUTUBE_USER_KEY:Ljava/lang/String; = "YouTubeUser"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gsf.action.GET_GLS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/GoogleLoginServiceConstants;->SERVICE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static featureForService(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getErrorCodeMessage(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 237
    packed-switch p0, :pswitch_data_0

    .line 245
    const-string v0, "Unknown error"

    :goto_0
    return-object v0

    .line 239
    :pswitch_0
    const-string v0, "The Google login service cannot be found."

    goto :goto_0

    .line 242
    :pswitch_1
    const-string v0, "The Google login service cannot be verified."

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
