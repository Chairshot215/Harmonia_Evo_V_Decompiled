.class public Lcom/android/phone/util/VTPrefHelper;
.super Ljava/lang/Object;
.source "VTPrefHelper.java"


# static fields
.field public static final DEFAULT_VALUE_LAYOUT_TYPE:Ljava/lang/String; = "0"

.field public static final DEFAULT_VALUE_STILL_IMAGE:Z = false

.field public static final DEFAULT_VT_CALLBACK_MODE:I = 0x0

.field public static final KEY_CAGETORY:Ljava/lang/String; = "vt_pref_category_key"

.field public static final KEY_VT_CALLBACK_MODE:Ljava/lang/String; = "vt_pref_callback_type"

.field static final KEY_VT_FLIP_CAMERA:Ljava/lang/String; = "vt_pref_key_flip_camera"

.field public static final KEY_VT_LAYOUT_TYPE:Ljava/lang/String; = "vt_pref_key_layout_type"

.field static final KEY_VT_MO_CAMERA_ON:Ljava/lang/String; = "vt_pref_key_mo_camera"

.field static final KEY_VT_MT_CAMERA_ON:Ljava/lang/String; = "vt_pref_key_mt_camera"

.field public static final KEY_VT_STILL_IMAGE:Ljava/lang/String; = "vt_pref_key_still_image"

.field public static final SUPPORT_MIRROR:Z = false

.field public static final VT_CALLBACK_ASK_EVERYTIME:I = 0x0

.field public static final VT_CALLBACK_NEVER:I = 0x2

.field public static final VT_CALLBACK_VOICE:I = 0x1

.field public static final VT_DEFAULT_VALUE_FLIP_CAMERA:Z = true

.field public static final VT_DEFAULT_VALUE_MO_CAMERA:Z = true

.field public static final VT_DEFAULT_VALUE_MT_CAMERA:Z = true

.field public static final VT_KEY_FLIP_CAMERA:Ljava/lang/String; = "vt_pref_key_flip_camera"

.field public static final VT_KEY_MO_CAMERA:Ljava/lang/String; = "vt_pref_key_mo_camera"

.field public static final VT_KEY_MT_CAMERA:Ljava/lang/String; = "vt_pref_key_mt_camera"

.field public static final VT_MY_VIDEO_LAYOUT_LARGE:I = 0x1

.field public static final VT_MY_VIDEO_LAYOUT_SMALL:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 263
    move v1, p2

    .line 265
    .local v1, resultValue:Z
    if-eqz p0, :cond_0

    .line 266
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 269
    .local v0, pref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 274
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return v1
.end method

.method public static final getCallbackMode(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 285
    const/4 v2, 0x0

    .line 287
    .local v2, resultMode:I
    if-eqz p0, :cond_0

    .line 288
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 291
    .local v1, pref:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 292
    const-string v3, "vt_pref_callback_type"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, modeValue:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/util/VTPrefHelper;->getCallbackMode(Ljava/lang/String;)I

    move-result v2

    .line 301
    .end local v0           #modeValue:Ljava/lang/String;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return v2
.end method

.method public static final getCallbackMode(Ljava/lang/String;)I
    .locals 5
    .parameter "value"

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 209
    .local v1, valueInt:I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 212
    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    if-gez v1, :cond_1

    .line 214
    :cond_0
    const/4 v1, 0x0

    .line 220
    :cond_1
    :goto_0
    return v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const-string v2, "VTPrefHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallbackMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getFlipCamera(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 231
    const-string v0, "vt_pref_key_flip_camera"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/phone/util/VTPrefHelper;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static final getLayoutType(Ljava/lang/String;)I
    .locals 5
    .parameter "value"

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 185
    .local v1, result:I
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v2, v3, :cond_0

    .line 187
    const/4 v1, 0x1

    .line 193
    :cond_0
    :goto_0
    return v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const-string v2, "VTPrefHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLayoutType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getMOCameraOn(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 243
    const-string v0, "vt_pref_key_mo_camera"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/phone/util/VTPrefHelper;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getMTCameraOn(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 255
    const-string v0, "vt_pref_key_mt_camera"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/phone/util/VTPrefHelper;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
