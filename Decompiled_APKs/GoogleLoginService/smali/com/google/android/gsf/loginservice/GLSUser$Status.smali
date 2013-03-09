.class public final enum Lcom/google/android/gsf/loginservice/GLSUser$Status;
.super Ljava/lang/Enum;
.source "GLSUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/loginservice/GLSUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gsf/loginservice/GLSUser$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum ACCOUNT_DELETED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum ACCOUNT_DISABLED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum ALREADY_HAS_GMAIL:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum BAD_PASSWORD:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum BAD_REQUEST:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum BAD_USERNAME:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum CAPTCHA:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum CLIENT_LOGIN_DISABLED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum DELETED_GMAIL:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum DEVICE_MANAGEMENT_REQUIRED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum EXISTING_USERNAME:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum GPLUS_INTERSTITIAL:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum GPLUS_INVALID_CHAR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum GPLUS_NICKNAME:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum GPLUS_OTHER:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum GPLUS_PROFILE_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum LOGIN_FAIL:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum NEEDS_2F:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum NEEDS_BROWSER:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum NEED_PERMISSION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum NETWORK_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum NOT_LOGGED_IN:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum NOT_VERIFIED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum NO_GMAIL:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum REQUEST_DENIED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum SERVER_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum SERVICE_DISABLED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum SERVICE_UNAVAILABLE:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum SOCKET_TIMEOUT:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum TERMS_NOT_AGREED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum UNKNOWN:Lcom/google/android/gsf/loginservice/GLSUser$Status;

.field public static final enum USERNAME_UNAVAILABLE:Lcom/google/android/gsf/loginservice/GLSUser$Status;


# instance fields
.field private final gaiaErrorCode:Ljava/lang/String;

.field public resource:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 872
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "SUCCESS"

    const-string v2, "Ok"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 878
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "BAD_AUTHENTICATION"

    const-string v2, "BadAuthentication"

    const v3, 0x7f08011a

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 885
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "NEEDS_2F"

    const-string v2, "InvalidSecondFactor"

    const v3, 0x7f080147

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NEEDS_2F:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 889
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "NOT_VERIFIED"

    const-string v2, "NotVerified"

    const v3, 0x7f080097

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NOT_VERIFIED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 890
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "TERMS_NOT_AGREED"

    const-string v2, "TermsNotAgreed"

    invoke-direct {v0, v1, v9, v2}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->TERMS_NOT_AGREED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 895
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    const-string v3, "Unknown"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->UNKNOWN:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 896
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "ACCOUNT_DELETED"

    const/4 v2, 0x6

    const-string v3, "AccountDeleted"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->ACCOUNT_DELETED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 898
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "ACCOUNT_DISABLED"

    const/4 v2, 0x7

    const-string v3, "AccountDisabled"

    const v4, 0x7f080092

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->ACCOUNT_DISABLED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 899
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "SERVICE_DISABLED"

    const/16 v2, 0x8

    const-string v3, "ServiceDisabled"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SERVICE_DISABLED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 906
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "SERVICE_UNAVAILABLE"

    const/16 v2, 0x9

    const-string v3, "ServiceUnavailable"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SERVICE_UNAVAILABLE:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 911
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "CAPTCHA"

    const/16 v2, 0xa

    const-string v3, "CaptchaRequired"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->CAPTCHA:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 916
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "NETWORK_ERROR"

    const/16 v2, 0xb

    const-string v3, "NetworkError"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NETWORK_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 921
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "DEVICE_MANAGEMENT_REQUIRED"

    const/16 v2, 0xc

    const-string v3, "DeviceManagementRequiredOrSyncDisabled"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->DEVICE_MANAGEMENT_REQUIRED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 927
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "CLIENT_LOGIN_DISABLED"

    const/16 v2, 0xd

    const-string v3, "ClientLoginDisabled"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->CLIENT_LOGIN_DISABLED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 932
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "NEED_PERMISSION"

    const/16 v2, 0xe

    const-string v3, "NeedPermission"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NEED_PERMISSION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 941
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "BAD_PASSWORD"

    const/16 v2, 0xf

    const-string v3, "WeakPassword"

    const v4, 0x7f0800bf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_PASSWORD:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 943
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "ALREADY_HAS_GMAIL"

    const/16 v2, 0x10

    const-string v3, "ALREADY_HAS_GMAIL"

    const v4, 0x7f080091

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->ALREADY_HAS_GMAIL:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 944
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "BAD_REQUEST"

    const/16 v2, 0x11

    const-string v3, "BadRequest"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_REQUEST:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 948
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "BAD_USERNAME"

    const/16 v2, 0x12

    const-string v3, "BadUsername"

    const v4, 0x7f0800c0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_USERNAME:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 949
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "LOGIN_FAIL"

    const/16 v2, 0x13

    const-string v3, "LoginFail"

    const v4, 0x7f080096

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->LOGIN_FAIL:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 950
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "NOT_LOGGED_IN"

    const/16 v2, 0x14

    const-string v3, "NotLoggedIn"

    const v4, 0x7f0800bd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NOT_LOGGED_IN:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 952
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "NO_GMAIL"

    const/16 v2, 0x15

    const-string v3, "NoGmail"

    const v4, 0x7f0800ac

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NO_GMAIL:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 954
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "REQUEST_DENIED"

    const/16 v2, 0x16

    const-string v3, "RequestDenied"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->REQUEST_DENIED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 955
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "SERVER_ERROR"

    const/16 v2, 0x17

    const-string v3, "ServerError"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SERVER_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 957
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "USERNAME_UNAVAILABLE"

    const/16 v2, 0x18

    const-string v3, "UsernameUnavailable"

    const v4, 0x7f0800be

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->USERNAME_UNAVAILABLE:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 958
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "DELETED_GMAIL"

    const/16 v2, 0x19

    const-string v3, "DeletedGmail"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->DELETED_GMAIL:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 961
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "SOCKET_TIMEOUT"

    const/16 v2, 0x1a

    const-string v3, "SocketTimeout"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SOCKET_TIMEOUT:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 964
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "EXISTING_USERNAME"

    const/16 v2, 0x1b

    const-string v3, "ExistingUsername"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->EXISTING_USERNAME:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 967
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "NEEDS_BROWSER"

    const/16 v2, 0x1c

    const-string v3, "NeedsBrowser"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NEEDS_BROWSER:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 972
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "GPLUS_OTHER"

    const/16 v2, 0x1d

    const-string v3, "GPlusOther"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->GPLUS_OTHER:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 977
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "GPLUS_NICKNAME"

    const/16 v2, 0x1e

    const-string v3, "GPlusNickname"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->GPLUS_NICKNAME:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 982
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "GPLUS_INVALID_CHAR"

    const/16 v2, 0x1f

    const-string v3, "GPlusInvalidChar"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->GPLUS_INVALID_CHAR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 987
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "GPLUS_INTERSTITIAL"

    const/16 v2, 0x20

    const-string v3, "GPlusInterstitial"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->GPLUS_INTERSTITIAL:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 992
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    const-string v1, "GPLUS_PROFILE_ERROR"

    const/16 v2, 0x21

    const-string v3, "ProfileUpgradeError"

    const v4, 0x7f080074

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/loginservice/GLSUser$Status;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->GPLUS_PROFILE_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 870
    const/16 v0, 0x22

    new-array v0, v0, [Lcom/google/android/gsf/loginservice/GLSUser$Status;

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NEEDS_2F:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NOT_VERIFIED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->TERMS_NOT_AGREED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->UNKNOWN:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->ACCOUNT_DELETED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->ACCOUNT_DISABLED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SERVICE_DISABLED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SERVICE_UNAVAILABLE:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->CAPTCHA:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NETWORK_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->DEVICE_MANAGEMENT_REQUIRED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->CLIENT_LOGIN_DISABLED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NEED_PERMISSION:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_PASSWORD:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->ALREADY_HAS_GMAIL:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_REQUEST:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_USERNAME:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->LOGIN_FAIL:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NOT_LOGGED_IN:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NO_GMAIL:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->REQUEST_DENIED:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SERVER_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->USERNAME_UNAVAILABLE:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->DELETED_GMAIL:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SOCKET_TIMEOUT:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->EXISTING_USERNAME:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NEEDS_BROWSER:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->GPLUS_OTHER:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->GPLUS_NICKNAME:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->GPLUS_INVALID_CHAR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->GPLUS_INTERSTITIAL:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->GPLUS_PROFILE_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->$VALUES:[Lcom/google/android/gsf/loginservice/GLSUser$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "gaiaErrorCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1000
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1001
    iput-object p3, p0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->gaiaErrorCode:Ljava/lang/String;

    .line 1002
    invoke-static {}, Lcom/google/android/gsf/loginservice/GLSUser;->access$100()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter "gaiaErrorCode"
    .parameter "res"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1005
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1006
    iput-object p3, p0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->gaiaErrorCode:Ljava/lang/String;

    .line 1007
    invoke-static {}, Lcom/google/android/gsf/loginservice/GLSUser;->access$100()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    iput p4, p0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->resource:I

    .line 1009
    return-void
.end method

.method public static fromExtra(Landroid/content/Intent;)Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .locals 3
    .parameter "intent"

    .prologue
    .line 1071
    if-nez p0, :cond_1

    .line 1072
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 1079
    :cond_0
    :goto_0
    return-object v1

    .line 1074
    :cond_1
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->STATUS:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    .local v0, err:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1076
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    goto :goto_0

    .line 1078
    :cond_2
    invoke-static {}, Lcom/google/android/gsf/loginservice/GLSUser;->access$100()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 1079
    .local v1, res:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->UNKNOWN:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    goto :goto_0
.end method

.method public static fromIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .locals 3
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 1062
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/gsf/loginservice/GLSUser;->getOrCreateSession(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v1

    .line 1063
    .local v1, session:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    iget-object v0, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mError:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 1064
    .local v0, err:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    if-nez v0, :cond_0

    .line 1065
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 1067
    .end local v0           #err:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    :cond_0
    return-object v0
.end method

.method public static fromJSON(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .locals 2
    .parameter "json"

    .prologue
    .line 1040
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1041
    :cond_0
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SERVER_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 1046
    :goto_0
    return-object v1

    .line 1044
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->valueOf(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser$Status;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1045
    :catch_0
    move-exception v0

    .line 1046
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SERVER_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    goto :goto_0
.end method

.method public static fromJSON(Lorg/json/JSONObject;)Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .locals 1
    .parameter "jsonObj"

    .prologue
    .line 1035
    sget-object v0, Lcom/google/android/gsf/login/BackendStub$Key;->STATUS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromJSON(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v0

    return-object v0
.end method

.method public static fromMessage(Landroid/os/Message;)Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .locals 3
    .parameter "msg"

    .prologue
    .line 1052
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->STATUS:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v2}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1053
    .local v0, wire:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromJSON(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v1

    return-object v1
.end method

.method public static fromWire(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .locals 3
    .parameter "wire"

    .prologue
    .line 1024
    if-nez p0, :cond_1

    .line 1025
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 1030
    :cond_0
    :goto_0
    return-object v1

    .line 1027
    :cond_1
    invoke-static {}, Lcom/google/android/gsf/loginservice/GLSUser;->access$100()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 1028
    .local v1, res:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->UNKNOWN:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1029
    .end local v1           #res:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    :catch_0
    move-exception v0

    .line 1030
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->UNKNOWN:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .locals 1
    .parameter

    .prologue
    .line 870
    const-class v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .locals 1

    .prologue
    .line 870
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->$VALUES:[Lcom/google/android/gsf/loginservice/GLSUser$Status;

    invoke-virtual {v0}, [Lcom/google/android/gsf/loginservice/GLSUser$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gsf/loginservice/GLSUser$Status;

    return-object v0
.end method


# virtual methods
.method public getWire()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$Status;->gaiaErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public toIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 1086
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gsf/loginservice/GLSUser;->getOrCreateSession(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v0

    .line 1087
    .local v0, session:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    iput-object p0, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mError:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 1090
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->STATUS:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1091
    return-void
.end method

.method public toMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1057
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->STATUS:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v1}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    return-void
.end method
