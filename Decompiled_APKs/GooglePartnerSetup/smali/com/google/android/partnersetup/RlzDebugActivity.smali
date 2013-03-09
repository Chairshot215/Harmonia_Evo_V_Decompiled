.class public Lcom/google/android/partnersetup/RlzDebugActivity;
.super Landroid/app/Activity;
.source "RlzDebugActivity.java"


# instance fields
.field private current_oem_mode:I

.field private mACAP:Landroid/widget/TextView;

.field private mActivated:Landroid/widget/TextView;

.field private mBackoff:Landroid/widget/TextView;

.field private mBrandCode:Landroid/widget/TextView;

.field private mDelayAfterEvent:Landroid/widget/TextView;

.field private mEnabled:Landroid/widget/TextView;

.field private mGUID:Landroid/widget/TextView;

.field private mInitialDelay:Landroid/widget/TextView;

.field private mMaxRetryInterval:Landroid/widget/TextView;

.field private mMaxTableSize:Landroid/widget/TextView;

.field private mOEM:Landroid/widget/RadioGroup;

.field private mPID:Landroid/widget/TextView;

.field private mPingInterval:Landroid/widget/TextView;

.field private mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

.field private mWakeTime:Landroid/widget/TextView;

.field private unknownProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/partnersetup/RlzDebugActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->current_oem_mode:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/partnersetup/RlzDebugActivity;)Lcom/google/android/partnersetup/RlzPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    return-object v0
.end method

.method private getUnknownPropertyString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->unknownProperty:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzDebugActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 178
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f030003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->unknownProperty:Ljava/lang/String;

    .line 180
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_0
    iget-object v1, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->unknownProperty:Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/high16 v0, 0x7f02

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->setContentView(I)V

    .line 62
    new-instance v0, Lcom/google/android/partnersetup/RlzPreferences;

    invoke-direct {v0, p0}, Lcom/google/android/partnersetup/RlzPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    .line 64
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mBrandCode:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mGUID:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mPID:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mActivated:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mACAP:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mWakeTime:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mBackoff:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mOEM:Landroid/widget/RadioGroup;

    .line 72
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mOEM:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/google/android/partnersetup/RlzDebugActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/partnersetup/RlzDebugActivity$1;-><init>(Lcom/google/android/partnersetup/RlzDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 85
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mEnabled:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mMaxTableSize:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mPingInterval:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mInitialDelay:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mMaxRetryInterval:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mDelayAfterEvent:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/google/android/partnersetup/RlzDebugActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/partnersetup/RlzDebugActivity$2;-><init>(Lcom/google/android/partnersetup/RlzDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f050011

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/google/android/partnersetup/RlzDebugActivity$3;

    invoke-direct {v1, p0}, Lcom/google/android/partnersetup/RlzDebugActivity$3;-><init>(Lcom/google/android/partnersetup/RlzDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f050012

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/google/android/partnersetup/RlzDebugActivity$4;

    invoke-direct {v1, p0}, Lcom/google/android/partnersetup/RlzDebugActivity$4;-><init>(Lcom/google/android/partnersetup/RlzDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v0, 0x7f050013

    invoke-virtual {p0, v0}, Lcom/google/android/partnersetup/RlzDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/google/android/partnersetup/RlzDebugActivity$5;

    invoke-direct {v1, p0}, Lcom/google/android/partnersetup/RlzDebugActivity$5;-><init>(Lcom/google/android/partnersetup/RlzDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 137
    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mBrandCode:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v8}, Lcom/google/android/partnersetup/RlzPreferences;->getBrandCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v7}, Lcom/google/android/partnersetup/RlzPreferences;->getDeviceGUID()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, guid:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzDebugActivity;->getUnknownPropertyString()Ljava/lang/String;

    move-result-object v2

    .line 143
    :cond_0
    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mGUID:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v7}, Lcom/google/android/partnersetup/RlzPreferences;->getDevicePID()Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, pid:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/google/android/partnersetup/RlzDebugActivity;->getUnknownPropertyString()Ljava/lang/String;

    move-result-object v4

    .line 149
    :cond_1
    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mPID:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mActivated:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v8}, Lcom/google/android/partnersetup/RlzPreferences;->isActivationPingPrepared()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mACAP:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzDebugActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/partnersetup/RlzAcap;->generateAcap(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v7}, Lcom/google/android/partnersetup/RlzPreferences;->getAlarmWakeTime()J

    move-result-wide v5

    .line 156
    .local v5, wakeTime:J
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 157
    .local v1, dateFormat:Ljava/text/DateFormat;
    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mWakeTime:Landroid/widget/TextView;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v7}, Lcom/google/android/partnersetup/RlzPreferences;->getBackoffTime()I

    move-result v0

    .line 160
    .local v0, backoff:I
    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mBackoff:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v7}, Lcom/google/android/partnersetup/RlzPreferences;->isOEMModeEnabled()Z

    move-result v3

    .line 163
    .local v3, oem_pref:Z
    if-eqz v3, :cond_2

    const v7, 0x7f05000e

    :goto_0
    iput v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->current_oem_mode:I

    .line 164
    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mOEM:Landroid/widget/RadioGroup;

    iget v8, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->current_oem_mode:I

    invoke-virtual {v7, v8}, Landroid/widget/RadioGroup;->check(I)V

    .line 166
    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mEnabled:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v8}, Lcom/google/android/partnersetup/RlzPreferences;->isRlzEnabledGservices()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mMaxTableSize:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v8}, Lcom/google/android/partnersetup/RlzPreferences;->getMaxTableSize()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mPingInterval:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v8}, Lcom/google/android/partnersetup/RlzPreferences;->getPingInterval()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mInitialDelay:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v8}, Lcom/google/android/partnersetup/RlzPreferences;->getInitialDelay()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mMaxRetryInterval:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v8}, Lcom/google/android/partnersetup/RlzPreferences;->getMaxRetryInterval()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v7, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mDelayAfterEvent:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/partnersetup/RlzDebugActivity;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {v8}, Lcom/google/android/partnersetup/RlzPreferences;->getDelayAfterEvent()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    return-void

    .line 163
    :cond_2
    const v7, 0x7f05000f

    goto :goto_0
.end method
