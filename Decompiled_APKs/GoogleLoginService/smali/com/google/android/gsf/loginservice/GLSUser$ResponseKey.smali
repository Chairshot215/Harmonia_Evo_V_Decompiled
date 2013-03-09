.class public final enum Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;
.super Ljava/lang/Enum;
.source "GLSUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/loginservice/GLSUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum AUTH:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum CAN_UPGRADE_PLUS:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum CAPTCHA_DATA:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum CAPTCHA_TOKEN_RES:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum CAPTCHA_URL:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum DETAIL:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum EMAIL:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum EXPIRY_IN_S:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum FIRST_NAME:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum INFO:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum LAST_NAME:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum NEEDS_CREDIT_CARD:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum PERMISSION:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum PERMISSION_ADVICE:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum PICASA_USER:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum SERVICES:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum SERVICE_GPLUS:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum SERVICE_HOSTED:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum STATUS:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum TOKEN:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum URL:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

.field public static final enum YOUTUBE_USER:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;


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

    .line 772
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "AUTH"

    const-string v2, "Auth"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->AUTH:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 773
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "EMAIL"

    const-string v2, "Email"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->EMAIL:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 774
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "STATUS"

    const-string v2, "Error"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->STATUS:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 775
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "CAPTCHA_TOKEN_RES"

    const-string v2, "CaptchaToken"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->CAPTCHA_TOKEN_RES:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 776
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "DETAIL"

    const-string v2, "ErrorDetail"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->DETAIL:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 777
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "CAPTCHA_URL"

    const/4 v2, 0x5

    const-string v3, "CaptchaUrl"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->CAPTCHA_URL:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 778
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "CAPTCHA_DATA"

    const/4 v2, 0x6

    const-string v3, "CaptchaData"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->CAPTCHA_DATA:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 779
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "SERVICES"

    const/4 v2, 0x7

    const-string v3, "services"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->SERVICES:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 780
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "YOUTUBE_USER"

    const/16 v2, 0x8

    const-string v3, "YouTubeUser"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->YOUTUBE_USER:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 785
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "PICASA_USER"

    const/16 v2, 0x9

    const-string v3, "PicasaUser"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->PICASA_USER:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 790
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "PERMISSION"

    const/16 v2, 0xa

    const-string v3, "Permission"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->PERMISSION:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 796
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "PERMISSION_ADVICE"

    const/16 v2, 0xb

    const-string v3, "issueAdvice"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->PERMISSION_ADVICE:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 801
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "EXPIRY_IN_S"

    const/16 v2, 0xc

    const-string v3, "Expiry"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->EXPIRY_IN_S:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 807
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "INFO"

    const/16 v2, 0xd

    const-string v3, "Info"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->INFO:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 812
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "TOKEN"

    const/16 v2, 0xe

    const-string v3, "Token"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->TOKEN:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 817
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "CAN_UPGRADE_PLUS"

    const/16 v2, 0xf

    const-string v3, "GooglePlusUpgrade"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->CAN_UPGRADE_PLUS:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 823
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "NEEDS_CREDIT_CARD"

    const/16 v2, 0x10

    const-string v3, "CC"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->NEEDS_CREDIT_CARD:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 826
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "FIRST_NAME"

    const/16 v2, 0x11

    const-string v3, "firstName"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 827
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "LAST_NAME"

    const/16 v2, 0x12

    const-string v3, "lastName"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 832
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "SERVICE_HOSTED"

    const/16 v2, 0x13

    const-string v3, "HOSTED"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->SERVICE_HOSTED:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 837
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "SERVICE_GPLUS"

    const/16 v2, 0x14

    const-string v3, "googleme"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->SERVICE_GPLUS:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 839
    new-instance v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    const-string v1, "URL"

    const/16 v2, 0x15

    const-string v3, "Url"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->URL:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    .line 769
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->AUTH:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->EMAIL:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->STATUS:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->CAPTCHA_TOKEN_RES:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->DETAIL:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->CAPTCHA_URL:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->CAPTCHA_DATA:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->SERVICES:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->YOUTUBE_USER:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->PICASA_USER:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->PERMISSION:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->PERMISSION_ADVICE:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->EXPIRY_IN_S:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->INFO:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->TOKEN:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->CAN_UPGRADE_PLUS:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->NEEDS_CREDIT_CARD:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->SERVICE_HOSTED:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->SERVICE_GPLUS:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->URL:Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->$VALUES:[Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

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
    .line 844
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 845
    iput-object p3, p0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->key:Ljava/lang/String;

    .line 846
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;
    .locals 1
    .parameter

    .prologue
    .line 769
    const-class v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;
    .locals 1

    .prologue
    .line 769
    sget-object v0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->$VALUES:[Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    invoke-virtual {v0}, [Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;

    return-object v0
.end method


# virtual methods
.method public getWire()Ljava/lang/String;
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GLSUser$ResponseKey;->key:Ljava/lang/String;

    return-object v0
.end method
