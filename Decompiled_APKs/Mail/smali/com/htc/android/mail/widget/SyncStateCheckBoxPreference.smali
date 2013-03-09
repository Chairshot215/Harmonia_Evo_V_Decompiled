.class public Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SyncStateCheckBoxPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mFailed:Z

.field private mIsActive:Z

.field private mIsPending:Z

.field private mOneTimeSyncMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "authority"

    .prologue
    const/4 v1, 0x0

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v1, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mIsActive:Z

    .line 32
    iput-boolean v1, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 33
    iput-boolean v1, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mFailed:Z

    .line 41
    iput-boolean v1, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    .line 53
    iput-object p2, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    .line 54
    iput-object p3, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    .line 55
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v0, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mIsActive:Z

    .line 32
    iput-boolean v0, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 33
    iput-boolean v0, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mFailed:Z

    .line 41
    iput-boolean v0, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    .line 45
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 46
    iput-object v1, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    .line 47
    iput-object v1, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public isOneTimeSyncMode()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 13
    .parameter "view"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 61
    const v8, 0x1010001

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 63
    .local v5, syncActiveView:Landroid/widget/ImageView;
    const v8, 0x1010002

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 64
    .local v7, syncPendingView:Landroid/view/View;
    const/high16 v8, 0x101

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 66
    .local v6, syncFailedView:Landroid/view/View;
    iget-boolean v8, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mIsActive:Z

    if-eqz v8, :cond_0

    move v8, v9

    :goto_0
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 71
    .local v0, anim:Landroid/graphics/drawable/AnimationDrawable;
    iget-boolean v8, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mIsActive:Z

    if-eqz v8, :cond_1

    .line 72
    new-instance v8, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference$1;

    invoke-direct {v8, p0, v0}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference$1;-><init>(Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 77
    const/4 v3, 0x0

    .line 78
    .local v3, showPending:Z
    const/4 v2, 0x0

    .line 90
    .local v2, showError:Z
    :goto_1
    if-eqz v2, :cond_3

    move v8, v9

    :goto_2
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 91
    if-eqz v3, :cond_4

    iget-boolean v8, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mIsActive:Z

    if-nez v8, :cond_4

    move v8, v9

    :goto_3
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 95
    const v8, 0x1020001

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, checkBox:Landroid/view/View;
    iget-boolean v8, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    if-eqz v8, :cond_5

    .line 97
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 104
    const v8, 0x1020010

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 106
    .local v4, summary:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v10, 0x7f0b031f

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-virtual {v8, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .end local v4           #summary:Landroid/widget/TextView;
    :goto_4
    return-void

    .end local v0           #anim:Landroid/graphics/drawable/AnimationDrawable;
    .end local v1           #checkBox:Landroid/view/View;
    .end local v2           #showError:Z
    .end local v3           #showPending:Z
    :cond_0
    move v8, v10

    .line 66
    goto :goto_0

    .line 80
    .restart local v0       #anim:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 81
    iget-boolean v8, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mIsPending:Z

    if-eqz v8, :cond_2

    .line 82
    const/4 v3, 0x1

    .line 83
    .restart local v3       #showPending:Z
    const/4 v2, 0x0

    .restart local v2       #showError:Z
    goto :goto_1

    .line 85
    .end local v2           #showError:Z
    .end local v3           #showPending:Z
    :cond_2
    const/4 v3, 0x0

    .line 86
    .restart local v3       #showPending:Z
    iget-boolean v2, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mFailed:Z

    .restart local v2       #showError:Z
    goto :goto_1

    :cond_3
    move v8, v10

    .line 90
    goto :goto_2

    :cond_4
    move v8, v10

    .line 91
    goto :goto_3

    .line 108
    .restart local v1       #checkBox:Landroid/view/View;
    :cond_5
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    if-nez v0, :cond_0

    .line 165
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 167
    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 0
    .parameter "isActive"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mIsActive:Z

    .line 120
    invoke-virtual {p0}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 121
    return-void
.end method

.method public setFailed(Z)V
    .locals 0
    .parameter "failed"

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mFailed:Z

    .line 142
    invoke-virtual {p0}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 143
    return-void
.end method

.method public setOneTimeSyncMode(Z)V
    .locals 0
    .parameter "oneTimeSyncMode"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    .line 150
    invoke-virtual {p0}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 151
    return-void
.end method

.method public setPending(Z)V
    .locals 0
    .parameter "isPending"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 131
    invoke-virtual {p0}, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 132
    return-void
.end method
