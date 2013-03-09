.class public Lcom/android/settings/HapticUtil;
.super Ljava/lang/Object;
.source "HapticUtil.java"


# static fields
.field public static HAPTIC_FEEDBACK_THEME_DISABLE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Settings-HapticUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "haptic_feedback_disable"

    sput-object v0, Lcom/android/settings/HapticUtil;->HAPTIC_FEEDBACK_THEME_DISABLE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "Settings-HapticUtil"

    const-string v1, "Dummy class do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method

.method public static getRingtoneIvtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isHapticVibrateSupport()Z
    .locals 2

    .prologue
    .line 57
    const-string v0, "Settings-HapticUtil"

    const-string v1, "Haptic nothing in current build"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public static listNotifyTone()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public static listRigtones(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public SetVibrateTheme(Ljava/lang/String;)Z
    .locals 1
    .parameter "strValue"

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getVibrateTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public prepareThemeList(Ljava/util/Vector;Ljava/util/Vector;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, entries:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/CharSequence;>;"
    .local p2, values:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    return v0
.end method
