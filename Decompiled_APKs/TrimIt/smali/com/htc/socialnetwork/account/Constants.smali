.class public interface abstract Lcom/htc/socialnetwork/account/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "_id"

.field public static final ACCOUNT_LOGIN:Ljava/lang/String; = "account_login"

.field public static final ACCOUNT_LOGINCLASS:Ljava/lang/String; = "accout_loginclass"

.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final ACCOUNT_PACKAGE:Ljava/lang/String; = "account_package"

.field public static final ACCOUNT_SERVICE:Ljava/lang/String; = "account_service"

.field public static final ALL_HAVE_LOGOUT:I = 0x72

.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.socialnetwork.accountnew"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DISKFULL_ERROR:I = 0x6c

.field public static final EXIT:I = 0x69

.field public static final INPUT_ERROR:I = 0x6a

.field public static final INTENT_LOGOUT:Ljava/lang/String; = "intent_logout"

.field public static final LOGINNING:I = 0x65

.field public static final LOGIN_ACTION_NAME:Ljava/lang/String; = "com.htc.socialnetwork.accountmanager.LOGIN"

.field public static final LOGIN_CALL:I = 0x1

.field public static final LOGIN_ERROR:I = 0x66

.field public static final LOGIN_FAILED:I = 0x70

.field public static final LOGIN_SUCCESS:I = 0x6f

.field public static final LOGOUT:I = 0x6e

.field public static final LOGOUTALL:I = 0x71

.field public static final LOGOUT_ACTION_NAME:Ljava/lang/String; = "com.htc.socialnetwork.accountmanager.LOGOUT"

.field public static final LOGOUT_CALL:I = 0x2

.field public static final NETWORK_DISABLED:I = 0x6b

.field public static final NO_NETWORK:I = 0x64

.field public static final PASSWORD:Ljava/lang/String; = "com.htc.socialnetwork.account.PASSWORD"

.field public static final USERNAME:Ljava/lang/String; = "com.htc.socialnetwork.account.USERNAME"

.field public static final WAIT:I = 0x67

.field public static final WAIT_FOR_PAGE:I = 0x68


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "content://com.htc.socialnetwork.accountnew/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/socialnetwork/account/Constants;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
