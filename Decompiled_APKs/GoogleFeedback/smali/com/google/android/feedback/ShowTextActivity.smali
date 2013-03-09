.class public Lcom/google/android/feedback/ShowTextActivity;
.super Landroid/app/Activity;
.source "ShowTextActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x8

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v2, 0x7f030007

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->setContentView(I)V

    .line 37
    const/high16 v2, 0x7f08

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 38
    const v2, 0x7f080002

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 39
    const v2, 0x7f080003

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 41
    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/google/android/feedback/ShowTextActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/feedback/ShowTextActivity$1;-><init>(Lcom/google/android/feedback/ShowTextActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/feedback/ShowTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "feedback.FIELD_NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, fieldName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/feedback/FeedbackActivity;->getReport()Lcom/google/android/feedback/ExtendedErrorReport;

    move-result-object v1

    .line 51
    .local v1, report:Lcom/google/android/feedback/ExtendedErrorReport;
    if-nez v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/google/android/feedback/ShowTextActivity;->finish()V

    .line 83
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v2, "stackTrace"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    const v2, 0x7f060034

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->setTitle(I)V

    .line 58
    iget-object v2, v1, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_1
    const-string v2, "info"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    const v2, 0x7f060037

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->setTitle(I)V

    .line 61
    iget-object v2, v1, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_2
    const-string v2, "systemLog"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    const v2, 0x7f060046

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->setTitle(I)V

    .line 64
    iget-object v2, v1, Lcom/google/android/feedback/ExtendedErrorReport;->systemLog:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_3
    const-string v2, "eventLog"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 66
    const v2, 0x7f060048

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->setTitle(I)V

    .line 67
    iget-object v2, v1, Lcom/google/android/feedback/ExtendedErrorReport;->eventLog:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_4
    const-string v2, "anrStackTraces"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 69
    const v2, 0x7f060049

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->setTitle(I)V

    .line 70
    iget-object v2, v1, Lcom/google/android/feedback/ExtendedErrorReport;->anrStackTraces:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_5
    const-string v2, "usageDetails"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 72
    const v2, 0x7f06004d

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->setTitle(I)V

    .line 73
    iget-object v2, v1, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$BatteryInfo;->usageDetails:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_6
    const-string v2, "checkinDetails"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 75
    const v2, 0x7f06004e

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->setTitle(I)V

    .line 76
    iget-object v2, v1, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$BatteryInfo;->checkinDetails:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 77
    :cond_7
    const-string v2, "serviceDetails"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 78
    const v2, 0x7f060055

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->setTitle(I)V

    .line 79
    iget-object v2, v1, Lcom/google/android/feedback/ExtendedErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/feedback/ShowTextActivity;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ShowTextActivity unknown EXTRA_FIELD_NAME"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected setText(Ljava/lang/String;)V
    .locals 6
    .parameter "text"

    .prologue
    const v5, 0x7f08001a

    const v4, 0x7f080018

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 89
    if-nez p1, :cond_0

    .line 90
    invoke-virtual {p0, v5}, Lcom/google/android/feedback/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 91
    invoke-virtual {p0, v4}, Lcom/google/android/feedback/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_0
    const v1, 0x7f08001b

    invoke-virtual {p0, v1}, Lcom/google/android/feedback/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    .local v0, view:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0, v4}, Lcom/google/android/feedback/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-virtual {p0, v5}, Lcom/google/android/feedback/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
