.class public abstract Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcAbstractTimerPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;


# instance fields
.field protected mTimeInterval:I

.field protected mTimer:Landroid/os/Handler;

.field protected mTimerTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimeInterval:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimer:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference$1;-><init>(Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimerTask:Ljava/lang/Runnable;

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->initialize(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method private final initialize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->getCustomKey()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->setKey(Ljava/lang/String;)V

    .line 97
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->getCustomIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 98
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v1

    .line 104
    .restart local v1       #text:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->updateSummary()V

    .line 110
    return-void
.end method


# virtual methods
.method protected getCustomIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomTitle()Ljava/lang/String;
.end method

.method public final getTimeInterval()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimeInterval:I

    return v0
.end method

.method public final onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->unregisterTimer()V

    .line 183
    return-void
.end method

.method public final onResume(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->registerTimer()V

    .line 179
    return-void
.end method

.method public final registerTimer()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimer:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimer:Landroid/os/Handler;

    .line 162
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimer:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    :cond_0
    return-void
.end method

.method public final setTimeInterval(I)V
    .locals 0
    .parameter "timeInterval"

    .prologue
    .line 154
    iput p1, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimeInterval:I

    .line 155
    return-void
.end method

.method public final unregisterTimer()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimer:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractTimerPreference;->mTimer:Landroid/os/Handler;

    .line 170
    :cond_0
    return-void
.end method

.method public abstract updateSummary()V
.end method
