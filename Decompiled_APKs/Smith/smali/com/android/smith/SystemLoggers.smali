.class public Lcom/android/smith/SystemLoggers;
.super Landroid/app/Activity;
.source "SystemLoggers.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/smith/SystemLoggers$Worker;,
        Lcom/android/smith/SystemLoggers$RunningSettings;,
        Lcom/android/smith/SystemLoggers$ServiceInfo;
    }
.end annotation


# static fields
.field public static final ACTION_CONTROLLER_SYSTEMLOGGERS:Ljava/lang/String; = "com.android.smith.SystemLoggers.CONTROLLER"

.field public static final ACTION_CONTROLLER_SYSTEMLOGGERS_RESULT:Ljava/lang/String; = "com.android.smith.SystemLoggers.CONTROLLER_RESULT"

.field private static final CONF_VERSION:Ljava/lang/String; = "2"

.field private static final DEFAULT_AUTOCLEAR:Z = true

.field private static final DEFAULT_AUTORUN:Z = true

.field private static final DEFAULT_COMPRESS:Z = false

.field private static final DEFAULT_ROTATE:I = 0x28

.field private static final DEFAULT_SESSION:I = 0xa

.field private static final DEFAULT_SIZE:I = 0x5

.field private static final DEFAULT_SIZE_LIMIT:I = 0x3e8

.field private static final DEFAULT_SIZE_RESERVED:I = 0x64

.field private static final JOB_CLEARLOG:I = 0x4

.field private static final JOB_END:I = 0xe

.field private static final JOB_INIT:I = 0x1

.field private static final JOB_INIT_END:I = 0xb

.field private static final JOB_START:I = 0x2

.field private static final JOB_START_END:I = 0xc

.field private static final JOB_STOP:I = 0x3

.field private static final JOB_STOP_END:I = 0xd

.field private static final KEY_AUTOCLEAR:Ljava/lang/String; = "AutoClear"

.field private static final KEY_AUTOSTART:Ljava/lang/String; = "AutoStart"

.field private static final KEY_CHECKBOX_AUTOSTART:Ljava/lang/String; = "CheckBoxAutoStart"

.field private static final KEY_COMPRESS:Ljava/lang/String; = "Compress"

.field private static final KEY_LOGGER:Ljava/lang/String; = "Logger"

.field private static final KEY_LOGPATH:Ljava/lang/String; = "LogPath"

.field private static final KEY_ROTATE:Ljava/lang/String; = "RotateCount"

.field private static final KEY_SELECTED_LOGGERS:Ljava/lang/String; = "SelectedLoggers"

.field private static final KEY_SESSION:Ljava/lang/String; = "SessionCount"

.field private static final KEY_SIZE:Ljava/lang/String; = "RotateSizeMB"

.field private static final KEY_SIZE_LIMIT:Ljava/lang/String; = "LimitedTotalLogSizeMB"

.field private static final KEY_SIZE_RESERVED:Ljava/lang/String; = "ReservedStorageSizeMB"

.field private static final KEY_VERSION:Ljava/lang/String; = "Version"

.field private static final LOG_CMD_AUTOCLEAR:Ljava/lang/String; = ":autoclear:"

.field private static final LOG_CMD_CLEARLOG:Ljava/lang/String; = ":clearlog:"

.field private static final LOG_CMD_COMPRESS:Ljava/lang/String; = ":compress:"

.field private static final LOG_CMD_GETLOGFILES:Ljava/lang/String; = ":getlogfiles:"

.field private static final LOG_CMD_GETLOGSIZE:Ljava/lang/String; = ":getlogsize:"

.field private static final LOG_CMD_GETPARAM:Ljava/lang/String; = ":getparam:"

.field private static final LOG_CMD_GETPATH:Ljava/lang/String; = ":getpath:"

.field private static final LOG_CMD_ISLOGGING:Ljava/lang/String; = ":islogging:"

.field private static final LOG_CMD_RUN:Ljava/lang/String; = ":run:"

.field private static final LOG_CMD_SETPARAM:Ljava/lang/String; = ":setparam:"

.field private static final LOG_CMD_SETPATH:Ljava/lang/String; = ":setpath:"

.field private static final LOG_CMD_STOP:Ljava/lang/String; = ":stop:"

.field private static final MAX_SESSION:I = 0x3e8

.field private static final SAFE_SESSION_COUNT:I = 0x3

.field private static final SETTING_FILENAME:Ljava/lang/String; = "/data/data/com.android.smith/smghost/SystemLoggers.conf"

.field private static final SRQ_CLEARLOG:I = 0x4

.field private static final SRQ_LAST:I = 0x5

.field private static final SRQ_NONE:I = 0x0

.field private static final SRQ_QUIT:I = 0x3

.field private static final SRQ_RUN:I = 0x1

.field private static final SRQ_STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SM:SystemLoggers"

.field private static final VALUE_LOGPATH_AUTO:Ljava/lang/String; = "auto"

.field private static final VALUE_LOGPATH_EXTERNAL:Ljava/lang/String; = "external"

.field private static final VALUE_LOGPATH_INTERNAL:Ljava/lang/String; = "internal"

.field private static final VALUE_LOGPATH_PHONE:Ljava/lang/String; = "phone"

.field private static final VERSION:Ljava/lang/String; = "4.6"


# instance fields
.field private clickListenerCancel:Landroid/content/DialogInterface$OnClickListener;

.field private clickListenerClear:Landroid/content/DialogInterface$OnClickListener;

.field private clickListenerOk:Landroid/content/DialogInterface$OnClickListener;

.field private mButtonClearLogs:Landroid/widget/Button;

.field private mButtonExamSettings:Landroid/widget/Button;

.field private mButtonNoSizeLimit:Landroid/widget/Button;

.field private mButtonStart:Landroid/widget/Button;

.field private mCheckAutoClear:Landroid/widget/CheckBox;

.field private mCheckAutoCompress:Landroid/widget/CheckBox;

.field private mCheckAutoRun:Landroid/widget/CheckBox;

.field private mEditRotate:Landroid/widget/EditText;

.field private mEditSize:Landroid/widget/EditText;

.field private mEditSizeLimit:Landroid/widget/EditText;

.field private mEditSizeReserved:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutLoggers:Landroid/widget/LinearLayout;

.field private mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRadioAutoSelect:Landroid/widget/RadioButton;

.field private mRadioExternal:Landroid/widget/RadioButton;

.field private mRadioInternal:Landroid/widget/RadioButton;

.field private mRadioPhone:Landroid/widget/RadioButton;

.field private mRunning:Z

.field private mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

.field private mTextAutoSelect:Landroid/widget/TextView;

.field private mTextExternal:Landroid/widget/TextView;

.field private mTextInternal:Landroid/widget/TextView;

.field private mTextPhone:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 171
    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    .line 172
    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    .line 174
    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/smith/SystemLoggers;->mRunning:Z

    .line 1035
    new-instance v0, Lcom/android/smith/SystemLoggers$1;

    invoke-direct {v0, p0}, Lcom/android/smith/SystemLoggers$1;-><init>(Lcom/android/smith/SystemLoggers;)V

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->clickListenerOk:Landroid/content/DialogInterface$OnClickListener;

    .line 1047
    new-instance v0, Lcom/android/smith/SystemLoggers$2;

    invoke-direct {v0, p0}, Lcom/android/smith/SystemLoggers$2;-><init>(Lcom/android/smith/SystemLoggers;)V

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->clickListenerCancel:Landroid/content/DialogInterface$OnClickListener;

    .line 1057
    new-instance v0, Lcom/android/smith/SystemLoggers$3;

    invoke-direct {v0, p0}, Lcom/android/smith/SystemLoggers$3;-><init>(Lcom/android/smith/SystemLoggers;)V

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->clickListenerClear:Landroid/content/DialogInterface$OnClickListener;

    .line 1599
    new-instance v0, Lcom/android/smith/SystemLoggers$4;

    invoke-direct {v0, p0}, Lcom/android/smith/SystemLoggers$4;-><init>(Lcom/android/smith/SystemLoggers;)V

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/smith/SystemLoggers;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/smith/SystemLoggers;->mRunning:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/smith/SystemLoggers;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/smith/SystemLoggers;->mRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/smith/SystemLoggers;)Lcom/android/smith/SystemLoggers$RunningSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/smith/SystemLoggers;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mRadioPhone:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/smith/SystemLoggers;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mRadioInternal:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/smith/SystemLoggers;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mEditSize:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/smith/SystemLoggers;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mEditRotate:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/smith/SystemLoggers;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mEditSizeLimit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/smith/SystemLoggers;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mEditSizeReserved:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/smith/SystemLoggers;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mCheckAutoRun:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/smith/SystemLoggers;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mCheckAutoClear:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/smith/SystemLoggers;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mCheckAutoCompress:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/smith/SystemLoggers;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mLayoutLoggers:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/smith/SystemLoggers;)[Lcom/android/smith/SystemLoggers$ServiceInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/smith/SystemLoggers;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->clickListenerClear:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/smith/SystemLoggers;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/smith/SystemLoggers;->updateViews(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/smith/SystemLoggers;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/smith/SystemLoggers;->showProgress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/smith/SystemLoggers;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/smith/SystemLoggers;->runDumpLastKmsg()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/smith/SystemLoggers;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/smith/SystemLoggers;->update_status_bar(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/smith/SystemLoggers;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/smith/SystemLoggers;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mRadioAutoSelect:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/smith/SystemLoggers;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mRadioExternal:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public static createDefaultConfig()V
    .locals 12

    .prologue
    const-wide/16 v6, 0x0

    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 700
    const-string v5, "/data/data/com.android.smith/smghost/SystemLoggers.conf"

    invoke-static {v5}, Lcom/android/smith/HtcNative;->confLoad(Ljava/lang/String;)J

    move-result-wide v3

    .line 702
    .local v3, mConf:J
    cmp-long v5, v3, v6

    if-nez v5, :cond_1

    .line 704
    const-string v5, "/data/data/com.android.smith/smghost/SystemLoggers.conf"

    invoke-static {v5}, Lcom/android/smith/HtcNative;->confNew(Ljava/lang/String;)J

    move-result-wide v3

    .line 706
    cmp-long v5, v3, v6

    if-nez v5, :cond_0

    .line 708
    const-string v5, "SM:SystemLoggers"

    const-string v6, "cannot create new config!"

    invoke-static {v5, v6}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :goto_0
    return-void

    .line 712
    :cond_0
    invoke-static {v3, v4}, Lcom/android/smith/HtcNative;->confClear(J)V

    .line 715
    :cond_1
    const-string v5, "Version"

    const-string v6, "2"

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 717
    const-string v5, ""

    const-string v6, "SelectedLoggers"

    const-string v7, ""

    invoke-static {v3, v4, v6, v7}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 719
    new-array v2, v11, [Ljava/lang/String;

    const-string v5, "logdevice"

    aput-object v5, v2, v9

    const-string v5, "logradio"

    aput-object v5, v2, v8

    const/4 v5, 0x2

    const-string v6, "logevents"

    aput-object v6, v2, v5

    const-string v5, "logkmsg"

    aput-object v5, v2, v10

    const/4 v5, 0x4

    const-string v6, "dumplastkmsg"

    aput-object v6, v2, v5

    .line 720
    .local v2, logger_service:[Ljava/lang/String;
    const-string v1, ""

    .line 722
    .local v1, logger_list:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_2

    .line 724
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 726
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Logger."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 729
    :cond_2
    const-string v5, "SelectedLoggers"

    invoke-static {v3, v4, v5, v1}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 732
    .end local v0           #i:I
    .end local v1           #logger_list:Ljava/lang/String;
    .end local v2           #logger_service:[Ljava/lang/String;
    :cond_3
    const-string v5, ""

    const-string v6, "AutoStart"

    const-string v7, ""

    invoke-static {v3, v4, v6, v7}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 734
    const-string v5, "AutoStart"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 737
    :cond_4
    const-string v5, ""

    const-string v6, "RotateSizeMB"

    const-string v7, ""

    invoke-static {v3, v4, v6, v7}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 739
    const-string v5, "RotateSizeMB"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 742
    :cond_5
    const-string v5, ""

    const-string v6, "RotateCount"

    const-string v7, ""

    invoke-static {v3, v4, v6, v7}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 744
    const-string v5, "RotateCount"

    const/16 v6, 0x78

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 747
    :cond_6
    const-string v5, ""

    const-string v6, "LimitedTotalLogSizeMB"

    const-string v7, ""

    invoke-static {v3, v4, v6, v7}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 749
    const-string v5, "LimitedTotalLogSizeMB"

    const/16 v6, 0x1c5c

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 752
    :cond_7
    const-string v5, ""

    const-string v6, "ReservedStorageSizeMB"

    const-string v7, ""

    invoke-static {v3, v4, v6, v7}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 754
    const-string v5, "ReservedStorageSizeMB"

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 757
    :cond_8
    const-string v5, ""

    const-string v6, "SessionCount"

    const-string v7, ""

    invoke-static {v3, v4, v6, v7}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 759
    const-string v5, "SessionCount"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 762
    :cond_9
    const-string v5, ""

    const-string v6, "CheckBoxAutoStart"

    const-string v7, ""

    invoke-static {v3, v4, v6, v7}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 764
    const-string v5, "CheckBoxAutoStart"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 767
    :cond_a
    const-string v5, ""

    const-string v6, "AutoClear"

    const-string v7, ""

    invoke-static {v3, v4, v6, v7}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 769
    const-string v5, "AutoClear"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 772
    :cond_b
    const-string v5, ""

    const-string v6, "Compress"

    const-string v7, ""

    invoke-static {v3, v4, v6, v7}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 774
    const-string v5, "Compress"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 777
    :cond_c
    const-string v5, ""

    const-string v6, "LogPath"

    const-string v7, ""

    invoke-static {v3, v4, v6, v7}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 779
    const-string v5, "LogPath"

    const-string v6, "auto"

    invoke-static {v3, v4, v5, v6}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 782
    :cond_d
    invoke-static {v3, v4}, Lcom/android/smith/HtcNative;->confSort(J)V

    .line 783
    invoke-static {v3, v4}, Lcom/android/smith/HtcNative;->confSave(J)Z

    .line 784
    invoke-static {v3, v4}, Lcom/android/smith/HtcNative;->confClose(J)V

    goto/16 :goto_0
.end method

.method private getEditInput(Landroid/widget/EditText;Landroid/widget/Button;I)I
    .locals 3
    .parameter "edit"
    .parameter "button"
    .parameter "default_value"

    .prologue
    .line 1006
    move v1, p3

    .line 1008
    .local v1, ret:I
    if-eqz p1, :cond_1

    .line 1012
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1019
    :goto_0
    if-gtz v1, :cond_0

    .line 1021
    move v1, p3

    .line 1024
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    :cond_1
    if-eqz p2, :cond_2

    .line 1029
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    :cond_2
    return v1

    .line 1014
    :catch_0
    move-exception v0

    .line 1016
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    goto :goto_0
.end method

.method private getMaxStorageSize()J
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1324
    const-string v6, "/data/data/com.android.smith/"

    invoke-static {v6}, Lcom/android/smith/Device;->getFsAvailableSpaceMB(Ljava/lang/String;)J

    move-result-wide v2

    .line 1325
    .local v2, in:J
    const-wide/16 v0, 0x0

    .line 1326
    .local v0, ex:J
    const-wide/16 v4, 0x0

    .line 1328
    .local v4, ph:J
    invoke-static {}, Lcom/android/smith/HtcNative;->getExternalStorageState()I

    move-result v6

    if-ne v6, v7, :cond_0

    .line 1330
    invoke-static {}, Lcom/android/smith/HtcNative;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/smith/Device;->getFsAvailableSpaceMB(Ljava/lang/String;)J

    move-result-wide v0

    .line 1333
    :cond_0
    invoke-static {}, Lcom/android/smith/HtcNative;->getPhoneStorageState()I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 1335
    invoke-static {}, Lcom/android/smith/HtcNative;->getPhoneStorageDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/smith/Device;->getFsAvailableSpaceMB(Ljava/lang/String;)J

    move-result-wide v4

    .line 1338
    :cond_1
    cmp-long v6, v2, v0

    if-lez v6, :cond_3

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    move-wide v4, v2

    .end local v4           #ph:J
    :cond_2
    :goto_0
    return-wide v4

    .restart local v4       #ph:J
    :cond_3
    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    move-wide v4, v0

    goto :goto_0
.end method

.method private prepareToRun(Z)V
    .locals 15
    .parameter "run"

    .prologue
    .line 1069
    const/4 v0, 0x0

    .line 1071
    .local v0, count:I
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    if-nez v11, :cond_1

    .line 1320
    :cond_0
    :goto_0
    return-void

    .line 1074
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    array-length v11, v11

    if-ge v1, v11, :cond_5

    .line 1076
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    aget-object v11, v11, v1

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    aget-object v11, v11, v1

    iget-object v11, v11, Lcom/android/smith/SystemLoggers$ServiceInfo;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v11, :cond_3

    .line 1074
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1079
    :cond_3
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    aget-object v11, v11, v1

    iget-object v11, v11, Lcom/android/smith/SystemLoggers$ServiceInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1081
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    aget-object v11, v11, v1

    iget-object v11, v11, Lcom/android/smith/SystemLoggers$ServiceInfo;->loggers:[Ljava/lang/String;

    if-nez v11, :cond_4

    .line 1083
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1087
    :cond_4
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    aget-object v11, v11, v1

    iget-object v11, v11, Lcom/android/smith/SystemLoggers$ServiceInfo;->loggers:[Ljava/lang/String;

    array-length v11, v11

    add-int/2addr v0, v11

    goto :goto_2

    .line 1092
    :cond_5
    if-nez v0, :cond_6

    .line 1094
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v12, "Error"

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const-string v12, "No logger was selected!"

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f040036

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x1080027

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1104
    :cond_6
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mEditSize:Landroid/widget/EditText;

    const/4 v13, 0x0

    const/4 v14, 0x5

    invoke-direct {p0, v12, v13, v14}, Lcom/android/smith/SystemLoggers;->getEditInput(Landroid/widget/EditText;Landroid/widget/Button;I)I

    move-result v12

    iput v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->size:I

    .line 1105
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mEditRotate:Landroid/widget/EditText;

    const/4 v13, 0x0

    const/16 v14, 0x28

    invoke-direct {p0, v12, v13, v14}, Lcom/android/smith/SystemLoggers;->getEditInput(Landroid/widget/EditText;Landroid/widget/Button;I)I

    move-result v12

    iput v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->rotate:I

    .line 1106
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mEditSizeLimit:Landroid/widget/EditText;

    const/4 v13, 0x0

    const/16 v14, 0x3e8

    invoke-direct {p0, v12, v13, v14}, Lcom/android/smith/SystemLoggers;->getEditInput(Landroid/widget/EditText;Landroid/widget/Button;I)I

    move-result v12

    iput v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->size_limit:I

    .line 1107
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mEditSizeReserved:Landroid/widget/EditText;

    const/4 v13, 0x0

    const/16 v14, 0x64

    invoke-direct {p0, v12, v13, v14}, Lcom/android/smith/SystemLoggers;->getEditInput(Landroid/widget/EditText;Landroid/widget/Button;I)I

    move-result v12

    iput v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->size_reserved:I

    .line 1110
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mCheckAutoRun:Landroid/widget/CheckBox;

    invoke-virtual {v12}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v12

    iput-boolean v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->autorun:Z

    .line 1111
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mCheckAutoClear:Landroid/widget/CheckBox;

    invoke-virtual {v12}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v12

    iput-boolean v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->autoclear:Z

    .line 1112
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mCheckAutoCompress:Landroid/widget/CheckBox;

    invoke-virtual {v12}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v12

    iput-boolean v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->compress:Z

    .line 1113
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-boolean v12, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->autorun:Z

    iput-boolean v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->bootrun:Z

    .line 1114
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mRadioAutoSelect:Landroid/widget/RadioButton;

    invoke-virtual {v12}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v12

    iput-boolean v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->auto_select:Z

    .line 1116
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-boolean v11, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->auto_select:Z

    if-eqz v11, :cond_f

    .line 1118
    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    invoke-static {}, Lcom/android/smith/HtcNative;->getPhoneStorageState()I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_d

    const/4 v11, 0x1

    :goto_3
    iput-boolean v11, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->use_phone_storage:Z

    .line 1119
    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    invoke-static {}, Lcom/android/smith/HtcNative;->getExternalStorageState()I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_e

    const/4 v11, 0x1

    :goto_4
    iput-boolean v11, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->use_external_storage:Z

    .line 1127
    :goto_5
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget v11, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->size:I

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget v12, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->rotate:I

    add-int/lit8 v12, v12, 0x1

    mul-int/2addr v11, v12

    mul-int v7, v11, v0

    .line 1129
    .local v7, session_size:I
    const-string v10, ""

    .line 1131
    .local v10, warn:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Rotate size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget v12, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->size:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " MB\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Rotate count = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget v12, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->rotate:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (total "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget v12, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->rotate:I

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " files)\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Loggers count = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "One logging session may need (maximum):\n==> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget v12, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->size:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " MB * "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget v12, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->rotate:I

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " * "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " MB\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Safe storage free space ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " sessions):\n==> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " MB * "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    mul-int/lit8 v12, v7, 0x3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " MB\n\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1140
    .local v4, msg:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget v11, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->size_limit:I

    if-ge v11, v7, :cond_7

    .line 1142
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    mul-int/lit8 v12, v7, 0x3

    iput v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->size_limit:I

    .line 1144
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n\n-> Size limitation is too small! Rescale it to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget v12, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->size_limit:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " MB ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " MB * "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1146
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mEditSizeLimit:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget v12, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->size_limit:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1149
    :cond_7
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget v12, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->size_limit:I

    div-int/2addr v12, v7

    iput v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->session:I

    .line 1151
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget v11, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->session:I

    if-gtz v11, :cond_8

    .line 1153
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    const/4 v12, 0x1

    iput v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->session:I

    .line 1156
    :cond_8
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget v11, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->session:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    .line 1158
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n\n-> In worst case, only one session will be kept by current settings! Please consider to change the file size and rotate number to get more sessions! It would be best to have more than 3 sessions."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1162
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Overall size limitation = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget v12, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->size_limit:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " MB\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Current session count = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget v12, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->session:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget v12, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->size_limit:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " MB / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " MB)\n\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1166
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/smith/HtcNative;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1167
    .local v5, pathExternal:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/smith/HtcNative;->getPhoneStorageDirectory()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1169
    .local v6, pathPhone:Ljava/lang/String;
    iget-boolean v11, p0, Lcom/android/smith/SystemLoggers;->mRunning:Z

    if-eqz v11, :cond_13

    .line 1171
    const/4 v1, 0x0

    :goto_6
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    array-length v11, v11

    if-ge v1, v11, :cond_a

    .line 1173
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    aget-object v11, v11, v1

    iget-boolean v11, v11, Lcom/android/smith/SystemLoggers$ServiceInfo;->running:Z

    if-eqz v11, :cond_12

    .line 1175
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    aget-object v12, v12, v1

    iget-object v12, v12, Lcom/android/smith/SystemLoggers$ServiceInfo;->path:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .end local v5           #pathExternal:Ljava/lang/String;
    :goto_7
    iput-object v5, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->path:Ljava/lang/String;

    .line 1246
    :cond_a
    :goto_8
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-object v11, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->path:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/smith/Device;->getFsAvailableSpaceMB(Ljava/lang/String;)J

    move-result-wide v8

    .line 1248
    .local v8, storage_size:J
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-object v11, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->path:Ljava/lang/String;

    const-string v12, "/data/data/com.android.smith/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 1250
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    const-string v12, "/data/data/com.android.smith/htclog/"

    iput-object v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->path:Ljava/lang/String;

    .line 1257
    :goto_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Current logging path = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-object v12, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->path:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Current storage free space = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " MB\n\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1261
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget v11, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->size_limit:I

    int-to-long v11, v11

    cmp-long v11, v8, v11

    if-gez v11, :cond_b

    .line 1263
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n\n-> Storage free size ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " MB) is smaller than the size limitaion ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget v12, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->size_limit:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " MB)! Loggers will use all the available space!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1267
    :cond_b
    iget-boolean v11, p0, Lcom/android/smith/SystemLoggers;->mRunning:Z

    if-eqz v11, :cond_1e

    .line 1269
    const-wide/16 v2, 0x0

    .line 1272
    .local v2, logsize:J
    const/4 v1, 0x0

    :goto_a
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    array-length v11, v11

    if-ge v1, v11, :cond_1d

    .line 1274
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    aget-object v11, v11, v1

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    aget-object v11, v11, v1

    iget-object v11, v11, Lcom/android/smith/SystemLoggers$ServiceInfo;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    aget-object v11, v11, v1

    iget-object v11, v11, Lcom/android/smith/SystemLoggers$ServiceInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    if-nez v11, :cond_1c

    .line 1272
    :cond_c
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1118
    .end local v2           #logsize:J
    .end local v4           #msg:Ljava/lang/String;
    .end local v6           #pathPhone:Ljava/lang/String;
    .end local v7           #session_size:I
    .end local v8           #storage_size:J
    .end local v10           #warn:Ljava/lang/String;
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 1119
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 1123
    :cond_f
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mRadioPhone:Landroid/widget/RadioButton;

    invoke-virtual {v12}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v12

    iput-boolean v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->use_phone_storage:Z

    .line 1124
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mRadioExternal:Landroid/widget/RadioButton;

    invoke-virtual {v12}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v12

    iput-boolean v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->use_external_storage:Z

    goto/16 :goto_5

    .line 1175
    .restart local v4       #msg:Ljava/lang/String;
    .restart local v5       #pathExternal:Ljava/lang/String;
    .restart local v6       #pathPhone:Ljava/lang/String;
    .restart local v7       #session_size:I
    .restart local v10       #warn:Ljava/lang/String;
    :cond_10
    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    aget-object v12, v12, v1

    iget-object v12, v12, Lcom/android/smith/SystemLoggers$ServiceInfo;->path:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    move-object v5, v6

    goto/16 :goto_7

    :cond_11
    const-string v5, "/data/data/com.android.smith/"

    goto/16 :goto_7

    .line 1171
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 1182
    :cond_13
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->path:Ljava/lang/String;

    .line 1184
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-boolean v11, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->use_external_storage:Z

    if-eqz v11, :cond_14

    .line 1186
    invoke-static {}, Lcom/android/smith/HtcNative;->getExternalStorageState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_16

    invoke-static {v5}, Lcom/android/smith/Device;->canWrite(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 1188
    const-string v11, "SM:SystemLoggers"

    const-string v12, "can access external storage."

    invoke-static {v11, v12}, Lcom/android/smith/Device$Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iput-object v5, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->path:Ljava/lang/String;

    .line 1192
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->use_phone_storage:Z

    .line 1214
    :cond_14
    :goto_c
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-boolean v11, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->use_phone_storage:Z

    if-eqz v11, :cond_15

    .line 1216
    invoke-static {}, Lcom/android/smith/HtcNative;->getPhoneStorageState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_19

    invoke-static {v6}, Lcom/android/smith/Device;->canWrite(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 1218
    const-string v11, "SM:SystemLoggers"

    const-string v12, "can access phone storage."

    invoke-static {v11, v12}, Lcom/android/smith/Device$Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iput-object v6, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->path:Ljava/lang/String;

    .line 1222
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->use_external_storage:Z

    .line 1240
    :cond_15
    :goto_d
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-object v11, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->path:Ljava/lang/String;

    if-nez v11, :cond_a

    .line 1242
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    const-string v12, "/data/data/com.android.smith/"

    iput-object v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->path:Ljava/lang/String;

    goto/16 :goto_8

    .line 1196
    :cond_16
    const-string v11, "SM:SystemLoggers"

    const-string v12, "cannot access external storage!"

    invoke-static {v11, v12}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->use_external_storage:Z

    .line 1200
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-boolean v11, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->auto_select:Z

    if-eqz v11, :cond_17

    .line 1202
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->use_phone_storage:Z

    goto :goto_c

    .line 1206
    :cond_17
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n\n-> Cannot save to external storage! Logging to internal storage instead!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1208
    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mRadioInternal:Landroid/widget/RadioButton;

    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-boolean v11, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->use_external_storage:Z

    if-nez v11, :cond_18

    const/4 v11, 0x1

    :goto_e
    invoke-virtual {v12, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1209
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mRadioExternal:Landroid/widget/RadioButton;

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-boolean v12, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->use_external_storage:Z

    invoke-virtual {v11, v12}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_c

    .line 1208
    :cond_18
    const/4 v11, 0x0

    goto :goto_e

    .line 1226
    :cond_19
    const-string v11, "SM:SystemLoggers"

    const-string v12, "cannot access phone storage!"

    invoke-static {v11, v12}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->use_phone_storage:Z

    .line 1230
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-boolean v11, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->auto_select:Z

    if-nez v11, :cond_15

    .line 1232
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n\n-> Cannot save to phone storage! Logging to internal storage instead!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1234
    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mRadioInternal:Landroid/widget/RadioButton;

    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-boolean v11, v11, Lcom/android/smith/SystemLoggers$RunningSettings;->use_phone_storage:Z

    if-nez v11, :cond_1a

    const/4 v11, 0x1

    :goto_f
    invoke-virtual {v12, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1235
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mRadioPhone:Landroid/widget/RadioButton;

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-boolean v12, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->use_phone_storage:Z

    invoke-virtual {v11, v12}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_d

    .line 1234
    :cond_1a
    const/4 v11, 0x0

    goto :goto_f

    .line 1254
    .end local v5           #pathExternal:Ljava/lang/String;
    .restart local v8       #storage_size:J
    :cond_1b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-object v13, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->path:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "htclog/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v12, Lcom/android/smith/SystemLoggers$RunningSettings;->path:Ljava/lang/String;

    goto/16 :goto_9

    .line 1277
    .restart local v2       #logsize:J
    :cond_1c
    iget-object v11, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    aget-object v11, v11, v1

    invoke-virtual {v11}, Lcom/android/smith/SystemLoggers$ServiceInfo;->getLogSize()J

    move-result-wide v11

    add-long/2addr v2, v11

    goto/16 :goto_b

    .line 1280
    :cond_1d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Current log size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " MB\n\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1283
    .end local v2           #logsize:J
    :cond_1e
    if-eqz p1, :cond_1f

    .line 1285
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Continue to run ?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1287
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f040052

    invoke-virtual {p0, v12}, Lcom/android/smith/SystemLoggers;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f040036

    iget-object v13, p0, Lcom/android/smith/SystemLoggers;->clickListenerOk:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f040033

    iget-object v13, p0, Lcom/android/smith/SystemLoggers;->clickListenerCancel:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x108009b

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    .line 1310
    :goto_10
    iget-boolean v11, p0, Lcom/android/smith/SystemLoggers;->mRunning:Z

    if-nez v11, :cond_0

    const-string v11, "\n\n"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1312
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v12, "Warnings"

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f040036

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x1080027

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1299
    :cond_1f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Press button to close ..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1301
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-direct {v11, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f040052

    invoke-virtual {p0, v12}, Lcom/android/smith/SystemLoggers;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f040036

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x108009b

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    goto :goto_10
.end method

.method private runDumpLastKmsg()V
    .locals 2

    .prologue
    .line 816
    new-instance v0, Lcom/android/smith/ClientLocalSocket;

    const v1, 0xffe7

    invoke-direct {v0, v1}, Lcom/android/smith/ClientLocalSocket;-><init>(I)V

    .line 818
    .local v0, mSocket:Lcom/android/smith/ClientLocalSocket;
    if-nez v0, :cond_0

    .line 825
    :goto_0
    return-void

    .line 821
    :cond_0
    const-string v1, "dumplastkmsg"

    invoke-virtual {v0, v1}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 823
    invoke-virtual {v0}, Lcom/android/smith/ClientLocalSocket;->close()V

    .line 824
    const/4 v0, 0x0

    .line 825
    goto :goto_0
.end method

.method private showProgress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "text"

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 808
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 812
    .end local p1
    .end local p2
    :goto_0
    return-void

    .line 811
    .restart local p1
    .restart local p2
    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    .end local p1
    :cond_2
    if-nez p2, :cond_3

    const-string p2, ""

    .end local p2
    :cond_3
    invoke-static {p0, p1, p2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method public static updateConfigAutoStart(Z)V
    .locals 4
    .parameter "autostart"

    .prologue
    .line 789
    const-string v2, "/data/data/com.android.smith/smghost/SystemLoggers.conf"

    invoke-static {v2}, Lcom/android/smith/HtcNative;->confLoad(Ljava/lang/String;)J

    move-result-wide v0

    .line 791
    .local v0, mConf:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 798
    :goto_0
    return-void

    .line 794
    :cond_0
    const-string v2, "AutoStart"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 796
    invoke-static {v0, v1}, Lcom/android/smith/HtcNative;->confSave(J)Z

    .line 797
    invoke-static {v0, v1}, Lcom/android/smith/HtcNative;->confClose(J)V

    goto :goto_0
.end method

.method private updateViews(Z)V
    .locals 5
    .parameter "force_off"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 829
    iget-boolean v1, p0, Lcom/android/smith/SystemLoggers;->mRunning:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 831
    :cond_0
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mButtonStart:Landroid/widget/Button;

    const v4, 0x7f040055

    invoke-virtual {p0, v4}, Lcom/android/smith/SystemLoggers;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 832
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mEditSize:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 833
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mEditRotate:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 834
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mEditSizeLimit:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 835
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mEditSizeReserved:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 838
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mButtonNoSizeLimit:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 839
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mRadioInternal:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 840
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mRadioPhone:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 841
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mRadioExternal:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 842
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mRadioAutoSelect:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 843
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mCheckAutoRun:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 844
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mCheckAutoClear:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 845
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mCheckAutoCompress:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 847
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mButtonClearLogs:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 870
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/smith/SystemLoggers$ServiceInfo;->updateLayout(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 851
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mButtonStart:Landroid/widget/Button;

    const v4, 0x7f040054

    invoke-virtual {p0, v4}, Lcom/android/smith/SystemLoggers;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 852
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mEditSize:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 853
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mEditRotate:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 854
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mEditSizeLimit:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 855
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mEditSizeReserved:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 858
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mButtonNoSizeLimit:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 859
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mRadioInternal:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 860
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mRadioPhone:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 861
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mRadioExternal:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 862
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mRadioAutoSelect:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 863
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mCheckAutoRun:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 864
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mCheckAutoClear:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 865
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mCheckAutoCompress:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 867
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mButtonClearLogs:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 872
    .restart local v0       #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/smith/SystemLoggers;->mButtonStart:Landroid/widget/Button;

    if-nez p1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 873
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mButtonExamSettings:Landroid/widget/Button;

    if-nez p1, :cond_4

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 874
    return-void

    :cond_3
    move v1, v3

    .line 872
    goto :goto_2

    :cond_4
    move v2, v3

    .line 873
    goto :goto_3
.end method

.method private update_status_bar(Z)V
    .locals 5
    .parameter "enableOnly"

    .prologue
    .line 1428
    const-string v3, "logctl"

    const-string v4, ":islogging:"

    invoke-static {v3, v4}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1429
    .local v0, logging:Ljava/lang/String;
    const-string v3, "logctl"

    const-string v4, ":getpath:"

    invoke-static {v3, v4}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1431
    .local v2, path:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.smith.SYSTEMLOGGERS_STATUS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1432
    .local v1, notificaionIntent:Landroid/content/Intent;
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1434
    const-string v3, "status"

    const-string v4, "enabled"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1435
    const-string v3, "path"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1445
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/smith/SystemLoggers;->sendBroadcast(Landroid/content/Intent;)V

    .line 1446
    :cond_0
    return-void

    .line 1439
    :cond_1
    if-nez p1, :cond_0

    .line 1443
    const-string v3, "status"

    const-string v4, "disabled"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1343
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mButtonStart:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 1345
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mButtonStart:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1347
    iget-boolean v0, p0, Lcom/android/smith/SystemLoggers;->mRunning:Z

    if-eqz v0, :cond_0

    .line 1349
    iput-boolean v1, p0, Lcom/android/smith/SystemLoggers;->mRunning:Z

    .line 1350
    invoke-direct {p0, v3}, Lcom/android/smith/SystemLoggers;->updateViews(Z)V

    .line 1351
    const-string v0, "Stopping ..."

    invoke-direct {p0, v2, v0}, Lcom/android/smith/SystemLoggers;->showProgress(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    new-instance v0, Lcom/android/smith/SystemLoggers$Worker;

    const/4 v1, 0x3

    const/16 v2, 0xd

    invoke-direct {v0, p0, v1, v2}, Lcom/android/smith/SystemLoggers$Worker;-><init>(Lcom/android/smith/SystemLoggers;II)V

    invoke-virtual {v0}, Lcom/android/smith/SystemLoggers$Worker;->start()V

    .line 1359
    :goto_0
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mButtonStart:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1421
    :goto_1
    return-void

    .line 1356
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/smith/SystemLoggers;->prepareToRun(Z)V

    goto :goto_0

    .line 1361
    :cond_1
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mButtonExamSettings:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 1363
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mButtonExamSettings:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1364
    invoke-direct {p0, v1}, Lcom/android/smith/SystemLoggers;->prepareToRun(Z)V

    .line 1365
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mButtonExamSettings:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 1367
    :cond_2
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mButtonClearLogs:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 1369
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mButtonClearLogs:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1370
    const-string v0, "Clearing, please wait ..."

    invoke-direct {p0, v2, v0}, Lcom/android/smith/SystemLoggers;->showProgress(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    new-instance v0, Lcom/android/smith/SystemLoggers$Worker;

    const/4 v1, 0x4

    const/16 v2, 0xe

    invoke-direct {v0, p0, v1, v2}, Lcom/android/smith/SystemLoggers$Worker;-><init>(Lcom/android/smith/SystemLoggers;II)V

    invoke-virtual {v0}, Lcom/android/smith/SystemLoggers$Worker;->start()V

    .line 1372
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mButtonClearLogs:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 1374
    :cond_3
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mButtonNoSizeLimit:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 1376
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mEditSizeLimit:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/android/smith/SystemLoggers;->getMaxStorageSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1419
    :cond_4
    const-string v0, "SM:SystemLoggers"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown View: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 928
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 931
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->setContentView(I)V

    .line 934
    new-array v0, v8, [Lcom/android/smith/SystemLoggers$ServiceInfo;

    new-instance v1, Lcom/android/smith/SystemLoggers$ServiceInfo;

    const-string v2, "logctl"

    const-string v3, "HTC Logs"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "logdevice"

    aput-object v5, v4, v9

    const-string v5, "logradio"

    aput-object v5, v4, v8

    const-string v5, "logevents"

    aput-object v5, v4, v7

    const/4 v5, 0x3

    const-string v6, "logkmsg"

    aput-object v6, v4, v5

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/smith/SystemLoggers$ServiceInfo;-><init>(Lcom/android/smith/SystemLoggers;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v1, v0, v9

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    .line 939
    new-instance v0, Lcom/android/smith/SystemLoggers$RunningSettings;

    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lcom/android/smith/SystemLoggers$RunningSettings;-><init>(Lcom/android/smith/SystemLoggers;I)V

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    .line 942
    const v0, 0x7f050038

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mEditSize:Landroid/widget/EditText;

    .line 943
    const v0, 0x7f050039

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mEditRotate:Landroid/widget/EditText;

    .line 944
    const v0, 0x7f05003a

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mEditSizeLimit:Landroid/widget/EditText;

    .line 945
    const v0, 0x7f05003c

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mEditSizeReserved:Landroid/widget/EditText;

    .line 948
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mEditSize:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 949
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mEditRotate:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 950
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mEditSizeLimit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 951
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mEditSizeReserved:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 954
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mEditSize:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 955
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mEditRotate:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 956
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mEditSizeLimit:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 957
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mEditSizeReserved:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 960
    const v0, 0x7f05002d

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mLayoutLoggers:Landroid/widget/LinearLayout;

    .line 962
    const v0, 0x7f050030

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mRadioInternal:Landroid/widget/RadioButton;

    .line 963
    const v0, 0x7f050031

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mTextInternal:Landroid/widget/TextView;

    .line 964
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mTextInternal:Landroid/widget/TextView;

    const-string v1, "Log path : /data/data/com.android.smith/htclog/"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    const v0, 0x7f050032

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mRadioPhone:Landroid/widget/RadioButton;

    .line 967
    const v0, 0x7f050033

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mTextPhone:Landroid/widget/TextView;

    .line 968
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mTextPhone:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/smith/HtcNative;->getPhoneStorageDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "htclog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 970
    const v0, 0x7f05002f

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mRadioExternal:Landroid/widget/RadioButton;

    .line 971
    const v0, 0x7f050034

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mTextExternal:Landroid/widget/TextView;

    .line 972
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mTextExternal:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/smith/HtcNative;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "htclog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
    const v0, 0x7f05003d

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mRadioAutoSelect:Landroid/widget/RadioButton;

    .line 975
    const v0, 0x7f05003e

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mTextAutoSelect:Landroid/widget/TextView;

    .line 976
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mTextAutoSelect:Landroid/widget/TextView;

    const-string v1, "Log path : change dynamically"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 978
    const v0, 0x7f05003f

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mCheckAutoRun:Landroid/widget/CheckBox;

    .line 979
    const v0, 0x7f050040

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mCheckAutoClear:Landroid/widget/CheckBox;

    .line 980
    const v0, 0x7f050041

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mCheckAutoCompress:Landroid/widget/CheckBox;

    .line 981
    const v0, 0x7f050044

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mButtonStart:Landroid/widget/Button;

    .line 983
    const v0, 0x7f05003b

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mButtonNoSizeLimit:Landroid/widget/Button;

    .line 984
    const v0, 0x7f050042

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mButtonExamSettings:Landroid/widget/Button;

    .line 985
    const v0, 0x7f050043

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/smith/SystemLoggers;->mButtonClearLogs:Landroid/widget/Button;

    .line 987
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mButtonStart:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 989
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mButtonNoSizeLimit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 990
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mButtonExamSettings:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 991
    iget-object v0, p0, Lcom/android/smith/SystemLoggers;->mButtonClearLogs:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 993
    invoke-direct {p0, v8}, Lcom/android/smith/SystemLoggers;->updateViews(Z)V

    .line 995
    invoke-virtual {p0}, Lcom/android/smith/SystemLoggers;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "4.6"

    invoke-static {v0, v1}, Lcom/android/smith/Version;->composeVersions(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/smith/SystemLoggers;->setTitle(Ljava/lang/CharSequence;)V

    .line 997
    invoke-static {p0}, Lcom/android/smith/Device;->keepScreenOn(Landroid/app/Activity;)V

    .line 999
    const/4 v0, 0x0

    const-string v1, "Updating ..."

    invoke-direct {p0, v0, v1}, Lcom/android/smith/SystemLoggers;->showProgress(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    new-instance v0, Lcom/android/smith/SystemLoggers$Worker;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v8, v1}, Lcom/android/smith/SystemLoggers$Worker;-><init>(Lcom/android/smith/SystemLoggers;II)V

    invoke-virtual {v0}, Lcom/android/smith/SystemLoggers$Worker;->start()V

    .line 1002
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 917
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 919
    invoke-static {}, Lcom/android/smith/Device;->isUsbDebuggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 921
    invoke-static {p0}, Lcom/android/smith/Device;->showUsbDebuggingWarning(Landroid/content/Context;)V

    .line 923
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 879
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 881
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    if-eqz v1, :cond_1

    .line 896
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 898
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 900
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mLoggers:[Lcom/android/smith/SystemLoggers$ServiceInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/smith/SystemLoggers$ServiceInfo;->detachLayout()Z

    .line 896
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 905
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    if-eqz v1, :cond_2

    .line 907
    iget-object v1, p0, Lcom/android/smith/SystemLoggers;->mSettings:Lcom/android/smith/SystemLoggers$RunningSettings;

    invoke-virtual {v1}, Lcom/android/smith/SystemLoggers$RunningSettings;->close()V

    .line 910
    :cond_2
    invoke-direct {p0, v2, v2}, Lcom/android/smith/SystemLoggers;->showProgress(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-virtual {p0}, Lcom/android/smith/SystemLoggers;->finish()V

    .line 912
    return-void
.end method
