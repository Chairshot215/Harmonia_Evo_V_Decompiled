.class public Lcom/discretix/drm/api/DxDeviceSpecificConstants;
.super Ljava/lang/Object;
.source "DxDeviceSpecificConstants.java"


# static fields
.field public static final DEVICE_MANIFACTURER:Ljava/lang/String; = "Android Device Manifacturer"

.field public static final DEVICE_MODEL:Ljava/lang/String; = "Android Device Model"

.field public static final DEVICE_REVISION:Ljava/lang/String; = "1"

.field public static final DX_USER_AGENT_HDR_VALUE:Ljava/lang/String; = "Mozilla/5.0 (Linux; U; Android 0.5; en-us) AppleWebKit/522+ (KHTML, like Gecko) Safari/419.3"

.field public static final DX_VERSION_ID:Ljava/lang/String; = "Eclair RC 2"

.field public static final DX_X_WAP_PROFILE_HDR_VALUE:Ljava/lang/String; = "http:///www.example.com"

.field private static final TAG:Ljava/lang/String; = "DxDeviceSpecificConstants"

.field private static mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/discretix/drm/api/DxDeviceSpecificConstants;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserAgentString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/discretix/drm/api/DxDeviceSpecificConstants;->mUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "DxDeviceSpecificConstants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserAgent is used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/discretix/drm/api/DxDeviceSpecificConstants;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/discretix/drm/api/DxDeviceSpecificConstants;->mUserAgent:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "DxDeviceSpecificConstants"

    const-string v1, "Default UserAgent is used: Mozilla/5.0 (Linux; U; Android 0.5; en-us) AppleWebKit/522+ (KHTML, like Gecko) Safari/419.3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Mozilla/5.0 (Linux; U; Android 0.5; en-us) AppleWebKit/522+ (KHTML, like Gecko) Safari/419.3"

    goto :goto_0
.end method

.method public static setUserAgentString(Ljava/lang/String;)V
    .locals 3

    sput-object p0, Lcom/discretix/drm/api/DxDeviceSpecificConstants;->mUserAgent:Ljava/lang/String;

    const-string v0, "DxDeviceSpecificConstants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New UserAgent is set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/discretix/drm/api/DxDeviceSpecificConstants;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
