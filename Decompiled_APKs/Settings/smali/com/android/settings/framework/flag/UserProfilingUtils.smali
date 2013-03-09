.class public Lcom/android/settings/framework/flag/UserProfilingUtils;
.super Ljava/lang/Object;
.source "UserProfilingUtils.java"


# static fields
.field public static final APP_ID_PHONE:Ljava/lang/String; = "com.android.phone"

.field public static final ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/htc/util/phone/ProfilingUtils;->ENABLED:Z

    sput-boolean v0, Lcom/android/settings/framework/flag/UserProfilingUtils;->ENABLED:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static userProfilingSettings(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1
    .parameter "key"
    .parameter "on"
    .parameter "appid"

    .prologue
    .line 53
    const-string v0, "settings_retrieve"

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/framework/flag/UserProfilingUtils;->userProfilingSettings(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static userProfilingSettings(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "key"
    .parameter "on"
    .parameter "appid"
    .parameter "category"

    .prologue
    .line 70
    if-eqz p1, :cond_0

    const-string v0, "on"

    :goto_0
    invoke-static {p0, v0, p2, p3}, Lcom/htc/util/phone/ProfilingUtils;->userProfiling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method
