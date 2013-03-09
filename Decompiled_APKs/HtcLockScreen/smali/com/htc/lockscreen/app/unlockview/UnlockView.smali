.class public abstract Lcom/htc/lockscreen/app/unlockview/UnlockView;
.super Ljava/lang/Object;
.source "UnlockView.java"


# static fields
.field protected static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UnlockView"

.field protected static final USE_EMERGENCYDIAL:Z


# instance fields
.field protected final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field protected mConfiguration:Landroid/content/res/Configuration;

.field protected mContext:Landroid/content/Context;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->USE_EMERGENCYDIAL:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 0
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mConfiguration:Landroid/content/res/Configuration;

    .line 39
    iput-object p3, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 40
    iput-object p4, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 41
    iput-object p5, p0, Lcom/htc/lockscreen/app/unlockview/UnlockView;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 42
    return-void
.end method


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract init()Landroid/view/View;
.end method

.method protected isEmergencyNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "edit"

    .prologue
    .line 56
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/htc/lockscreen/widget/DialUtil;->EMERGENCY_NUMBERS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 57
    sget-object v1, Lcom/htc/lockscreen/widget/DialUtil;->EMERGENCY_NUMBERS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const/4 v1, 0x1

    .line 61
    :goto_1
    return v1

    .line 56
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public abstract onKeyEvent(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyboardChanged(Z)Z
.end method

.method public onLayout()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public abstract onPause()V
.end method

.method public abstract onPhoneStateChanged(I)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract requestFocus(ILandroid/graphics/Rect;)Z
.end method
