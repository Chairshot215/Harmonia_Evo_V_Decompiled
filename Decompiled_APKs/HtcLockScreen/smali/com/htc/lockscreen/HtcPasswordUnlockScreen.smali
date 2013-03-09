.class public Lcom/htc/lockscreen/HtcPasswordUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "HtcPasswordUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcPasswordUnlockScreen"


# instance fields
.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationHardKeyboardHidden:I

.field private mCreationOrientation:I

.field private mIsAlpha:Z

.field private mUnlockView:Lcom/htc/lockscreen/app/unlockview/UnlockView;

.field mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/Context;)V
    .locals 13
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "pluginContext"

    .prologue
    .line 44
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 46
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 48
    iget v1, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    .line 49
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mCreationOrientation:I

    .line 51
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v11

    .line 52
    .local v11, quality:I
    const/high16 v1, 0x4

    if-eq v1, v11, :cond_0

    const/high16 v1, 0x5

    if-ne v1, v11, :cond_3

    :cond_0
    const/4 v10, 0x1

    .line 54
    .local v10, isAlpha:Z
    :goto_0
    iput-boolean v10, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mIsAlpha:Z

    .line 56
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-eqz v1, :cond_4

    .line 57
    const/4 v7, 0x0

    .line 58
    .local v7, background:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    move-object/from16 v0, p6

    invoke-static {v0, v1}, Lcom/htc/util/res/HtcResUtil;->getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    .line 59
    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    .end local v7           #background:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-boolean v1, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mIsAlpha:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isSupportPhone()Z

    move-result v1

    if-nez v1, :cond_5

    .line 67
    :cond_1
    new-instance v1, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;

    move-object/from16 v2, p6

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/htc/lockscreen/app/unlockview/PasswordUnlockView;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v1, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mUnlockView:Lcom/htc/lockscreen/app/unlockview/UnlockView;

    .line 82
    :goto_2
    iget-object v1, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mUnlockView:Lcom/htc/lockscreen/app/unlockview/UnlockView;

    invoke-virtual {v1}, Lcom/htc/lockscreen/app/unlockview/UnlockView;->init()Landroid/view/View;

    move-result-object v8

    .line 83
    .local v8, content:Landroid/view/View;
    invoke-virtual {p0, v8}, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->addView(Landroid/view/View;)V

    .line 84
    const v1, 0x7f0a0028

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 85
    .local v9, faceLockAreaView:Landroid/view/View;
    if-eqz v9, :cond_2

    .line 86
    const v1, 0x102029e

    invoke-virtual {v9, v1}, Landroid/view/View;->setId(I)V

    .line 89
    :cond_2
    move-object/from16 v0, p4

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 90
    return-void

    .line 52
    .end local v8           #content:Landroid/view/View;
    .end local v9           #faceLockAreaView:Landroid/view/View;
    .end local v10           #isAlpha:Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 61
    .restart local v10       #isAlpha:Z
    :cond_4
    iget-object v1, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/lockscreen/app/ThemeHelper;->getThemeContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v12

    .line 62
    .local v12, theme:Landroid/content/Context;
    iget-object v1, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mContext:Landroid/content/Context;

    const-string v2, "common_glance_bkg"

    const v3, 0x20801c1

    invoke-static {v12, v1, v2, v3}, Lcom/htc/lockscreen/app/ThemeHelper;->getDrawable(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 74
    .end local v12           #theme:Landroid/content/Context;
    :cond_5
    new-instance v1, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;

    move-object/from16 v2, p6

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/htc/lockscreen/app/unlockview/PinUnlockView;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v1, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mUnlockView:Lcom/htc/lockscreen/app/unlockview/UnlockView;

    goto :goto_2
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mUnlockView:Lcom/htc/lockscreen/app/unlockview/UnlockView;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/unlockview/UnlockView;->cleanup()V

    .line 96
    invoke-virtual {p0}, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->removeAllViews()V

    .line 97
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mUnlockView:Lcom/htc/lockscreen/app/unlockview/UnlockView;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/htc/lockscreen/app/unlockview/UnlockView;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    .line 165
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mIsAlpha:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/lockscreen/app/MyProjectSettings;->isSupportPhone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 152
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    if-eq v0, v1, :cond_1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 157
    :cond_1
    return-void
.end method

.method public onDeviceLockChange(Z)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 120
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 188
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 189
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mUnlockView:Lcom/htc/lockscreen/app/unlockview/UnlockView;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/unlockview/UnlockView;->onLayout()V

    .line 190
    const-string v0, "HtcPasswordUnlockScreen"

    const-string v1, "onLayout"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mUnlockView:Lcom/htc/lockscreen/app/unlockview/UnlockView;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/unlockview/UnlockView;->onPause()V

    .line 110
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mUnlockView:Lcom/htc/lockscreen/app/unlockview/UnlockView;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/app/unlockview/UnlockView;->onPhoneStateChanged(I)V

    .line 207
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 125
    return-void
.end method

.method public onRefreshCarrierInfo(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 131
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mUnlockView:Lcom/htc/lockscreen/app/unlockview/UnlockView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lockscreen/app/unlockview/UnlockView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mUnlockView:Lcom/htc/lockscreen/app/unlockview/UnlockView;

    invoke-virtual {v0}, Lcom/htc/lockscreen/app/unlockview/UnlockView;->onResume()V

    .line 115
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 136
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "focus"

    .prologue
    .line 170
    iget-object v1, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mUnlockView:Lcom/htc/lockscreen/app/unlockview/UnlockView;

    invoke-virtual {v1, p1}, Lcom/htc/lockscreen/app/unlockview/UnlockView;->onWindowFocusChanged(Z)V

    .line 171
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 172
    iget-object v1, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 173
    .local v0, config:Landroid/content/res/Configuration;
    const-string v1, "HtcPasswordUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowFocusChanged bFocus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCreationOrientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mCreationOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_0

    .line 177
    iget-object v1, p0, Lcom/htc/lockscreen/HtcPasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 179
    :cond_0
    return-void
.end method
