.class public abstract Lcom/htc/lockscreen/LockScreeenClass;
.super Landroid/widget/LinearLayout;
.source "LockScreeenClass.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/LockPatternKeyguardView$IKeyguardScreenCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcLockScreen"


# instance fields
.field protected mConfiguration:Landroid/content/res/Configuration;

.field protected mCreatedInKeyboardOpen:Z

.field protected mCreatedInPortrait:Z

.field protected final mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field protected final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mResContext:Landroid/content/Context;

.field protected mSymContext:Landroid/content/Context;

.field protected final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field protected m_callState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/Context;)V
    .locals 1
    .parameter "systemContext"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "thisContext"

    .prologue
    .line 51
    invoke-direct {p0, p6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/LockScreeenClass;->m_callState:I

    .line 52
    iput-object p1, p0, Lcom/htc/lockscreen/LockScreeenClass;->mSymContext:Landroid/content/Context;

    .line 53
    iput-object p6, p0, Lcom/htc/lockscreen/LockScreeenClass;->mResContext:Landroid/content/Context;

    .line 54
    iput-object p3, p0, Lcom/htc/lockscreen/LockScreeenClass;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 55
    iput-object p4, p0, Lcom/htc/lockscreen/LockScreeenClass;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 56
    iput-object p5, p0, Lcom/htc/lockscreen/LockScreeenClass;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 57
    iput-object p2, p0, Lcom/htc/lockscreen/LockScreeenClass;->mConfiguration:Landroid/content/res/Configuration;

    .line 59
    invoke-virtual {p0, p2}, Lcom/htc/lockscreen/LockScreeenClass;->applyConfiguration(Landroid/content/res/Configuration;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/Context;)V
    .locals 1
    .parameter "systemContext"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "thisContext"

    .prologue
    .line 70
    invoke-direct {p0, p5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/LockScreeenClass;->m_callState:I

    .line 71
    iput-object p1, p0, Lcom/htc/lockscreen/LockScreeenClass;->mSymContext:Landroid/content/Context;

    .line 72
    iput-object p5, p0, Lcom/htc/lockscreen/LockScreeenClass;->mResContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/htc/lockscreen/LockScreeenClass;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 74
    iput-object p3, p0, Lcom/htc/lockscreen/LockScreeenClass;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 75
    iput-object p4, p0, Lcom/htc/lockscreen/LockScreeenClass;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/LockScreeenClass;->mConfiguration:Landroid/content/res/Configuration;

    .line 78
    iget-object v0, p0, Lcom/htc/lockscreen/LockScreeenClass;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/LockScreeenClass;->applyConfiguration(Landroid/content/res/Configuration;)V

    .line 82
    return-void
.end method


# virtual methods
.method protected applyConfiguration(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "configuration"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 85
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/lockscreen/LockScreeenClass;->mCreatedInPortrait:Z

    .line 86
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/htc/lockscreen/LockScreeenClass;->mCreatedInKeyboardOpen:Z

    .line 87
    return-void

    :cond_0
    move v0, v2

    .line 85
    goto :goto_0

    :cond_1
    move v1, v2

    .line 86
    goto :goto_1
.end method

.method public cleanUp()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public disableGC(Z)V
    .locals 0
    .parameter "isTrue"

    .prologue
    .line 138
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 96
    const-string v2, "HtcLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationChanged orientation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lcom/htc/lockscreen/LockScreeenClass;->mConfiguration:Landroid/content/res/Configuration;

    .line 98
    iget-boolean v1, p0, Lcom/htc/lockscreen/LockScreeenClass;->mCreatedInPortrait:Z

    .line 99
    .local v1, oldInPortrait:Z
    iget-boolean v0, p0, Lcom/htc/lockscreen/LockScreeenClass;->mCreatedInKeyboardOpen:Z

    .line 100
    .local v0, oldInKeyboardOpen:Z
    const-string v2, "HtcLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationChanged oldInPortrait:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/LockScreeenClass;->applyConfiguration(Landroid/content/res/Configuration;)V

    .line 102
    const-string v2, "HtcLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationChanged mCreatedInPortrait:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/lockscreen/LockScreeenClass;->mCreatedInPortrait:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-boolean v2, p0, Lcom/htc/lockscreen/LockScreeenClass;->mCreatedInPortrait:Z

    if-eq v1, v2, :cond_0

    .line 104
    iget-boolean v2, p0, Lcom/htc/lockscreen/LockScreeenClass;->mCreatedInPortrait:Z

    invoke-virtual {p0, v2}, Lcom/htc/lockscreen/LockScreeenClass;->onOrientationChange(Z)V

    .line 106
    :cond_0
    iget-boolean v2, p0, Lcom/htc/lockscreen/LockScreeenClass;->mCreatedInKeyboardOpen:Z

    if-eq v0, v2, :cond_1

    .line 107
    iget-boolean v2, p0, Lcom/htc/lockscreen/LockScreeenClass;->mCreatedInKeyboardOpen:Z

    invoke-virtual {p0, v2}, Lcom/htc/lockscreen/LockScreeenClass;->onKeyboardChange(Z)V

    .line 109
    :cond_1
    return-void
.end method

.method public abstract onKeyboardChange(Z)V
.end method

.method public abstract onOrientationChange(Z)V
.end method

.method public recreateAll()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/lockscreen/LockScreeenClass;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v1, p0, Lcom/htc/lockscreen/LockScreeenClass;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateAll(Landroid/content/res/Configuration;)V

    .line 131
    return-void
.end method

.method public recreateMe()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/lockscreen/LockScreeenClass;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v1, p0, Lcom/htc/lockscreen/LockScreeenClass;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 135
    return-void
.end method

.method public setPokeWakeLockTime(I)V
    .locals 1
    .parameter "ms"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/lockscreen/LockScreeenClass;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->setPokeWakeLockTime(I)V

    .line 142
    return-void
.end method
