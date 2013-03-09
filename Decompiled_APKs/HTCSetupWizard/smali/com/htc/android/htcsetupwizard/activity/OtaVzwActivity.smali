.class public Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;
.super Landroid/app/Activity;
.source "OtaVzwActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field public static final EXIT_OTAVZW:I = -0x2

.field public static final FAILED:I = 0x2

.field public static final INITIAL:I = 0x3

.field private static final OTA_REQ:Ljava/lang/String; = "ota_required"

.field public static final OTA_RESULT:Ljava/lang/String; = "ota_result"

.field private static final REPEAT_LIMIT:I = 0x96

.field private static final REPEAT_TIME:I = 0x1f4

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OOBE_OtaVzwActivity"

.field public static final TRY_AGAIN:I = 0x1


# instance fields
.field private btnActivate:Landroid/widget/Button;

.field private btnEmergencyCall:Landroid/widget/Button;

.field private btnNext:Landroid/widget/Button;

.field private exit_OtaVzw:Z

.field mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/view/View;

.field private mRepeatCount:I

.field private mbBackFinish:Z

.field private mbLaunchedNotByOOBE:Z

.field private tvOtaDescription:Landroid/widget/TextView;

.field private tvOtaTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mbBackFinish:Z

    .line 64
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mbLaunchedNotByOOBE:Z

    .line 66
    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->exit_OtaVzw:Z

    .line 67
    iput v0, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mRepeatCount:I

    .line 246
    new-instance v0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity$1;-><init>(Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;)V

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->exit_OtaVzw:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->exit_OtaVzw:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->checkStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mProgressBar:Landroid/view/View;

    return-object v0
.end method

.method private checkStatus()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const-wide/16 v9, 0x1f4

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/16 v6, 0x8

    .line 289
    const-string v3, "OOBE_OtaVzwActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkStatus, mRepeatCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mRepeatCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ota_required"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 291
    .local v2, result:I
    const-string v3, "OOBE_OtaVzwActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OtaVzwActivity.OTA_REQ ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ota_result"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 301
    iget v3, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mRepeatCount:I

    const/16 v4, 0x96

    if-gt v3, v4, :cond_6

    .line 305
    if-ne v2, v7, :cond_1

    .line 306
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->tvOtaDescription:Landroid/widget/TextView;

    const v4, 0x7f0a00bc

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 307
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->btnActivate:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 308
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 309
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 310
    const-string v3, "OOBE_OtaVzwActivity"

    const-string v4, "checkStatus() TRY_AGAIN"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 313
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->tvOtaDescription:Landroid/widget/TextView;

    const v4, 0x7f0a0115

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 314
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->btnActivate:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 315
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 316
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 317
    const-string v3, "OOBE_OtaVzwActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkStatus() FAILED or -1 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    :cond_3
    if-nez v2, :cond_5

    .line 320
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, phoneNumber:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0116

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, congratulations:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->tvOtaDescription:Landroid/widget/TextView;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v11

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->btnActivate:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 324
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 326
    iget-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mbLaunchedNotByOOBE:Z

    if-eqz v3, :cond_4

    .line 328
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->btnNext:Landroid/widget/Button;

    const v4, 0x7f0a0013

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 329
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 330
    const-string v3, "OOBE_OtaVzwActivity"

    const-string v4, "mbLaunchedNotByOOBE = true ;checkStatus() SUCCESS"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_4
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v11, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 333
    const-string v3, "OOBE_OtaVzwActivity"

    const-string v4, "checkStatus() SUCCESS"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 335
    .end local v0           #congratulations:Ljava/lang/String;
    .end local v1           #phoneNumber:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 336
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->tvOtaDescription:Landroid/widget/TextView;

    const v4, 0x7f0a00bc

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 337
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->btnActivate:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 338
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 339
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 340
    const-string v3, "OOBE_OtaVzwActivity"

    const-string v4, "checkStatus() INITIAL"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 344
    :cond_6
    const-string v3, "OOBE_OtaVzwActivity"

    const-string v4, "time out, check Tmo Client Service Status"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private initialize()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 93
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, -0x1

    .line 95
    .local v2, result:I
    if-eqz v0, :cond_0

    .line 96
    const-string v4, "SelfFinishBackKeyPressed"

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mbBackFinish:Z

    .line 97
    const-string v4, "LaunchedNotByOOBE"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mbLaunchedNotByOOBE:Z

    .line 98
    const-string v4, "OOBE_OtaVzwActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "############## mbLaunchedNotByOOBE ################# "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mbLaunchedNotByOOBE:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    const v4, 0x7f03001e

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->setContentView(I)V

    .line 103
    const v4, 0x7f0d003f

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 105
    .local v1, layout:Landroid/widget/LinearLayout;
    const v4, 0x7f0d003e

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 106
    .local v3, view:Landroid/view/View;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 107
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 108
    iget-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mbLaunchedNotByOOBE:Z

    if-nez v4, :cond_5

    .line 109
    const/16 v4, 0x21

    invoke-static {p0, v1, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 113
    :goto_0
    const/high16 v4, 0x7f0d

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->tvOtaTitle:Landroid/widget/TextView;

    .line 114
    const v4, 0x7f0d003b

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->tvOtaDescription:Landroid/widget/TextView;

    .line 116
    const v4, 0x7f0d0029

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->btnEmergencyCall:Landroid/widget/Button;

    .line 117
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->btnEmergencyCall:Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 118
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->btnEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_1
    const v4, 0x7f0d003c

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->btnActivate:Landroid/widget/Button;

    .line 121
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->btnActivate:Landroid/widget/Button;

    if-eqz v4, :cond_2

    .line 122
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->btnActivate:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_2
    const v4, 0x7f0d0004

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->btnNext:Landroid/widget/Button;

    .line 125
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->btnNext:Landroid/widget/Button;

    if-eqz v4, :cond_3

    .line 126
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->btnNext:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :cond_3
    const v4, 0x7f0d003d

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mProgressBar:Landroid/view/View;

    .line 129
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ota_required"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 130
    const-string v4, "OOBE_OtaVzwActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "############## End of initial 1 #################"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->checkStatus()V

    .line 132
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ota_required"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    .line 134
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mProgressBar:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :cond_4
    const-string v4, "OOBE_OtaVzwActivity"

    const-string v5, "############## End of initial 2 #################"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 111
    :cond_5
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private showEmergencyDial()V
    .locals 7

    .prologue
    const/high16 v6, 0x1080

    .line 226
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 227
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 228
    .local v0, callState:I
    if-nez v0, :cond_0

    .line 229
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v2}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->startActivity(Landroid/content/Intent;)V

    .line 238
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 233
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 234
    .local v1, inCallIntent:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.InCallScreen"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 185
    const-string v0, "OOBE_OtaVzwActivity"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 203
    :goto_0
    :sswitch_0
    return-void

    .line 191
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->showEmergencyDial()V

    goto :goto_0

    .line 199
    :sswitch_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->setResult(I)V

    .line 200
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->finish()V

    goto :goto_0

    .line 189
    :sswitch_data_0
    .sparse-switch
        0x7f0d0004 -> :sswitch_2
        0x7f0d0029 -> :sswitch_1
        0x7f0d003c -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->initialize()V

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 80
    const-string v0, "OOBE_OtaVzwActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->initialize()V

    .line 83
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 163
    const-string v0, "OOBE_OtaVzwActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 208
    const-string v1, "OOBE_OtaVzwActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    packed-switch p1, :pswitch_data_0

    .line 221
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 212
    :pswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->mbBackFinish:Z

    if-nez v1, :cond_0

    .line 213
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/OtaVzwActivity;->setResult(I)V

    .line 214
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 155
    const-string v0, "OOBE_OtaVzwActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 169
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 142
    const-string v0, "OOBE_OtaVzwActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 174
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 150
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 180
    return-void
.end method
