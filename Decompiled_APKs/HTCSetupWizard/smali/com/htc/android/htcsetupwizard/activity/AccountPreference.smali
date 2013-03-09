.class public Lcom/htc/android/htcsetupwizard/activity/AccountPreference;
.super Lcom/htc/preference/HtcPreference;
.source "AccountPreference.java"


# static fields
.field private static final IFDBG:Z = false

.field public static final STATUS_LOGIN:I = 0x1

.field public static final STATUS_LOGOUT:I = 0x0

.field public static final STATUS_RADIOOFF:I = 0x1

.field public static final STATUS_RADIOON:I = 0x0

.field public static final STATUS_SUMMARY_SINGLE_LINE_OFF:I = 0x1

.field public static final STATUS_SUMMARY_SINGLE_LINE_ON:I = 0x0

.field public static final STATUS_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OOBE_AccountPreference"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIcon1:I

.field private mIcon1_off:I

.field private mIcon2:I

.field private mIcon2_off:I

.field private mRadioBtnStatus:I

.field private mSummarySinglelineStatus:I

.field private mloginStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, -0x1

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mloginStatus:I

    .line 48
    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mRadioBtnStatus:I

    .line 52
    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mSummarySinglelineStatus:I

    .line 54
    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon1:I

    .line 55
    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon2:I

    .line 56
    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon1_off:I

    .line 57
    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon2_off:I

    .line 63
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setLayoutResource(I)V

    .line 64
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method


# virtual methods
.method public getRadioBtnStatus()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mRadioBtnStatus:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 194
    iget v1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mloginStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 196
    .local v0, chars:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    .end local v0           #chars:Ljava/lang/CharSequence;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    .line 204
    return-void
.end method

.method public isLogin()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mloginStatus:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 77
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 85
    const v7, 0x1020010

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 87
    .local v6, tvSummary:Landroid/widget/TextView;
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mSummarySinglelineStatus:I

    if-eq v7, v8, :cond_0

    .line 89
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mSummarySinglelineStatus:I

    if-nez v7, :cond_2

    .line 91
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 99
    :cond_0
    :goto_0
    const v7, 0x1010006

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 100
    .local v0, featureIcon1:Landroid/widget/ImageView;
    const v7, 0x1010007

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 101
    .local v4, statusIcon1:Landroid/widget/ImageView;
    const v7, 0x1010003

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 102
    .local v1, featureIcon2:Landroid/widget/ImageView;
    const v7, 0x1010004

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 103
    .local v5, statusIcon2:Landroid/widget/ImageView;
    const/high16 v7, 0x101

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 105
    .local v3, radioIcon:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/htc/android/htcsetupwizard/MainActivity;->getIconConnectedId(Landroid/content/Context;)I

    move-result v2

    .line 107
    .local v2, icon_connected:I
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mRadioBtnStatus:I

    if-nez v7, :cond_3

    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon1:I

    if-eq v7, v8, :cond_3

    .line 109
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon1:I

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    :cond_1
    :goto_1
    return-void

    .line 93
    .end local v0           #featureIcon1:Landroid/widget/ImageView;
    .end local v1           #featureIcon2:Landroid/widget/ImageView;
    .end local v2           #icon_connected:I
    .end local v3           #radioIcon:Landroid/widget/ImageView;
    .end local v4           #statusIcon1:Landroid/widget/ImageView;
    .end local v5           #statusIcon2:Landroid/widget/ImageView;
    :cond_2
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mSummarySinglelineStatus:I

    if-ne v7, v9, :cond_0

    .line 95
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .line 112
    .restart local v0       #featureIcon1:Landroid/widget/ImageView;
    .restart local v1       #featureIcon2:Landroid/widget/ImageView;
    .restart local v2       #icon_connected:I
    .restart local v3       #radioIcon:Landroid/widget/ImageView;
    .restart local v4       #statusIcon1:Landroid/widget/ImageView;
    .restart local v5       #statusIcon2:Landroid/widget/ImageView;
    :cond_3
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mRadioBtnStatus:I

    if-ne v7, v9, :cond_4

    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon1_off:I

    if-eq v7, v8, :cond_4

    .line 114
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon1_off:I

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 117
    :cond_4
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon1_off:I

    if-eq v7, v8, :cond_5

    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon2_off:I

    if-eq v7, v8, :cond_5

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 118
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon1_off:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon2_off:I

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mloginStatus:I

    if-ne v7, v9, :cond_1

    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon1:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon2:I

    if-eq v7, v8, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 122
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon1:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon2:I

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 128
    :cond_5
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon1_off:I

    if-eq v7, v8, :cond_6

    if-eqz v0, :cond_6

    .line 129
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon1_off:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mloginStatus:I

    if-ne v7, v9, :cond_1

    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon1:I

    if-eq v7, v8, :cond_1

    if-eqz v4, :cond_1

    .line 132
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon1:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 137
    :cond_6
    iget v7, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mloginStatus:I

    if-ne v7, v9, :cond_1

    if-eqz v4, :cond_1

    .line 138
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public setIcon(II)V
    .locals 0
    .parameter "icon1"
    .parameter "icon1_off"

    .prologue
    .line 170
    iput p1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon1:I

    .line 171
    iput p2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon1_off:I

    .line 172
    return-void
.end method

.method public setIcon(IIII)V
    .locals 0
    .parameter "icon1"
    .parameter "icon1_off"
    .parameter "icon2"
    .parameter "icon2_off"

    .prologue
    .line 175
    iput p1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon1:I

    .line 176
    iput p3, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon2:I

    .line 177
    iput p2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon1_off:I

    .line 178
    iput p4, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mIcon2_off:I

    .line 179
    return-void
.end method

.method public setLoginStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 162
    iput p1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mloginStatus:I

    .line 163
    return-void
.end method

.method public setLoginStatus(ILjava/lang/String;)V
    .locals 0
    .parameter "status"
    .parameter "summary"

    .prologue
    .line 157
    iput p1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mloginStatus:I

    .line 158
    invoke-virtual {p0, p2}, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method public setRadioBtnStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 182
    iput p1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mRadioBtnStatus:I

    .line 183
    return-void
.end method

.method public setSummarySingleline(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 166
    iput p1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountPreference;->mSummarySinglelineStatus:I

    .line 167
    return-void
.end method
