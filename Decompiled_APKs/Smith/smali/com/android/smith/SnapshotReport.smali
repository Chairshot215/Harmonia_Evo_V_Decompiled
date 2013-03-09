.class public Lcom/android/smith/SnapshotReport;
.super Landroid/app/Activity;
.source "SnapshotReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/smith/SnapshotReport$LogsThread;
    }
.end annotation


# static fields
.field private static final EXTERNAL_STORAGE:Ljava/lang/String; = null

.field public static final EXTRA_OEM:Ljava/lang/String; = "oem"

.field private static final F_DUMPSTATE:I = 0x1

.field private static final F_DUMPSYS:I = 0x2

.field private static final F_PROCRANK:I = 0x3

.field private static final INTERNAL_STORAGE:Ljava/lang/String; = "/data/data/com.android.smith/htclog/"

.field private static final MSG_END_THREAD:I = 0x1

.field private static final PHONE_STORAGE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SM:SnapshotReport"

.field private static final VERSION:Ljava/lang/String; = "1.4"

.field private static final VIBRATE_TIME_OFF:I = 0x32

.field private static final VIBRATE_TIME_ON:I = 0x64

.field private static mButtonDumpstate:Landroid/widget/Button;

.field private static mButtonDumpsys:Landroid/widget/Button;

.field private static mHandler:Landroid/os/Handler;

.field private static mLogsThread:Lcom/android/smith/SnapshotReport$LogsThread;

.field private static mOEM:Z

.field private static mRadioExternal:Landroid/widget/RadioButton;

.field private static mRadioInternal:Landroid/widget/RadioButton;

.field private static mRadioPhone:Landroid/widget/RadioButton;

.field private static mTextExternal:Landroid/widget/TextView;

.field private static mTextInternal:Landroid/widget/TextView;

.field private static mTextPhone:Landroid/widget/TextView;

.field private static mTextPrompt:Landroid/widget/TextView;


# instance fields
.field private mButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/smith/HtcNative;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "htclog/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/smith/SnapshotReport;->EXTERNAL_STORAGE:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/smith/HtcNative;->getPhoneStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "htclog/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/smith/SnapshotReport;->PHONE_STORAGE:Ljava/lang/String;

    .line 66
    sput-object v2, Lcom/android/smith/SnapshotReport;->mLogsThread:Lcom/android/smith/SnapshotReport$LogsThread;

    .line 68
    sput-object v2, Lcom/android/smith/SnapshotReport;->mTextPrompt:Landroid/widget/TextView;

    .line 69
    sput-object v2, Lcom/android/smith/SnapshotReport;->mRadioInternal:Landroid/widget/RadioButton;

    .line 70
    sput-object v2, Lcom/android/smith/SnapshotReport;->mRadioPhone:Landroid/widget/RadioButton;

    .line 71
    sput-object v2, Lcom/android/smith/SnapshotReport;->mRadioExternal:Landroid/widget/RadioButton;

    .line 72
    sput-object v2, Lcom/android/smith/SnapshotReport;->mTextInternal:Landroid/widget/TextView;

    .line 73
    sput-object v2, Lcom/android/smith/SnapshotReport;->mTextPhone:Landroid/widget/TextView;

    .line 74
    sput-object v2, Lcom/android/smith/SnapshotReport;->mTextExternal:Landroid/widget/TextView;

    .line 75
    sput-object v2, Lcom/android/smith/SnapshotReport;->mButtonDumpstate:Landroid/widget/Button;

    .line 76
    sput-object v2, Lcom/android/smith/SnapshotReport;->mButtonDumpsys:Landroid/widget/Button;

    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/smith/SnapshotReport;->mOEM:Z

    .line 385
    new-instance v0, Lcom/android/smith/SnapshotReport$2;

    invoke-direct {v0}, Lcom/android/smith/SnapshotReport$2;-><init>()V

    sput-object v0, Lcom/android/smith/SnapshotReport;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 232
    new-instance v0, Lcom/android/smith/SnapshotReport$1;

    invoke-direct {v0, p0}, Lcom/android/smith/SnapshotReport$1;-><init>(Lcom/android/smith/SnapshotReport;)V

    iput-object v0, p0, Lcom/android/smith/SnapshotReport;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 269
    return-void
.end method

.method static synthetic access$000()Lcom/android/smith/SnapshotReport$LogsThread;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/smith/SnapshotReport;->mLogsThread:Lcom/android/smith/SnapshotReport$LogsThread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/smith/SnapshotReport$LogsThread;)Lcom/android/smith/SnapshotReport$LogsThread;
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    sput-object p0, Lcom/android/smith/SnapshotReport;->mLogsThread:Lcom/android/smith/SnapshotReport$LogsThread;

    return-object p0
.end method

.method static synthetic access$100()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/smith/SnapshotReport;->mButtonDumpstate:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/smith/SnapshotReport;->mButtonDumpsys:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/smith/SnapshotReport;->mTextPrompt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400()Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/smith/SnapshotReport;->mRadioExternal:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/smith/SnapshotReport;->EXTERNAL_STORAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/smith/SnapshotReport;->mRadioPhone:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/smith/SnapshotReport;->PHONE_STORAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/smith/SnapshotReport;->mOEM:Z

    return v0
.end method

.method static synthetic access$900()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/smith/SnapshotReport;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private prepare()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 82
    sget-object v2, Lcom/android/smith/SnapshotReport;->mRadioInternal:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 83
    sget-object v2, Lcom/android/smith/SnapshotReport;->mRadioExternal:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 84
    sget-object v2, Lcom/android/smith/SnapshotReport;->mRadioPhone:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 87
    invoke-static {}, Lcom/android/smith/HtcNative;->getExternalStorageState()I

    move-result v2

    if-ne v5, v2, :cond_1

    .line 91
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/smith/SnapshotReport;->EXTERNAL_STORAGE:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, d:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 96
    :cond_0
    sget-object v2, Lcom/android/smith/SnapshotReport;->mRadioExternal:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0           #d:Ljava/io/File;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/smith/HtcNative;->getPhoneStorageState()I

    move-result v2

    if-ne v5, v2, :cond_3

    .line 109
    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/smith/SnapshotReport;->PHONE_STORAGE:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v0       #d:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 114
    :cond_2
    sget-object v2, Lcom/android/smith/SnapshotReport;->mRadioPhone:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    .end local v0           #d:Ljava/io/File;
    :cond_3
    :goto_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.android.smith/htclog/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .restart local v0       #d:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 135
    .end local v0           #d:Ljava/io/File;
    :cond_4
    :goto_2
    sget-object v2, Lcom/android/smith/SnapshotReport;->mRadioExternal:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 137
    sget-object v2, Lcom/android/smith/SnapshotReport;->mRadioExternal:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 148
    :goto_3
    sget-boolean v2, Lcom/android/smith/SnapshotReport;->mOEM:Z

    if-eqz v2, :cond_5

    .line 150
    sget-object v2, Lcom/android/smith/SnapshotReport;->mRadioInternal:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 152
    sget-object v2, Lcom/android/smith/SnapshotReport;->mRadioInternal:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 154
    sget-object v2, Lcom/android/smith/SnapshotReport;->mRadioExternal:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 159
    :cond_5
    sget-object v2, Lcom/android/smith/SnapshotReport;->mLogsThread:Lcom/android/smith/SnapshotReport$LogsThread;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/smith/SnapshotReport;->mLogsThread:Lcom/android/smith/SnapshotReport$LogsThread;

    invoke-virtual {v2}, Lcom/android/smith/SnapshotReport$LogsThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 161
    sget-object v2, Lcom/android/smith/SnapshotReport;->mButtonDumpstate:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 162
    sget-object v2, Lcom/android/smith/SnapshotReport;->mButtonDumpsys:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 163
    sget-object v2, Lcom/android/smith/SnapshotReport;->mTextPrompt:Landroid/widget/TextView;

    const-string v3, "Saving logs, please wait ..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :goto_4
    return-void

    .line 98
    :catch_0
    move-exception v1

    .line 100
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SM:SnapshotReport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/smith/SnapshotReport;->EXTERNAL_STORAGE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 118
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v2, "SM:SnapshotReport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/smith/SnapshotReport;->PHONE_STORAGE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 130
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 132
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v2, "SM:SnapshotReport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check [/data/data/com.android.smith/htclog/]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 139
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    sget-object v2, Lcom/android/smith/SnapshotReport;->mRadioPhone:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 141
    sget-object v2, Lcom/android/smith/SnapshotReport;->mRadioPhone:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_3

    .line 145
    :cond_7
    sget-object v2, Lcom/android/smith/SnapshotReport;->mRadioInternal:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_3

    .line 167
    :cond_8
    const/4 v2, 0x0

    sput-object v2, Lcom/android/smith/SnapshotReport;->mLogsThread:Lcom/android/smith/SnapshotReport$LogsThread;

    .line 168
    sget-object v2, Lcom/android/smith/SnapshotReport;->mButtonDumpstate:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 169
    sget-object v2, Lcom/android/smith/SnapshotReport;->mButtonDumpsys:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 170
    sget-object v2, Lcom/android/smith/SnapshotReport;->mTextPrompt:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/16 v3, 0x8

    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/smith/SnapshotReport;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "oem"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/smith/SnapshotReport;->mOEM:Z

    .line 193
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/android/smith/SnapshotReport;->setContentView(I)V

    .line 195
    const v0, 0x7f050037

    invoke-virtual {p0, v0}, Lcom/android/smith/SnapshotReport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/android/smith/SnapshotReport;->mTextPrompt:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f050030

    invoke-virtual {p0, v0}, Lcom/android/smith/SnapshotReport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/smith/SnapshotReport;->mRadioInternal:Landroid/widget/RadioButton;

    .line 198
    const v0, 0x7f050031

    invoke-virtual {p0, v0}, Lcom/android/smith/SnapshotReport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/android/smith/SnapshotReport;->mTextInternal:Landroid/widget/TextView;

    .line 199
    sget-object v0, Lcom/android/smith/SnapshotReport;->mTextInternal:Landroid/widget/TextView;

    const-string v1, "Log path : /data/data/com.android.smith/htclog/"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const v0, 0x7f050032

    invoke-virtual {p0, v0}, Lcom/android/smith/SnapshotReport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/smith/SnapshotReport;->mRadioPhone:Landroid/widget/RadioButton;

    .line 202
    const v0, 0x7f050033

    invoke-virtual {p0, v0}, Lcom/android/smith/SnapshotReport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/android/smith/SnapshotReport;->mTextPhone:Landroid/widget/TextView;

    .line 203
    sget-object v0, Lcom/android/smith/SnapshotReport;->mTextPhone:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/smith/SnapshotReport;->PHONE_STORAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    const v0, 0x7f05002f

    invoke-virtual {p0, v0}, Lcom/android/smith/SnapshotReport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    sput-object v0, Lcom/android/smith/SnapshotReport;->mRadioExternal:Landroid/widget/RadioButton;

    .line 206
    const v0, 0x7f050034

    invoke-virtual {p0, v0}, Lcom/android/smith/SnapshotReport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/android/smith/SnapshotReport;->mTextExternal:Landroid/widget/TextView;

    .line 207
    sget-object v0, Lcom/android/smith/SnapshotReport;->mTextExternal:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/smith/SnapshotReport;->EXTERNAL_STORAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    const v0, 0x7f050035

    invoke-virtual {p0, v0}, Lcom/android/smith/SnapshotReport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/smith/SnapshotReport;->mButtonDumpstate:Landroid/widget/Button;

    .line 210
    sget-object v0, Lcom/android/smith/SnapshotReport;->mButtonDumpstate:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/smith/SnapshotReport;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const v0, 0x7f050036

    invoke-virtual {p0, v0}, Lcom/android/smith/SnapshotReport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/smith/SnapshotReport;->mButtonDumpsys:Landroid/widget/Button;

    .line 213
    sget-object v0, Lcom/android/smith/SnapshotReport;->mButtonDumpsys:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/smith/SnapshotReport;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    invoke-static {p0}, Lcom/android/smith/Device;->keepScreenOn(Landroid/app/Activity;)V

    .line 217
    invoke-direct {p0}, Lcom/android/smith/SnapshotReport;->prepare()V

    .line 219
    sget-boolean v0, Lcom/android/smith/SnapshotReport;->mOEM:Z

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lcom/android/smith/SnapshotReport;->mRadioInternal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 222
    sget-object v0, Lcom/android/smith/SnapshotReport;->mTextInternal:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/smith/SnapshotReport;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "1.4"

    invoke-static {v1, v2}, Lcom/android/smith/Version;->composeVersions(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (OEM)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/smith/SnapshotReport;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/smith/SnapshotReport;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "1.4"

    invoke-static {v0, v1}, Lcom/android/smith/Version;->composeVersions(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/smith/SnapshotReport;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 179
    sget-object v0, Lcom/android/smith/SnapshotReport;->mLogsThread:Lcom/android/smith/SnapshotReport$LogsThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/smith/SnapshotReport;->mLogsThread:Lcom/android/smith/SnapshotReport$LogsThread;

    invoke-virtual {v0}, Lcom/android/smith/SnapshotReport$LogsThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/smith/SnapshotReport;->mLogsThread:Lcom/android/smith/SnapshotReport$LogsThread;

    .line 182
    invoke-virtual {p0}, Lcom/android/smith/SnapshotReport;->finish()V

    .line 184
    :cond_1
    return-void
.end method
