.class public Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "SyncStateCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference$StartAnimation;
    }
.end annotation


# instance fields
.field private mFailed:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mIsPending:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-boolean v0, p0, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->mIsActive:Z

    .line 18
    iput-boolean v0, p0, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 19
    iput-boolean v0, p0, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->mFailed:Z

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->mHandler:Landroid/os/Handler;

    .line 23
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 24
    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->mIsActive:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 39
    const v7, 0x1010001

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 40
    .local v4, syncActiveView:Landroid/widget/ImageView;
    const v7, 0x1010002

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 41
    .local v6, syncPendingView:Landroid/view/View;
    const/high16 v7, 0x101

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 43
    .local v5, syncFailedView:Landroid/view/View;
    iget-boolean v7, p0, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->mIsActive:Z

    if-eqz v7, :cond_0

    move v7, v8

    :goto_0
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 47
    .local v0, anim:Landroid/graphics/drawable/AnimationDrawable;
    iget-boolean v7, p0, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->mIsActive:Z

    if-eqz v7, :cond_1

    .line 49
    new-instance v3, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference$StartAnimation;

    invoke-direct {v3, p0, v0}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference$StartAnimation;-><init>(Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 50
    .local v3, startAnimation:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference$StartAnimation;
    iget-object v7, p0, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x64

    invoke-virtual {v7, v3, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, showPending:Z
    const/4 v1, 0x0

    .line 64
    .end local v3           #startAnimation:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference$StartAnimation;
    .local v1, showError:Z
    :goto_1
    if-eqz v1, :cond_3

    move v7, v8

    :goto_2
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 65
    if-eqz v2, :cond_4

    iget-boolean v7, p0, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->mIsActive:Z

    if-nez v7, :cond_4

    :goto_3
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 66
    return-void

    .end local v0           #anim:Landroid/graphics/drawable/AnimationDrawable;
    .end local v1           #showError:Z
    .end local v2           #showPending:Z
    :cond_0
    move v7, v9

    .line 43
    goto :goto_0

    .line 54
    .restart local v0       #anim:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 55
    iget-boolean v7, p0, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->mIsPending:Z

    if-eqz v7, :cond_2

    .line 56
    const/4 v2, 0x1

    .line 57
    .restart local v2       #showPending:Z
    const/4 v1, 0x0

    .restart local v1       #showError:Z
    goto :goto_1

    .line 59
    .end local v1           #showError:Z
    .end local v2           #showPending:Z
    :cond_2
    const/4 v2, 0x0

    .line 60
    .restart local v2       #showPending:Z
    iget-boolean v1, p0, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->mFailed:Z

    .restart local v1       #showError:Z
    goto :goto_1

    :cond_3
    move v7, v9

    .line 64
    goto :goto_2

    :cond_4
    move v8, v9

    .line 65
    goto :goto_3
.end method

.method public setActive(Z)V
    .locals 0
    .parameter "isActive"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->mIsActive:Z

    .line 74
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 75
    return-void
.end method

.method public setFailed(Z)V
    .locals 0
    .parameter "failed"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->mFailed:Z

    .line 96
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 97
    return-void
.end method

.method public setPending(Z)V
    .locals 0
    .parameter "isPending"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 87
    invoke-virtual {p0}, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 88
    return-void
.end method
