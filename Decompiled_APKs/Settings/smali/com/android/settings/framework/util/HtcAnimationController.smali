.class public final Lcom/android/settings/framework/util/HtcAnimationController;
.super Ljava/lang/Object;
.source "HtcAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/android/settings/framework/util/HtcAnimationController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/util/HtcAnimationController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getCurrentAnimationType()Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    .line 142
    sget-object v1, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->NO_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    .line 143
    .local v1, animationType:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;
    const/4 v2, 0x0

    .line 144
    .local v2, animationValue:F
    const/4 v0, 0x0

    .line 147
    .local v0, animationScales:[F
    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .line 152
    .local v5, windowManager:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v5}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v0

    .line 153
    array-length v6, v0

    if-lt v6, v7, :cond_0

    .line 154
    const/4 v6, 0x0

    aget v6, v0, v6

    add-float/2addr v6, v8

    float-to-int v6, v6

    rem-int/lit8 v6, v6, 0xa

    int-to-float v2, v6

    .line 156
    :cond_0
    array-length v6, v0

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 157
    const/4 v6, 0x1

    aget v6, v0, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-float/2addr v6, v8

    float-to-int v6, v6

    and-int/lit8 v6, v6, 0x7

    mul-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    add-float/2addr v2, v6

    .line 170
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 171
    .local v3, lowerBound:F
    sget-object v6, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->SOME_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    invoke-virtual {v6}, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->getAnimationValue()F

    move-result v4

    .line 172
    .local v4, value:F
    cmpg-float v6, v3, v4

    if-gez v6, :cond_2

    cmpg-float v6, v4, v2

    if-gtz v6, :cond_2

    .line 173
    sget-object v1, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->SOME_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    .line 176
    :cond_2
    move v3, v4

    .line 177
    sget-object v6, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->ALL_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    invoke-virtual {v6}, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->getAnimationValue()F

    move-result v4

    .line 178
    cmpg-float v6, v3, v4

    if-gez v6, :cond_3

    cmpg-float v6, v4, v2

    if-gtz v6, :cond_3

    .line 179
    sget-object v1, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->ALL_ANIMATIONS:Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    .line 182
    :cond_3
    return-object v1

    .line 159
    .end local v3           #lowerBound:F
    .end local v4           #value:F
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public static setAnimationType(FF)V
    .locals 1
    .parameter "windowAnimationScale"
    .parameter "transitionAnimationScale"

    .prologue
    .line 117
    invoke-static {p0, p1}, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->toAnimationType(FF)Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/util/HtcAnimationController;->setAnimationType(Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;)V

    .line 119
    return-void
.end method

.method public static setAnimationType(Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;)V
    .locals 4
    .parameter "animationType"

    .prologue
    .line 127
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 130
    .local v1, windowManager:Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/util/HtcAnimationController$AnimationType;->getAnimationScales()[F

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/settings/framework/util/HtcAnimationController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
