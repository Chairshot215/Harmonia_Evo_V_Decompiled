.class public Lcom/android/phone/htc/HtcCallReminderActivity;
.super Lcom/android/phone/htc/HtcDeferPersonActivity;
.source "HtcCallReminderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_SNOOZE_TIMEOUT:J = 0x927c0L

.field private static final TAG:Ljava/lang/String; = "HtcCallReminderActivity"


# instance fields
.field private mCallBtn:Landroid/widget/Button;

.field private mDismissBtn:Landroid/widget/Button;

.field private mSnoozeBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/phone/htc/HtcDeferPersonActivity;-><init>()V

    return-void
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v0, p1}, Lcom/android/phone/util/CallDeferUtils;->initFromIntent(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Intent;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 95
    return-void
.end method

.method private onCallClick()V
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v2, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mHasPhoto:Z

    invoke-static {v1, v2}, Lcom/android/phone/util/CallDeferUtils;->createDialIntent(Lcom/android/internal/telephony/CallerInfo;Z)Landroid/content/Intent;

    move-result-object v0

    .line 162
    .local v0, dialIntent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 166
    const-string v1, "HtcCallReminderActivity"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/htc/HtcCallReminderActivity;->finish()V

    .line 172
    return-void

    .line 169
    :cond_0
    invoke-static {v0}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private onDismissClick()V
    .locals 0

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/phone/htc/HtcCallReminderActivity;->finish()V

    .line 195
    return-void
.end method

.method private onSnoozeClick()V
    .locals 8

    .prologue
    .line 176
    iget-object v4, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v4}, Lcom/android/phone/util/CallDeferUtils;->launchCallReminder(Lcom/android/internal/telephony/CallerInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 178
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/phone/htc/HtcCallReminderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 181
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x927c0

    add-long v2, v4, v6

    .line 182
    .local v2, triggerTime:J
    iget-object v4, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/phone/util/CallDeferUtils;->schduleDeferReminder(Landroid/content/Context;Landroid/content/Intent;JLcom/android/internal/telephony/CallerInfo;)Z

    .line 189
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #triggerTime:J
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/htc/HtcCallReminderActivity;->finish()V

    .line 190
    return-void
.end method

.method private updateViews()V
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/phone/htc/HtcCallReminderActivity;->updateNameView()V

    .line 129
    invoke-virtual {p0}, Lcom/android/phone/htc/HtcCallReminderActivity;->updateNumberView()V

    .line 131
    iget-object v0, p0, Lcom/android/phone/htc/HtcCallReminderActivity;->mCallBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/phone/htc/HtcCallReminderActivity;->mCallBtn:Landroid/widget/Button;

    const v1, 0x20c0170

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/phone/htc/HtcCallReminderActivity;->mSnoozeBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/phone/htc/HtcCallReminderActivity;->mSnoozeBtn:Landroid/widget/Button;

    const v1, 0x20c00ac

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/phone/htc/HtcCallReminderActivity;->mDismissBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/phone/htc/HtcCallReminderActivity;->mDismissBtn:Landroid/widget/Button;

    const v1, 0x20c00ab

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 142
    :cond_2
    return-void
.end method


# virtual methods
.method protected findInitViews()V
    .locals 7

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/phone/htc/HtcDeferPersonActivity;->findInitViews()V

    .line 101
    const v1, 0x2020001

    invoke-virtual {p0, v1}, Lcom/android/phone/htc/HtcCallReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/htc/HtcCallReminderActivity;->mCallBtn:Landroid/widget/Button;

    .line 102
    iget-object v1, p0, Lcom/android/phone/htc/HtcCallReminderActivity;->mCallBtn:Landroid/widget/Button;

    const-string v2, "call"

    invoke-static {v1, v2}, Lcom/android/phone/htc/HtcCallReminderActivity;->isViewValid(Landroid/view/View;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/phone/htc/HtcCallReminderActivity;->mCallBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_0
    const v1, 0x2020003

    invoke-virtual {p0, v1}, Lcom/android/phone/htc/HtcCallReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/htc/HtcCallReminderActivity;->mSnoozeBtn:Landroid/widget/Button;

    .line 107
    iget-object v1, p0, Lcom/android/phone/htc/HtcCallReminderActivity;->mSnoozeBtn:Landroid/widget/Button;

    const-string v2, "snooze"

    invoke-static {v1, v2}, Lcom/android/phone/htc/HtcCallReminderActivity;->isViewValid(Landroid/view/View;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/android/phone/htc/HtcCallReminderActivity;->mSnoozeBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_1
    const v1, 0x2020004

    invoke-virtual {p0, v1}, Lcom/android/phone/htc/HtcCallReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/htc/HtcCallReminderActivity;->mDismissBtn:Landroid/widget/Button;

    .line 113
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    const-string v1, "common_mainnav_center_selector"

    const-string v2, "drawable"

    invoke-virtual {p0}, Lcom/android/phone/htc/HtcCallReminderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "phone_btn_center_defer"

    const-string v5, "drawable"

    const-string v6, "com.android.phone"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 115
    .local v0, resid:I
    iget-object v1, p0, Lcom/android/phone/htc/HtcCallReminderActivity;->mDismissBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 117
    .end local v0           #resid:I
    :cond_2
    iget-object v1, p0, Lcom/android/phone/htc/HtcCallReminderActivity;->mDismissBtn:Landroid/widget/Button;

    const-string v2, "dismiss"

    invoke-static {v1, v2}, Lcom/android/phone/htc/HtcCallReminderActivity;->isViewValid(Landroid/view/View;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    iget-object v1, p0, Lcom/android/phone/htc/HtcCallReminderActivity;->mDismissBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v1, p0, Lcom/android/phone/htc/HtcCallReminderActivity;->mDismissBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    iget-object v1, p0, Lcom/android/phone/htc/HtcCallReminderActivity;->mDismissBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 123
    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 69
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 87
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/phone/htc/HtcDeferPersonActivity;->onClick(Landroid/view/View;)V

    .line 91
    :goto_0
    return-void

    .line 72
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/htc/HtcCallReminderActivity;->onCallClick()V

    goto :goto_0

    .line 77
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/htc/HtcCallReminderActivity;->onSnoozeClick()V

    goto :goto_0

    .line 82
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/htc/HtcCallReminderActivity;->onDismissClick()V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x2020001
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/phone/htc/HtcDeferPersonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/android/phone/htc/HtcCallReminderActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/phone/htc/HtcCallReminderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/htc/HtcCallReminderActivity;->initFromIntent(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/phone/htc/HtcCallReminderActivity;->findInitViews()V

    .line 64
    invoke-direct {p0}, Lcom/android/phone/htc/HtcCallReminderActivity;->updateViews()V

    .line 65
    return-void
.end method
