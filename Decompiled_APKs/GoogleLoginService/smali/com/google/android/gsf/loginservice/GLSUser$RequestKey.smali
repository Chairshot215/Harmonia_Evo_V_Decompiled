.class public final enum Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;
.super Ljava/lang/Enum;
.source "GLSUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/loginservice/GLSUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum ACCESS_TOKEN:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum ACCOUNT_SOURCE:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum ADDED_ACCOUNT:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum ANDROID_ID:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum BROWSER_FLOW:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum CAPTCHA_ANSWER:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum CAPTCHA_TOKEN:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum CLIENT_ID:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum CREATED:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum DEVICE_COUNTRY:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum EMAIL:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum ENCRYPTED_PASSWORD:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum FIRST_NAME:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum GENDER:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum GPLUS_CHECK:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum LANGUAGE:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum LAST_NAME:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum LSID:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum OAUTH2_EXTRA_PREFIX:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum OPERATOR_COUNTRY:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum PACKAGE:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum PACKAGE_SIG:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum PASSWORD:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum PHOTO:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum SERVICE:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum STORED_PERMISSION:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

.field public static final enum TOKEN:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 674
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "EMAIL"

    const-string v2, "Email"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->EMAIL:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 677
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "TOKEN"

    const-string v2, "Token"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->TOKEN:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 680
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "SERVICE"

    const-string v2, "service"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->SERVICE:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 685
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "ENCRYPTED_PASSWORD"

    const-string v2, "EncryptedPasswd"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->ENCRYPTED_PASSWORD:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 688
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "PASSWORD"

    const-string v2, "Passwd"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->PASSWORD:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 691
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "ANDROID_ID"

    const/4 v2, 0x5

    const-string v3, "androidId"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->ANDROID_ID:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 694
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "ACCOUNT_SOURCE"

    const/4 v2, 0x6

    const-string v3, "source"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->ACCOUNT_SOURCE:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 697
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "CAPTCHA_ANSWER"

    const/4 v2, 0x7

    const-string v3, "logincaptcha"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->CAPTCHA_ANSWER:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 700
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "CAPTCHA_TOKEN"

    const/16 v2, 0x8

    const-string v3, "logintoken"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->CAPTCHA_TOKEN:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 703
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "OPERATOR_COUNTRY"

    const/16 v2, 0x9

    const-string v3, "operatorCountry"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->OPERATOR_COUNTRY:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 706
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "DEVICE_COUNTRY"

    const/16 v2, 0xa

    const-string v3, "device_country"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->DEVICE_COUNTRY:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 709
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "LANGUAGE"

    const/16 v2, 0xb

    const-string v3, "lang"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->LANGUAGE:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 712
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "STORED_PERMISSION"

    const/16 v2, 0xc

    const-string v3, "has_permission"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->STORED_PERMISSION:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 715
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "PACKAGE"

    const/16 v2, 0xd

    const-string v3, "app"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->PACKAGE:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 718
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "PACKAGE_SIG"

    const/16 v2, 0xe

    const-string v3, "client_sig"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->PACKAGE_SIG:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 723
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "OAUTH2_EXTRA_PREFIX"

    const/16 v2, 0xf

    const-string v3, "oauth2_"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->OAUTH2_EXTRA_PREFIX:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 726
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "CLIENT_ID"

    const/16 v2, 0x10

    const-string v3, "client_id"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->CLIENT_ID:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 732
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "ACCESS_TOKEN"

    const/16 v2, 0x11

    const-string v3, "ACCESS_TOKEN"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->ACCESS_TOKEN:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 735
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "BROWSER_FLOW"

    const/16 v2, 0x12

    const-string v3, "browserFlow"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->BROWSER_FLOW:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 737
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "LAST_NAME"

    const/16 v2, 0x13

    const-string v3, "lastName"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 739
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "FIRST_NAME"

    const/16 v2, 0x14

    const-string v3, "firstName"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 741
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "PHOTO"

    const/16 v2, 0x15

    const-string v3, "photo"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->PHOTO:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 743
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "GENDER"

    const/16 v2, 0x16

    const-string v3, "gender"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->GENDER:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 746
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "ADDED_ACCOUNT"

    const/16 v2, 0x17

    const-string v3, "add_account"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->ADDED_ACCOUNT:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 749
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "GPLUS_CHECK"

    const/16 v2, 0x18

    const-string v3, "gplus_check"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->GPLUS_CHECK:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 751
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "LSID"

    const/16 v2, 0x19

    const-string v3, "LSID"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->LSID:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 756
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    const-string v1, "CREATED"

    const/16 v2, 0x1a

    const-string v3, "created"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->CREATED:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    .line 673
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->EMAIL:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->TOKEN:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->SERVICE:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->ENCRYPTED_PASSWORD:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->PASSWORD:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->ANDROID_ID:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->ACCOUNT_SOURCE:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->CAPTCHA_ANSWER:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->CAPTCHA_TOKEN:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->OPERATOR_COUNTRY:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->DEVICE_COUNTRY:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->LANGUAGE:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->STORED_PERMISSION:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->PACKAGE:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->PACKAGE_SIG:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->OAUTH2_EXTRA_PREFIX:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->CLIENT_ID:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->ACCESS_TOKEN:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->BROWSER_FLOW:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->PHOTO:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->GENDER:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->ADDED_ACCOUNT:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->GPLUS_CHECK:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->LSID:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->CREATED:Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->$VALUES:[Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 761
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 762
    iput-object p3, p0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->key:Ljava/lang/String;

    .line 763
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;
    .locals 1
    .parameter

    .prologue
    .line 673
    const-class v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;
    .locals 1

    .prologue
    .line 673
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->$VALUES:[Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    invoke-virtual {v0}, [Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;

    return-object v0
.end method


# virtual methods
.method public getWire()Ljava/lang/String;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$RequestKey;->key:Ljava/lang/String;

    return-object v0
.end method
