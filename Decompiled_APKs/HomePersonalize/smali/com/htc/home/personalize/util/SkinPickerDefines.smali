.class public Lcom/htc/home/personalize/util/SkinPickerDefines;
.super Ljava/lang/Object;
.source "SkinPickerDefines.java"


# static fields
.field public static final ACTION_CUSTOMIZATION:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_CHANGE"

.field public static final ACTION_LAUNCHER_LOADING_COMPLETE:Ljava/lang/String; = "com.htc.launcher.intent.LOADING_COMPLETE"

.field public static final ACTION_ONLINESKIN:Ljava/lang/String; = "com.htc.skinpicker.action.ONLINESKINFROMSKINPICKER"

.field public static final ACTION_SKINPICKER:Ljava/lang/String; = "com.htc.intent.ACTION_PERSONALIZE_SKIN"

.field public static final ACTION_SKINPICKER_EXTRA_FOCUSEDID:Ljava/lang/String; = "com.htc.skinpicker.EXTRA_FOCUSEDID"

.field public static final ACTION_SKINPICKER_FROM_ONLINESKIN:Ljava/lang/String; = "com.htc.intent.ACTION_ONLINE_GOTO"

.field public static final ACTIVITY_RESULT_LOGIN_CS_ACCOUNT:I = 0xcce

.field public static final CALLER_SKINPICKER:Ljava/lang/String; = "com.htc.home.personalize"

.field public static final CUSTOMIZED_REASON:Ljava/lang/String; = "com.htc.CUSTOMIZED_REASON"

.field public static final DIALOG_INSTALLING:I = 0x64

.field public static final DL_RESULT_ERROR:I = 0x15

.field public static final DL_RESULT_PREVIEW_OK:I = 0x14

.field public static final DL_RESULT_SKINLIST_FAIL:I = 0x1f

.field public static final DL_RESULT_SKINLIST_OK:I = 0x1e

.field public static final DL_RESULT_USERCANCEL:I = 0x16

.field public static final FIELD_PRESKIN:Ljava/lang/String; = "preskinpackage"

.field public static final FIELD_UNINSTALLSKIN:Ljava/lang/String; = "uninstallskin"

.field public static final FOTA_UPGRADE:Ljava/lang/String; = "com.htc.FOTA_UPGRADE"

.field public static final ONLINESKIN_EVENT_DOWNLOADSTATUSCHANGED:I = 0x2a

.field public static final ONLINESKIN_EVENT_PREVIEWDOWNLOAD:I = 0x29

.field public static final ONLINESKIN_EVENT_XMLRETRIVAL:I = 0x28

.field public static final PREFERENCE_SKINPICKER:Ljava/lang/String; = "pref_skinpicker"

.field public static final PREF_KEY_UIMODE:Ljava/lang/String; = "ui_mode"

.field public static final PREIVEW_FILE_SUFFIX:Ljava/lang/String; = "_preview.png"

.field public static final PREIVEW_LANDSCAPE_FILE_SUFFIX:Ljava/lang/String; = "_preview_landscape.png"

.field public static final REQUEST_ONLINESKIN:I = 0x14

.field public static final RESULT_ONLINESKIN_NOUPDATE:I = 0x3c

.field public static final RESULT_ONLINESKIN_WITHUPDATE:I = 0x3d

.field public static final SKINPICKER_EVENT_APPLY_FAIL:I = 0x8f

.field public static final SKINPICKER_EVENT_APPLY_SKIN:I = 0x8e

.field public static final SKINPICKER_EVENT_SKIN_APPLIED:I = 0x8d

.field public static final SKINPICKER_EVENT_SKIN_DELETED:I = 0x8c

.field public static final SelectedSkinId:Ljava/lang/String; = "Selected_SkinId"

.field public static final VIEW_TYPE_LIST:I = 0x65

.field public static final VIEW_TYPE_PANEL:I = 0x64

.field public static final VIEW_TYPE_UNKNOWN:I = 0x66

.field public static final VISION_INDEX_FONT_SIZE:F = 20.0f

.field public static final VISION_NAME_FONT_SIZE:F = 22.0f

.field public static final VISION_TITLE_FONT_SIZE:F = 26.0f

.field private static mAppContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/home/personalize/util/SkinPickerDefines;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/htc/home/personalize/util/SkinPickerDefines;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static SetAppContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    sput-object p0, Lcom/htc/home/personalize/util/SkinPickerDefines;->mAppContext:Landroid/content/Context;

    .line 14
    return-void
.end method
