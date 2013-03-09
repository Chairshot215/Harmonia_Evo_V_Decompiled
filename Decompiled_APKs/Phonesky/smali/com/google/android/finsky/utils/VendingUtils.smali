.class public Lcom/google/android/finsky/utils/VendingUtils;
.super Ljava/lang/Object;
.source "VendingUtils.java"


# static fields
.field private static volatile sSystemWasUpgraded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/finsky/utils/VendingUtils;->sSystemWasUpgraded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScreenDimensions(Landroid/content/Context;)Landroid/util/Pair;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    const-string v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 15
    .local v4, wm:Landroid/view/WindowManager;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 16
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 20
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 21
    .local v3, width:I
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 22
    .local v1, height:I
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .local v0, dimensions:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    return-object v0
.end method

.method public static wasSystemUpgraded()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 33
    sget-boolean v3, Lcom/google/android/finsky/utils/VendingUtils;->sSystemWasUpgraded:Z

    if-eqz v3, :cond_0

    .line 50
    .local v0, currentFingerprint:Ljava/lang/String;
    .local v1, lastFingerprint:Ljava/lang/String;
    :goto_0
    return v2

    .line 38
    .end local v0           #currentFingerprint:Ljava/lang/String;
    .end local v1           #lastFingerprint:Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 39
    .restart local v0       #currentFingerprint:Ljava/lang/String;
    sget-object v3, Lcom/google/android/finsky/utils/VendingPreferences;->LAST_BUILD_FINGERPRINT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    .restart local v1       #lastFingerprint:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    const/4 v2, 0x0

    goto :goto_0

    .line 47
    :cond_1
    sput-boolean v2, Lcom/google/android/finsky/utils/VendingUtils;->sSystemWasUpgraded:Z

    .line 49
    sget-object v3, Lcom/google/android/finsky/utils/VendingPreferences;->LAST_BUILD_FINGERPRINT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3, v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method
