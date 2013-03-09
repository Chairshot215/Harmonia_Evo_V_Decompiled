.class public Lcom/htc/android/htcime/tools/Calibration;
.super Lcom/htc/android/htcime/util/IMEBaseActivity;
.source "Calibration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CALIBRATION_TEXT_FILE:Ljava/lang/String; = "calibration.txt"

.field private static final DEBUG:Z = false

.field private static final FOR_CALIBRATION:I = 0x0

.field private static final FOR_RECORDER:I = 0x1

.field private static final INTENT_EXTRA_SHOW_HINT:Ljava/lang/String; = "ShowHint"

.field private static final INTENT_EXTRA_SIP_TYPE:Ljava/lang/String; = "SipType"

.field private static final LOG_TAG:Ljava/lang/String; = "Calibration"

.field private static final MENU_BIAS:I = 0x3e9

.field private static final MENU_IMETEST:I = 0x3eb

.field private static final MENU_SIMULATE:I = 0x3ea

.field static final SIMULATE_START:I = 0xa

.field static final SIMULATE_STOP:I = 0xb


# instance fields
.field private mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

.field mCalibrationText:Ljava/lang/String;

.field private mColorSpan:Landroid/text/style/ForegroundColorSpan;

.field mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mFilename:Ljava/lang/String;

.field mIntent:Landroid/content/Intent;

.field mIsRestart:Z

.field private mProcType:I

.field private mShowMenu:Z

.field private mSpannableCalibrationText:Landroid/text/SpannableString;

.field private mText:Landroid/widget/TextView;

.field mXmlId:I

.field runSimulateHandler:Landroid/os/Handler;

.field waitDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEBaseActivity;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/htc/android/htcime/tools/Calibration;->mFilename:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/htc/android/htcime/tools/Calibration;->mCalibrationText:Ljava/lang/String;

    .line 64
    iput v1, p0, Lcom/htc/android/htcime/tools/Calibration;->mProcType:I

    .line 70
    iput-object v0, p0, Lcom/htc/android/htcime/tools/Calibration;->mSpannableCalibrationText:Landroid/text/SpannableString;

    .line 71
    iput-object v0, p0, Lcom/htc/android/htcime/tools/Calibration;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 73
    iput-object v0, p0, Lcom/htc/android/htcime/tools/Calibration;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 74
    iput-object v0, p0, Lcom/htc/android/htcime/tools/Calibration;->waitDialog:Landroid/app/ProgressDialog;

    .line 76
    iput-boolean v1, p0, Lcom/htc/android/htcime/tools/Calibration;->mIsRestart:Z

    .line 79
    new-instance v0, Lcom/htc/android/htcime/tools/Calibration$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/tools/Calibration$1;-><init>(Lcom/htc/android/htcime/tools/Calibration;)V

    iput-object v0, p0, Lcom/htc/android/htcime/tools/Calibration;->runSimulateHandler:Landroid/os/Handler;

    .line 253
    iput-boolean v1, p0, Lcom/htc/android/htcime/tools/Calibration;->mShowMenu:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/tools/Calibration;)Lcom/htc/android/htcime/tools/CalibrationView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    return-object v0
.end method

.method private getCalibrationTextFromFile()Ljava/lang/String;
    .locals 8

    .prologue
    .line 195
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    .local v4, sb:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IME_Test"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "calibration.txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/Calibration;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not find file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 201
    const/4 v5, 0x0

    .line 214
    .end local v2           #f:Ljava/io/File;
    :goto_0
    return-object v5

    .line 204
    .restart local v2       #f:Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 205
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, s:Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_2

    .line 207
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 211
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #s:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 212
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Calibration"

    const-string v6, "Exception in getCalibrationTextFromFile()"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method protected completed()V
    .locals 4

    .prologue
    .line 226
    iget v1, p0, Lcom/htc/android/htcime/tools/Calibration;->mProcType:I

    packed-switch v1, :pswitch_data_0

    .line 235
    :goto_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/Calibration;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/android/htcime/tools/Calibration$2;

    invoke-direct {v2, p0}, Lcom/htc/android/htcime/tools/Calibration$2;-><init>(Lcom/htc/android/htcime/tools/Calibration;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/tools/Calibration;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 247
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 248
    .local v0, h:Landroid/os/Handler;
    new-instance v1, Lcom/htc/android/htcime/tools/Calibration$3;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/tools/Calibration$3;-><init>(Lcom/htc/android/htcime/tools/Calibration;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    return-void

    .line 228
    .end local v0           #h:Landroid/os/Handler;
    :pswitch_0
    iget-object v1, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/tools/CalibrationView;->saveBiasValue()V

    goto :goto_0

    .line 231
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/tools/CalibrationView;->saveToFile()V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected doButtonFunction()V
    .locals 4

    .prologue
    .line 312
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcime/tools/Calibration;->mIntent:Landroid/content/Intent;

    .line 313
    iget-object v1, p0, Lcom/htc/android/htcime/tools/Calibration;->mIntent:Landroid/content/Intent;

    const-string v2, "com.htc.android.htcime"

    const-string v3, "com.htc.android.htcime.tools.Calibration"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/Calibration;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SipType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 316
    iget-object v1, p0, Lcom/htc/android/htcime/tools/Calibration;->mIntent:Landroid/content/Intent;

    const-string v2, "SipType"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    :cond_0
    iget-boolean v1, p0, Lcom/htc/android/htcime/tools/Calibration;->mShowMenu:Z

    if-eqz v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/htc/android/htcime/tools/Calibration;->mIntent:Landroid/content/Intent;

    const-string v2, "htc.intent.category.HTC_IME_Test"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/htcime/tools/Calibration;->mIsRestart:Z

    .line 320
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/Calibration;->finish()V

    .line 321
    return-void
.end method

.method protected moveCursor(I)V
    .locals 4
    .parameter "idx"

    .prologue
    .line 218
    if-lez p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/htc/android/htcime/tools/Calibration;->mSpannableCalibrationText:Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/htc/android/htcime/tools/Calibration;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    const/4 v2, 0x0

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 220
    iget-object v0, p0, Lcom/htc/android/htcime/tools/Calibration;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/android/htcime/tools/Calibration;->mSpannableCalibrationText:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/htc/android/htcime/tools/Calibration;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 223
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0009

    if-ne v0, v1, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/Calibration;->doButtonFunction()V

    .line 326
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const v13, 0x7f09009e

    const v12, 0x7f05001a

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 107
    invoke-super {p0, p1}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/Calibration;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 112
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v10, :cond_7

    .line 113
    const v7, 0x7f05004a

    iput v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mXmlId:I

    .line 114
    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/tools/Calibration;->setRequestedOrientation(I)V

    .line 115
    const v7, 0x7f030004

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/tools/Calibration;->setContentView(I)V

    .line 124
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/Calibration;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    .line 125
    .local v6, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_8

    const-string v7, "htc.intent.category.HTC_IME_Test"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 127
    iput v10, p0, Lcom/htc/android/htcime/tools/Calibration;->mProcType:I

    .line 128
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "MM-dd-HH-mm-ss\'.txt\'"

    invoke-direct {v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 129
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "IME_Test"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .local v1, dataDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 131
    new-instance v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mFilename:Ljava/lang/String;

    .line 132
    iget-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mFilename:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/tools/Calibration;->setHeaderText(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/htc/android/htcime/tools/Calibration;->getCalibrationTextFromFile()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mCalibrationText:Ljava/lang/String;

    .line 142
    .end local v1           #dataDir:Ljava/io/File;
    .end local v2           #formatter:Ljava/text/SimpleDateFormat;
    :goto_1
    iget-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mCalibrationText:Ljava/lang/String;

    if-nez v7, :cond_0

    const v7, 0x7f0902cc

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mCalibrationText:Ljava/lang/String;

    .line 143
    :cond_0
    iget-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mCalibrationText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[^a-zA-Z ]"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mCalibrationText:Ljava/lang/String;

    .line 145
    const v7, 0x7f0e0007

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/tools/Calibration;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/android/htcime/tools/CalibrationView;

    iput-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    .line 146
    iget-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    invoke-virtual {v7}, Lcom/htc/android/htcime/tools/CalibrationView;->init()V

    .line 147
    iget-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    iget-object v8, p0, Lcom/htc/android/htcime/tools/Calibration;->mFilename:Ljava/lang/String;

    iput-object v8, v7, Lcom/htc/android/htcime/tools/CalibrationView;->mFilename:Ljava/lang/String;

    .line 150
    invoke-virtual {p0, v13}, Lcom/htc/android/htcime/tools/Calibration;->setActionBar(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 151
    iget-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 153
    .local v5, root:Landroid/view/View;
    const v7, -0x333334

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 156
    .end local v5           #root:Landroid/view/View;
    :cond_1
    const v7, 0x7f0e0006

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/tools/Calibration;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mText:Landroid/widget/TextView;

    .line 157
    new-instance v7, Landroid/text/SpannableString;

    iget-object v8, p0, Lcom/htc/android/htcime/tools/Calibration;->mCalibrationText:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mSpannableCalibrationText:Landroid/text/SpannableString;

    .line 158
    iget-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/htc/android/htcime/tools/Calibration;->mSpannableCalibrationText:Landroid/text/SpannableString;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const v7, 0x7f08000a

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 160
    .local v0, color:I
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x30

    if-ne v7, v8, :cond_2

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0x9b

    if-ne v7, v8, :cond_2

    .line 162
    const v7, 0x7f08000b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 163
    :cond_2
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 164
    iget-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    iget-object v8, p0, Lcom/htc/android/htcime/tools/Calibration;->mText:Landroid/widget/TextView;

    iput-object v8, v7, Lcom/htc/android/htcime/tools/CalibrationView;->mText:Landroid/widget/TextView;

    .line 166
    new-instance v7, Landroid/app/ProgressDialog;

    invoke-direct {v7, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->waitDialog:Landroid/app/ProgressDialog;

    .line 167
    const v7, 0x7f0e0009

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/tools/Calibration;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 168
    .local v4, restartButton:Landroid/widget/Button;
    if-eqz v4, :cond_5

    .line 169
    iget v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mProcType:I

    if-eq v7, v10, :cond_3

    iget v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mXmlId:I

    if-ne v7, v12, :cond_4

    :cond_3
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    :cond_4
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :cond_5
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/Calibration;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "ShowHint"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    iput-boolean v11, v7, Lcom/htc/android/htcime/tools/CalibrationView;->mShowHint:Z

    .line 174
    :cond_6
    return-void

    .line 118
    .end local v0           #color:I
    .end local v4           #restartButton:Landroid/widget/Button;
    .end local v6           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    iput v12, p0, Lcom/htc/android/htcime/tools/Calibration;->mXmlId:I

    .line 119
    invoke-virtual {p0, v11}, Lcom/htc/android/htcime/tools/Calibration;->setRequestedOrientation(I)V

    .line 120
    const v7, 0x7f030005

    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/tools/Calibration;->setContentView(I)V

    goto/16 :goto_0

    .line 137
    .restart local v6       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    iput v11, p0, Lcom/htc/android/htcime/tools/Calibration;->mProcType:I

    .line 138
    invoke-virtual {p0, v13}, Lcom/htc/android/htcime/tools/Calibration;->setHeaderText(I)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    invoke-super {p0, p1}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 260
    iget v0, p0, Lcom/htc/android/htcime/tools/Calibration;->mProcType:I

    if-eq v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/htcime/tools/Calibration;->mShowMenu:Z

    if-eqz v0, :cond_1

    .line 261
    :cond_0
    const/16 v0, 0x3eb

    const v1, 0x7f0902d0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 262
    const/16 v0, 0x3e9

    const v1, 0x7f0902ce

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 263
    const/16 v0, 0x3ea

    const v1, 0x7f0902cf

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 265
    :cond_1
    return v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    iget-object v0, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    iget-object v0, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    iget-object v0, v0, Lcom/htc/android/htcime/tools/CalibrationView;->mTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->dismiss()V

    .line 191
    :cond_0
    invoke-super {p0}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onDestroy()V

    .line 192
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 330
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/Calibration;->finish()V

    .line 332
    const/4 v0, 0x1

    .line 334
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 270
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 271
    .local v1, id:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/Calibration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 272
    .local v0, cr:Landroid/content/ContentResolver;
    packed-switch v1, :pswitch_data_0

    .line 308
    :goto_0
    return v8

    .line 274
    :pswitch_0
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x: alpha is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    iget-object v6, v6, Lcom/htc/android/htcime/tools/CalibrationView;->mSettings:[Ljava/lang/String;

    aget-object v6, v6, v9

    iget-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    iget-object v7, v7, Lcom/htc/android/htcime/tools/CalibrationView;->mSettingsDef:[F

    aget v7, v7, v9

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", beta is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    iget-object v6, v6, Lcom/htc/android/htcime/tools/CalibrationView;->mSettings:[Ljava/lang/String;

    aget-object v6, v6, v8

    iget-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    iget-object v7, v7, Lcom/htc/android/htcime/tools/CalibrationView;->mSettingsDef:[F

    aget v7, v7, v8

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\ny: alpha is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    iget-object v6, v6, Lcom/htc/android/htcime/tools/CalibrationView;->mSettings:[Ljava/lang/String;

    aget-object v6, v6, v10

    iget-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    iget-object v7, v7, Lcom/htc/android/htcime/tools/CalibrationView;->mSettingsDef:[F

    aget v7, v7, v10

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", beta is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    iget-object v6, v6, Lcom/htc/android/htcime/tools/CalibrationView;->mSettings:[Ljava/lang/String;

    aget-object v6, v6, v11

    iget-object v7, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    iget-object v7, v7, Lcom/htc/android/htcime/tools/CalibrationView;->mSettingsDef:[F

    aget v7, v7, v11

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 283
    .local v4, message:Ljava/lang/String;
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/tools/Calibration;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 288
    .end local v4           #message:Ljava/lang/String;
    :pswitch_1
    iget v5, p0, Lcom/htc/android/htcime/tools/Calibration;->mProcType:I

    if-nez v5, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/Calibration;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Do not simulate under calibration mode."

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 292
    :cond_0
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 293
    .local v3, m:Landroid/os/Message;
    const/16 v5, 0xa

    iput v5, v3, Landroid/os/Message;->what:I

    .line 295
    new-instance v5, Lcom/htc/android/htcime/tools/Calibration$4;

    invoke-direct {v5, p0}, Lcom/htc/android/htcime/tools/Calibration$4;-><init>(Lcom/htc/android/htcime/tools/Calibration;)V

    invoke-virtual {v5}, Lcom/htc/android/htcime/tools/Calibration$4;->start()V

    .line 300
    iget-object v5, p0, Lcom/htc/android/htcime/tools/Calibration;->runSimulateHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 303
    .end local v3           #m:Landroid/os/Message;
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 304
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.htc.android.htcime"

    const-string v6, "com.htc.android.htcime.tools.HTC_IME_Test"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/tools/Calibration;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/android/htcime/tools/Calibration;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/tools/Calibration;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/tools/Calibration;->mCBview:Lcom/htc/android/htcime/tools/CalibrationView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/tools/CalibrationView;->closing()V

    .line 180
    iget-boolean v0, p0, Lcom/htc/android/htcime/tools/Calibration;->mIsRestart:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/tools/Calibration;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/htc/android/htcime/tools/Calibration;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/tools/Calibration;->startActivity(Landroid/content/Intent;)V

    .line 183
    :cond_1
    invoke-super {p0}, Lcom/htc/android/htcime/util/IMEBaseActivity;->onPause()V

    .line 184
    return-void
.end method

.method public showHiddenMenu(Z)V
    .locals 0
    .parameter "val"

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/htc/android/htcime/tools/Calibration;->mShowMenu:Z

    return-void
.end method
