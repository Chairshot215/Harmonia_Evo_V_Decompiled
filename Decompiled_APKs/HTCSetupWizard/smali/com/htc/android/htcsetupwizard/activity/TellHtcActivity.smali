.class public Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;
.super Landroid/app/Activity;
.source "TellHtcActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUEST_CODE_PRIVACY_USAGE:I = 0x3eb

.field public static final RESULT_CODE_ACCEPT:I = 0x7d0

.field public static final RESULT_CODE_BACK:I = 0x7d2

.field public static final RESULT_CODE_DECLINE:I = 0x7d1

.field public static final RESULT_CODE_SETTING:I = 0x7d3

.field private static final TAG:Ljava/lang/String; = "OOBE_TellHtcActivity"

.field private static final UNKNOWN:I = -0x1

.field private static mActivityRequestCode:I

.field private static mActivityResultCode:I

.field public static mbFirstTellHtc:Z

.field public static mbHaveSeenPrivacy:Z

.field public static mbPressNext:Z


# instance fields
.field private mAllowCheckTellHtc:Landroid/widget/CheckBox;

.field private mEnabled:Z

.field private mbBackFinish:Z

.field private mbFinalPage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbFirstTellHtc:Z

    .line 83
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbHaveSeenPrivacy:Z

    .line 84
    sput-boolean v0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbPressNext:Z

    .line 92
    const/16 v0, 0x3eb

    sput v0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mActivityRequestCode:I

    .line 93
    const/4 v0, -0x1

    sput v0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mActivityResultCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbBackFinish:Z

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbFinalPage:Z

    .line 86
    iput-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->enableTellHtc()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->disableTellHtc()V

    return-void
.end method

.method private disableTellHtc()V
    .locals 3

    .prologue
    .line 231
    const-string v1, "OOBE_TellHtcActivity"

    const-string v2, "disableTellHtc()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v1, "send_htc_application_log"

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, mTellHtc:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_2

    .line 236
    :cond_0
    sget-boolean v1, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbHaveSeenPrivacy:Z

    if-eqz v1, :cond_1

    const-string v1, "false"

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->writeUsageLog(Ljava/lang/String;)V

    .line 237
    :cond_1
    const-string v1, "send_htc_application_log"

    const-string v2, "0"

    invoke-direct {p0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 241
    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbHaveSeenPrivacy:Z

    .line 242
    return-void
.end method

.method private enableTellHtc()V
    .locals 3

    .prologue
    .line 246
    const-string v1, "OOBE_TellHtcActivity"

    const-string v2, "enableTellHtc()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v1, -0x1

    sput v1, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mActivityRequestCode:I

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/android/htcsetupwizard/activity/TellHtcPrivacyStatementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 251
    return-void
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "setting"

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 112
    :goto_0
    return-object v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "OOBE_TellHtcActivity"

    const-string v2, "error in setting preference"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    const-string v1, ""

    goto :goto_0
.end method

.method private initialize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 152
    const v4, 0x7f030029

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->setContentView(I)V

    .line 155
    const v4, 0x7f0d003f

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 157
    .local v2, layout:Landroid/widget/LinearLayout;
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V

    .line 158
    invoke-static {p0, p0}, Lcom/htc/android/htcsetupwizard/MainActivity;->setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V

    .line 159
    const/16 v4, 0x1e

    invoke-static {p0, v2, v4}, Lcom/htc/android/htcsetupwizard/MainActivity;->setProgressBar(Landroid/content/Context;Landroid/widget/LinearLayout;I)Lcom/htc/android/htcsetupwizard/MainActivity$ProgressBarInfo;

    .line 162
    const v4, 0x7f0d0047

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 163
    .local v3, txtDesc:Landroid/widget/TextView;
    invoke-static {}, Lcom/htc/android/htcsetupwizard/OOBE_Device;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0a00f0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20a001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 165
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 172
    const v4, 0x7f0d0003

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 173
    .local v0, btnBack:Landroid/widget/Button;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_1
    const v4, 0x7f0d0004

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 177
    .local v1, btnNext:Landroid/widget/Button;
    if-eqz v1, :cond_2

    .line 179
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-boolean v4, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbFinalPage:Z

    if-eqz v4, :cond_2

    .line 182
    const v4, 0x7f0a0013

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 183
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 188
    :cond_2
    const v4, 0x7f0d0048

    invoke-virtual {p0, v4}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mAllowCheckTellHtc:Landroid/widget/CheckBox;

    .line 189
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mAllowCheckTellHtc:Landroid/widget/CheckBox;

    if-eqz v4, :cond_3

    .line 191
    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mAllowCheckTellHtc:Landroid/widget/CheckBox;

    new-instance v5, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity$1;

    invoke-direct {v5, p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity$1;-><init>(Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    :cond_3
    return-void
.end method

.method private sendUlogIfFirstTellHtc()V
    .locals 2

    .prologue
    .line 374
    sget-boolean v0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbFirstTellHtc:Z

    if-eqz v0, :cond_0

    .line 376
    const-string v0, "1"

    const-string v1, "send_htc_application_log"

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    const-string v0, "true"

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->writeUsageLog(Ljava/lang/String;)V

    .line 385
    :cond_0
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->setResult(I)V

    .line 386
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->finish()V

    .line 387
    return-void

    .line 380
    :cond_1
    const-string v0, "send_htc_application_log"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 381
    const-string v0, "false"

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->writeUsageLog(Ljava/lang/String;)V

    .line 382
    const-string v0, "send_htc_application_log"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private setDefaultValue()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 282
    const-string v1, "OOBE_TellHtcActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultvalue(): send_htc_application_log = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "send_htc_application_log"

    invoke-direct {p0, v3}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mAllowCheckTellHtc:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 287
    const-string v1, "send_htc_application_log"

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, send_htc:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 290
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mAllowCheckTellHtc:Landroid/widget/CheckBox;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 291
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v4, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbHaveSeenPrivacy:Z

    .line 300
    .end local v0           #send_htc:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 295
    .restart local v0       #send_htc:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mAllowCheckTellHtc:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method static setTellHtcResult(II)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"

    .prologue
    .line 480
    sput p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mActivityRequestCode:I

    .line 481
    sput p1, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mActivityResultCode:I

    .line 482
    return-void
.end method

.method private setValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "setting"
    .parameter "value"

    .prologue
    .line 98
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const/4 v1, 0x1

    .line 102
    :goto_0
    return v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "OOBE_TellHtcActivity"

    const-string v2, "error in setting preference"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeUsageLog(Ljava/lang/String;)V
    .locals 6
    .parameter "isOptIn"

    .prologue
    .line 212
    const-string v1, "OOBE_TellHtcActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tell htc setting changed, isOptIn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 217
    .local v0, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v1, "com.htc.android.htcsetupwizard"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "feedback_usageOpt"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "is_optIn"

    invoke-interface {v1, v2, p1}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "timestamp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 223
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 226
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 227
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 368
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 369
    const-string v0, "OOBE_TellHtcActivity"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 256
    const/4 v0, -0x1

    sput v0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mActivityResultCode:I

    .line 257
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 258
    const-string v0, "OOBE_TellHtcActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    packed-switch p1, :pswitch_data_0

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 262
    :pswitch_0
    sget-boolean v0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbPressNext:Z

    if-eqz v0, :cond_0

    .line 264
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 269
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->sendUlogIfFirstTellHtc()V

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_0
    .end packed-switch

    .line 264
    :pswitch_data_1
    .packed-switch 0x7d0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 486
    const-string v0, "OOBE_TellHtcActivity"

    const-string v1, "onApplyThemeResource()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 488
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 453
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mEnabled:Z

    .line 454
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 410
    :goto_0
    return-void

    .line 394
    :pswitch_0
    sget-boolean v0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbHaveSeenPrivacy:Z

    if-nez v0, :cond_0

    .line 396
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbPressNext:Z

    .line 397
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->enableTellHtc()V

    goto :goto_0

    .line 401
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->sendUlogIfFirstTellHtc()V

    goto :goto_0

    .line 406
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->setResult(I)V

    .line 407
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->finish()V

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0003
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 144
    const-string v0, "OOBE_TellHtcActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->initialize()V

    .line 147
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 148
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    const-string v3, "OOBE_TellHtcActivity"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0, v1}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->requestWindowFeature(I)Z

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 124
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 126
    const-string v3, "SelfFinishBackKeyPressed"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbBackFinish:Z

    .line 127
    const-string v3, "FinalPage"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbFinalPage:Z

    .line 128
    const-string v3, "FirstTellHtc"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbFirstTellHtc:Z

    .line 129
    const-string v3, "OOBE_TellHtcActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mbBackFinish   = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbBackFinish:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nmbFinalPage    = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbFinalPage:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nmbFirstTellHtc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbFirstTellHtc:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    sput-boolean v2, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbPressNext:Z

    .line 136
    sget-boolean v3, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbHaveSeenPrivacy:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbFirstTellHtc:Z

    if-nez v3, :cond_2

    :goto_0
    sput-boolean v1, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbHaveSeenPrivacy:Z

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->initialize()V

    .line 139
    return-void

    :cond_2
    move v1, v2

    .line 136
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 345
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 346
    const-string v0, "OOBE_TellHtcActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mAllowCheckTellHtc:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mAllowCheckTellHtc:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 460
    :cond_0
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 464
    sparse-switch p2, :sswitch_data_0

    .line 473
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 470
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 464
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 429
    const-string v1, "OOBE_TellHtcActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    sparse-switch p1, :sswitch_data_0

    .line 447
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 434
    :sswitch_1
    iget-boolean v1, p0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mbBackFinish:Z

    if-nez v1, :cond_0

    .line 436
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->setResult(I)V

    .line 437
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 431
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 415
    const-string v0, "OOBE_TellHtcActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    packed-switch p1, :pswitch_data_0

    .line 422
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 419
    :pswitch_0
    const v0, 0x7f0d0003

    const v1, 0x7f0d0004

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcsetupwizard/MainActivity;->switchKeyFocus(Landroid/app/Activity;II)V

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 339
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 340
    const-string v0, "OOBE_TellHtcActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 352
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 318
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 319
    const-string v0, "OOBE_TellHtcActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget v0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mActivityResultCode:I

    if-eq v0, v3, :cond_0

    .line 322
    const-string v0, "OOBE_TellHtcActivity"

    const-string v1, "call onActivityResult by onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    sget v0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mActivityRequestCode:I

    sget v1, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mActivityResultCode:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 325
    :cond_0
    sget v0, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->mActivityRequestCode:I

    if-eq v0, v3, :cond_1

    .line 326
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->setDefaultValue()V

    .line 328
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 357
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 332
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 333
    const-string v0, "OOBE_TellHtcActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 361
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 362
    const-string v0, "OOBE_TellHtcActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void
.end method

.method showDisableWarningMessage()V
    .locals 3

    .prologue
    .line 304
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/activity/TellHtcActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00ee

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 313
    return-void
.end method
