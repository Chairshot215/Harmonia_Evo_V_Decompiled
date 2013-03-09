.class public Lcom/htc/feedback/ReportActivity;
.super Landroid/app/Activity;
.source "ReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CHECK_HTC_ERROR_LOG:Ljava/lang/String; = "check_htc_error_log"

.field private static final LOG:Z = true

.field private static final REQUEST_CODE_PRIVACY:I = 0x3e8

.field private static final REQUEST_CODE_PRIVACY_AUTO:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "ReportActivity"


# instance fields
.field private mAppIcon:Lcom/htc/widget/HeaderBarImage;

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mAppLabel:Lcom/htc/widget/HeaderBarText;

.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnSend:Landroid/widget/Button;

.field private mBtnSettings:Landroid/widget/Button;

.field private mDescEditText:Landroid/widget/EditText;

.field private mHeaderBar:Lcom/htc/widget/HeaderBarTall;

.field private mLocationCheckBox:Landroid/widget/CheckBox;

.field private mPreviewLink:Landroid/widget/TextView;

.field private mPrivacyCheckBox:Landroid/widget/CheckBox;

.field private mPrivacyLink:Landroid/widget/TextView;

.field private mReport:Landroid/app/ApplicationErrorReport;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/feedback/ReportActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/feedback/ReportActivity;->mDescEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private initHeaderBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcom/htc/feedback/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarTall;

    iput-object v0, p0, Lcom/htc/feedback/ReportActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarTall;

    .line 122
    iget-object v0, p0, Lcom/htc/feedback/ReportActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarTall;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarTall;->enableLeftDivider(Z)V

    .line 123
    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/htc/feedback/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    iput-object v0, p0, Lcom/htc/feedback/ReportActivity;->mAppIcon:Lcom/htc/widget/HeaderBarImage;

    .line 124
    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcom/htc/feedback/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    iput-object v0, p0, Lcom/htc/feedback/ReportActivity;->mAppLabel:Lcom/htc/widget/HeaderBarText;

    .line 125
    iget-object v0, p0, Lcom/htc/feedback/ReportActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarTall;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarTall;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/htc/feedback/ReportActivity;->mAppIcon:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 127
    iget-object v0, p0, Lcom/htc/feedback/ReportActivity;->mAppIcon:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 128
    iget-object v0, p0, Lcom/htc/feedback/ReportActivity;->mAppIcon:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 129
    iget-object v0, p0, Lcom/htc/feedback/ReportActivity;->mAppLabel:Lcom/htc/widget/HeaderBarText;

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 130
    iget-object v0, p0, Lcom/htc/feedback/ReportActivity;->mAppLabel:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 131
    return-void
.end method

.method private prepareReportData(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 184
    const-string v4, "android.intent.extra.BUG_REPORT"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/ApplicationErrorReport;

    iput-object v4, p0, Lcom/htc/feedback/ReportActivity;->mReport:Landroid/app/ApplicationErrorReport;

    .line 185
    invoke-virtual {p0}, Lcom/htc/feedback/ReportActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 187
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Lcom/htc/feedback/ReportActivity;->mReport:Landroid/app/ApplicationErrorReport;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/feedback/ReportActivity;->mReport:Landroid/app/ApplicationErrorReport;

    iget-object v2, v4, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 188
    .local v2, packageName:Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/feedback/ReportActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 189
    iget-object v4, p0, Lcom/htc/feedback/ReportActivity;->mAppLabel:Lcom/htc/widget/HeaderBarText;

    iget-object v5, p0, Lcom/htc/feedback/ReportActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    .line 190
    iget-object v4, p0, Lcom/htc/feedback/ReportActivity;->mAppLabel:Lcom/htc/widget/HeaderBarText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v2           #packageName:Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/htc/feedback/AdditionalInfoService;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v0, additionalIntent:Landroid/content/Intent;
    const-string v4, "location"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v0}, Lcom/htc/feedback/ReportActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 199
    return-void

    .line 187
    .end local v0           #additionalIntent:Landroid/content/Intent;
    :cond_0
    :try_start_1
    const-string v2, "android"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ReportActivity"

    const-string v5, "fail to get application info"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private setValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "setting"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/feedback/ReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const/4 v1, 0x1

    .line 179
    :goto_0
    return v1

    .line 174
    :cond_0
    const-string v2, "ReportActivity"

    const-string v3, "can\'t set value in setting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ReportActivity"

    const-string v3, "error in setting preference"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v1, 0x7d0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 259
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 260
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2

    .line 261
    if-ne p2, v1, :cond_1

    .line 262
    const-string v0, "check_htc_error_log"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/htc/feedback/ReportActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 263
    iget-object v0, p0, Lcom/htc/feedback/ReportActivity;->mPrivacyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 264
    iget-object v0, p0, Lcom/htc/feedback/ReportActivity;->mBtnSend:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    const-string v0, "check_htc_error_log"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/htc/feedback/ReportActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 267
    iget-object v0, p0, Lcom/htc/feedback/ReportActivity;->mPrivacyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 268
    iget-object v0, p0, Lcom/htc/feedback/ReportActivity;->mBtnSend:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 270
    :cond_2
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 271
    if-ne p2, v1, :cond_3

    .line 272
    const-string v0, "check_htc_error_log"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/htc/feedback/ReportActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 273
    iget-object v0, p0, Lcom/htc/feedback/ReportActivity;->mPrivacyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 274
    iget-object v0, p0, Lcom/htc/feedback/ReportActivity;->mBtnSend:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 275
    :cond_3
    const/16 v0, 0x7d1

    if-ne p2, v0, :cond_0

    .line 276
    const-string v0, "check_htc_error_log"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/htc/feedback/ReportActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 277
    iget-object v0, p0, Lcom/htc/feedback/ReportActivity;->mPrivacyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 278
    iget-object v0, p0, Lcom/htc/feedback/ReportActivity;->mBtnSend:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 279
    invoke-virtual {p0}, Lcom/htc/feedback/ReportActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/16 v10, 0x3e8

    const/4 v9, 0x1

    .line 202
    iget-object v8, p0, Lcom/htc/feedback/ReportActivity;->mPreviewLink:Landroid/widget/TextView;

    if-ne p1, v8, :cond_1

    .line 203
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/htc/feedback/PreviewActivity;

    invoke-direct {v3, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v3, previewIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/feedback/ReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 205
    const-string v8, "send_location"

    iget-object v9, p0, Lcom/htc/feedback/ReportActivity;->mLocationCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v3}, Lcom/htc/feedback/ReportActivity;->startActivity(Landroid/content/Intent;)V

    .line 256
    .end local v3           #previewIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v8, p0, Lcom/htc/feedback/ReportActivity;->mPrivacyLink:Landroid/widget/TextView;

    if-ne p1, v8, :cond_2

    .line 208
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcom/htc/feedback/PrivacyPageActivity;

    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v4, privacyIntent:Landroid/content/Intent;
    const-string v8, "display_error_report_tos"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v4, v10}, Lcom/htc/feedback/ReportActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 211
    .end local v4           #privacyIntent:Landroid/content/Intent;
    :cond_2
    iget-object v8, p0, Lcom/htc/feedback/ReportActivity;->mBtnSend:Landroid/widget/Button;

    if-ne p1, v8, :cond_8

    .line 213
    const/4 v1, 0x0

    .line 214
    .local v1, doBugreport:Z
    invoke-static {}, Lcom/htc/utils/ulog/Util;->supportUserPolicy()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/htc/feedback/AdditionalInfoService;->inSystem()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 215
    new-instance v2, Lcom/htc/utils/ulog/UPolicy;

    const-string v8, "com.htc.feedback"

    invoke-direct {v2, v8}, Lcom/htc/utils/ulog/UPolicy;-><init>(Ljava/lang/String;)V

    .line 216
    .local v2, policy:Lcom/htc/utils/ulog/UPolicy;
    iget-object v5, p0, Lcom/htc/feedback/ReportActivity;->mReport:Landroid/app/ApplicationErrorReport;

    .line 217
    .local v5, reportInterface:Landroid/app/HtcIfApplicationErrorReport;
    iget-object v8, p0, Lcom/htc/feedback/ReportActivity;->mReport:Landroid/app/ApplicationErrorReport;

    if-nez v8, :cond_3

    const-string v0, "LASTKMSG"

    .line 218
    .local v0, category:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Lcom/htc/utils/ulog/UPolicy;->canLogErrorReport(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 220
    const-string v8, "ReportActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disable by UPolicy: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/htc/feedback/ReportActivity;->finish()V

    goto :goto_0

    .line 217
    .end local v0           #category:Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Landroid/app/HtcIfApplicationErrorReport;->getDropBoxTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 225
    .restart local v0       #category:Ljava/lang/String;
    :cond_4
    const-string v8, "extra"

    const-string v9, "bugreport"

    invoke-virtual {v2, v8, v9}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 228
    .end local v0           #category:Ljava/lang/String;
    .end local v2           #policy:Lcom/htc/utils/ulog/UPolicy;
    .end local v5           #reportInterface:Landroid/app/HtcIfApplicationErrorReport;
    :cond_5
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 229
    .local v6, sendIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/feedback/ReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 230
    const-string v8, "msg"

    iget-object v9, p0, Lcom/htc/feedback/ReportActivity;->mDescEditText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v8, "send_location"

    iget-object v9, p0, Lcom/htc/feedback/ReportActivity;->mLocationCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    iget-object v8, p0, Lcom/htc/feedback/ReportActivity;->mReport:Landroid/app/ApplicationErrorReport;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/htc/feedback/ReportActivity;->mReport:Landroid/app/ApplicationErrorReport;

    iget v8, v8, Landroid/app/ApplicationErrorReport;->type:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v9, "userdebug"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    if-eqz v1, :cond_7

    .line 234
    :cond_6
    const-class v8, Lcom/htc/feedback/FeedbackBugReportActivity;

    invoke-virtual {v6, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v6}, Lcom/htc/feedback/ReportActivity;->startActivity(Landroid/content/Intent;)V

    .line 240
    :goto_2
    invoke-virtual {p0}, Lcom/htc/feedback/ReportActivity;->finish()V

    goto/16 :goto_0

    .line 237
    :cond_7
    const-class v8, Lcom/htc/feedback/FeedbackService;

    invoke-virtual {v6, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, v6}, Lcom/htc/feedback/ReportActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 241
    .end local v1           #doBugreport:Z
    .end local v6           #sendIntent:Landroid/content/Intent;
    :cond_8
    iget-object v8, p0, Lcom/htc/feedback/ReportActivity;->mBtnSettings:Landroid/widget/Button;

    if-ne p1, v8, :cond_9

    .line 242
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.htc.feedback.REPORT_SETTINGS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v7, settingIntent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/htc/feedback/ReportActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 244
    .end local v7           #settingIntent:Landroid/content/Intent;
    :cond_9
    iget-object v8, p0, Lcom/htc/feedback/ReportActivity;->mBtnCancel:Landroid/widget/Button;

    if-ne p1, v8, :cond_a

    .line 245
    invoke-virtual {p0}, Lcom/htc/feedback/ReportActivity;->finish()V

    goto/16 :goto_0

    .line 246
    :cond_a
    iget-object v8, p0, Lcom/htc/feedback/ReportActivity;->mPrivacyCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v8, :cond_0

    .line 247
    iget-object v8, p0, Lcom/htc/feedback/ReportActivity;->mPrivacyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 248
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcom/htc/feedback/PrivacyPageActivity;

    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .restart local v4       #privacyIntent:Landroid/content/Intent;
    const-string v8, "display_error_report_tos"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v4, v10}, Lcom/htc/feedback/ReportActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 252
    .end local v4           #privacyIntent:Landroid/content/Intent;
    :cond_b
    iget-object v8, p0, Lcom/htc/feedback/ReportActivity;->mBtnSend:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 253
    const-string v8, "check_htc_error_log"

    const-string v9, "0"

    invoke-direct {p0, v8, v9}, Lcom/htc/feedback/ReportActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const-string v1, "ReportActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/htc/feedback/ReportActivity;->setContentView(I)V

    .line 60
    const v1, 0x7f0a000b

    invoke-virtual {p0, v1}, Lcom/htc/feedback/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/feedback/ReportActivity;->mPreviewLink:Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Lcom/htc/feedback/ReportActivity;->mPreviewLink:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v1, 0x7f0a000d

    invoke-virtual {p0, v1}, Lcom/htc/feedback/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/feedback/ReportActivity;->mPrivacyLink:Landroid/widget/TextView;

    .line 65
    iget-object v1, p0, Lcom/htc/feedback/ReportActivity;->mPrivacyLink:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v1, 0x7f0a0007

    invoke-virtual {p0, v1}, Lcom/htc/feedback/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/htc/feedback/ReportActivity;->mDescEditText:Landroid/widget/EditText;

    .line 69
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const v1, 0x7f0a0008

    invoke-virtual {p0, v1}, Lcom/htc/feedback/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v1, p0, Lcom/htc/feedback/ReportActivity;->mDescEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 87
    :goto_0
    const v1, 0x7f0a0009

    invoke-virtual {p0, v1}, Lcom/htc/feedback/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/htc/feedback/ReportActivity;->mLocationCheckBox:Landroid/widget/CheckBox;

    .line 88
    const v1, 0x7f0a000e

    invoke-virtual {p0, v1}, Lcom/htc/feedback/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/htc/feedback/ReportActivity;->mPrivacyCheckBox:Landroid/widget/CheckBox;

    .line 89
    iget-object v1, p0, Lcom/htc/feedback/ReportActivity;->mPrivacyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-direct {p0}, Lcom/htc/feedback/ReportActivity;->initHeaderBar()V

    .line 94
    const v1, 0x7f0a0011

    invoke-virtual {p0, v1}, Lcom/htc/feedback/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/feedback/ReportActivity;->mBtnSend:Landroid/widget/Button;

    .line 95
    iget-object v1, p0, Lcom/htc/feedback/ReportActivity;->mBtnSend:Landroid/widget/Button;

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 96
    iget-object v1, p0, Lcom/htc/feedback/ReportActivity;->mBtnSend:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v1, p0, Lcom/htc/feedback/ReportActivity;->mBtnSend:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 98
    const v1, 0x7f0a000f

    invoke-virtual {p0, v1}, Lcom/htc/feedback/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/feedback/ReportActivity;->mBtnCancel:Landroid/widget/Button;

    .line 99
    iget-object v1, p0, Lcom/htc/feedback/ReportActivity;->mBtnCancel:Landroid/widget/Button;

    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 100
    iget-object v1, p0, Lcom/htc/feedback/ReportActivity;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v1, p0, Lcom/htc/feedback/ReportActivity;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Lcom/htc/feedback/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/feedback/ReportActivity;->mBtnSettings:Landroid/widget/Button;

    .line 103
    iget-object v1, p0, Lcom/htc/feedback/ReportActivity;->mBtnSettings:Landroid/widget/Button;

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 104
    iget-object v1, p0, Lcom/htc/feedback/ReportActivity;->mBtnSettings:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v1, p0, Lcom/htc/feedback/ReportActivity;->mBtnSettings:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    invoke-virtual {p0}, Lcom/htc/feedback/ReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/feedback/ReportActivity;->prepareReportData(Landroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Lcom/htc/feedback/ReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "check_htc_error_log"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 110
    iget-object v1, p0, Lcom/htc/feedback/ReportActivity;->mPrivacyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    iget-object v1, p0, Lcom/htc/feedback/ReportActivity;->mBtnSend:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    :goto_1
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/htc/feedback/ReportActivity;->mDescEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 75
    iget-object v1, p0, Lcom/htc/feedback/ReportActivity;->mDescEditText:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMinLines(I)V

    .line 76
    iget-object v1, p0, Lcom/htc/feedback/ReportActivity;->mDescEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/htc/feedback/ReportActivity$1;

    invoke-direct {v2, p0}, Lcom/htc/feedback/ReportActivity$1;-><init>(Lcom/htc/feedback/ReportActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0

    .line 114
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/feedback/PrivacyPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, privacyIntent:Landroid/content/Intent;
    const-string v1, "display_error_report_tos"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/htc/feedback/ReportActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 155
    const-string v1, "ReportActivity"

    const-string v2, "onNewIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/htc/feedback/ReportActivity;->setIntent(Landroid/content/Intent;)V

    .line 158
    invoke-direct {p0, p1}, Lcom/htc/feedback/ReportActivity;->prepareReportData(Landroid/content/Intent;)V

    .line 159
    invoke-virtual {p0}, Lcom/htc/feedback/ReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "check_htc_error_log"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 160
    iget-object v1, p0, Lcom/htc/feedback/ReportActivity;->mPrivacyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 161
    iget-object v1, p0, Lcom/htc/feedback/ReportActivity;->mBtnSend:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 167
    :goto_0
    return-void

    .line 163
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/feedback/PrivacyPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v0, privacyIntent:Landroid/content/Intent;
    const-string v1, "display_error_report_tos"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/htc/feedback/ReportActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 136
    const-string v2, "ReportActivity"

    const-string v3, "onResume()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, autoSend:I
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/feedback/ReportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_error_report_auto_send"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 145
    :goto_0
    if-ne v0, v5, :cond_0

    .line 146
    iget-object v2, p0, Lcom/htc/feedback/ReportActivity;->mBtnSend:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    const-string v2, "check_htc_error_log"

    const-string v3, "1"

    invoke-direct {p0, v2, v3}, Lcom/htc/feedback/ReportActivity;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    iget-object v2, p0, Lcom/htc/feedback/ReportActivity;->mPrivacyCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 150
    :cond_0
    return-void

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "ReportActivity"

    const-string v3, "error in reading auto send setting"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    const/4 v0, 0x0

    goto :goto_0
.end method
