.class public final Lcom/android/providers/contacts/HtcUtils/Utils$SpeedDial;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcUtils/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeedDial"
.end annotation


# static fields
.field private static final PREF_KEY_IMSI:Ljava/lang/String; = "imsi"

.field public static final SUPPORT_UPDATE_SIM:Z

.field private static mIsUpdated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-static {}, Lcom/htc/util/phone/ProjectUtils;->getVersion()F

    move-result v0

    const/high16 v2, 0x4000

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/providers/contacts/HtcUtils/Utils$SpeedDial;->SUPPORT_UPDATE_SIM:Z

    .line 67
    sput-boolean v1, Lcom/android/providers/contacts/HtcUtils/Utils$SpeedDial;->mIsUpdated:Z

    return-void

    :cond_0
    move v0, v1

    .line 62
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateForSimChanged(Landroid/content/Context;Landroid/telephony/TelephonyManager;)V
    .locals 6
    .parameter "context"
    .parameter "telephoyMgr"

    .prologue
    .line 71
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    sget-boolean v4, Lcom/android/providers/contacts/HtcUtils/Utils$SpeedDial;->mIsUpdated:Z

    if-nez v4, :cond_1

    .line 74
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, currentImsi:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 77
    .local v3, prefs:Landroid/content/SharedPreferences;
    if-eqz v3, :cond_0

    .line 78
    const-string v4, "imsi"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, oldImsi:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 81
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 82
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "imsi"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    #calls: Lcom/android/providers/contacts/HtcUtils/Utils;->removeSimFromSpeedDial(Landroid/content/ContentResolver;)V
    invoke-static {v4}, Lcom/android/providers/contacts/HtcUtils/Utils;->access$000(Landroid/content/ContentResolver;)V

    .line 89
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #oldImsi:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/providers/contacts/HtcUtils/Utils$SpeedDial;->mIsUpdated:Z

    .line 91
    .end local v0           #currentImsi:Ljava/lang/String;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method
