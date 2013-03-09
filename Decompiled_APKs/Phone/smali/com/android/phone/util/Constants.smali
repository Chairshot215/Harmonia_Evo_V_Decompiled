.class public Lcom/android/phone/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/util/Constants$Intent;
    }
.end annotation


# static fields
.field public static final ACTION_CHANGE_WIFI_MODE:Ljava/lang/String; = "com.htc.intent.action.CHANGE_WIFI_MODE"

.field public static final DATA_MIMETYPE_FACEBOOK:Ljava/lang/String; = "vnd.android.cursor.item/vnd.htcfacebook.profile"

.field public static final DATA_MIMETYPE_PLURK:Ljava/lang/String; = "vnd.android.cursor.item/vnd.plurk.profile"

.field public static final DATA_MIMETYPE_TWITTER:Ljava/lang/String; = "vnd.android.cursor.item/vnd.htctwitter.profile"

.field public static final EMPTY_STATE_SET:[I = null

.field public static final KEY_CALL_COME_IN:Ljava/lang/String; = "comeIn"

.field private static final LOG_TAG:Ljava/lang/String; = "com.android.phone.util.Constants"

.field private static final PROP_KEY_SAVE_CONTACT_TIMEOUT:Ljava/lang/String; = "ro.phone.save_timer"

.field public static final RD_DEBUG:Z

.field public static final RPESSED_STATE_SET:[I

.field public static final SUPPORT_ADD_CALL:Z

.field public static final SUPPORT_AUDIO_SRC_SELECTION:Z

.field public static final SUPPORT_DEFER:Z

.field public static final SUPPORT_INCALL_GLOW:Z

.field public static final SUPPORT_JOIN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 43
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getVersion()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/util/Constants;->SUPPORT_AUDIO_SRC_SELECTION:Z

    .line 49
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/util/Constants;->SUPPORT_DEFER:Z

    .line 54
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getVersion()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    const-string v0, "ro.phone.glow"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/phone/util/Constants;->SUPPORT_INCALL_GLOW:Z

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/util/Constants;->RPESSED_STATE_SET:[I

    .line 63
    new-array v0, v2, [I

    sput-object v0, Lcom/android/phone/util/Constants;->EMPTY_STATE_SET:[I

    .line 260
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd2

    if-eq v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/phone/util/Constants;->SUPPORT_JOIN:Z

    .line 262
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xaf

    if-eq v0, v3, :cond_3

    :goto_3
    sput-boolean v1, Lcom/android/phone/util/Constants;->SUPPORT_ADD_CALL:Z

    return-void

    :cond_0
    move v0, v2

    .line 43
    goto :goto_0

    :cond_1
    move v0, v2

    .line 54
    goto :goto_1

    :cond_2
    move v0, v2

    .line 260
    goto :goto_2

    :cond_3
    move v1, v2

    .line 262
    goto :goto_3

    .line 58
    :array_0
    .array-data 0x4
        0xa7t 0x0t 0x1t 0x1t
        0x9et 0x0t 0x1t 0x1t
        0x9dt 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static final calculateSaveContactTimeout()I
    .locals 6

    .prologue
    .line 220
    const/16 v2, 0x1770

    .line 222
    .local v2, timeout:I
    sget-boolean v3, Lcom/htc/util/phone/ProjectUtils;->IS_PROJECT_A0003:Z

    if-eqz v3, :cond_1

    .line 223
    const/16 v2, 0x2710

    .line 239
    :cond_0
    :goto_0
    return v2

    .line 225
    :cond_1
    const-string v3, "ro.phone.save_timer"

    sget-object v4, Lcom/htc/util/phone/ProjectUtils;->CID:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/util/phone/ProjectUtils;->calculatePropKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, propTimeout:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const-string v3, "com.android.phone.util.Constants"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSaveDialogTimeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
