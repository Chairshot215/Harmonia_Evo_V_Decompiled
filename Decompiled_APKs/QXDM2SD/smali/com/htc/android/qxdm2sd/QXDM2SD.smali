.class public Lcom/htc/android/qxdm2sd/QXDM2SD;
.super Landroid/app/Activity;
.source "QXDM2SD.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;,
        Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;
    }
.end annotation


# static fields
.field public static final ACTION_CONTROLLER_QXDM2SD:Ljava/lang/String; = "com.htc.android.qxdm2sd.QXDM2SD.CONTROLLER"

.field public static final ACTION_CONTROLLER_QXDM2SD_RESULT:Ljava/lang/String; = "com.htc.android.qxdm2sd.QXDM2SD.CONTROLLER_RESULT"

.field public static final ACTION_QXDM2SD_DAEMON_STOP:Ljava/lang/String; = "com.htc.android.qxdm2sd.QXDM2SD.DAEMON.STOP"

.field private static final DAEMON:Ljava/lang/String; = "/data/data/com.htc.android.qxdm2sd/bin/htcqxdm2sd"

.field public static final DEFAULT_ROTATE_COUNT:I = 0xa

.field public static final DEFAULT_ROTATE_SIZE:I = 0x40

.field public static final KEY_AUTOSTART:Ljava/lang/String; = "AutoStart"

.field public static final KEY_DEV_QXDM7K:Ljava/lang/String; = "qxdm7k"

.field public static final KEY_DEV_QXDM9K:Ljava/lang/String; = "qxdm9k"

.field public static final KEY_DEV_QXDMEXT:Ljava/lang/String; = "qxdmExt"

.field public static final KEY_DEV_TITRACE:Ljava/lang/String; = "tiTrace"

.field public static final KEY_ROTATE_COUNT:Ljava/lang/String; = "RotateCount"

.field public static final KEY_ROTATE_SIZE:Ljava/lang/String; = "RotateSizeMB"

.field public static final KEY_STORAGE_PATH:Ljava/lang/String; = "StoragePath"

.field private static final MENU_ID_ABOUT:I = 0x1

.field private static final MENU_ID_DELETE_LOG:I = 0x2

.field private static final MSG_CHOICE_FILE_DIALOG:I = 0xc

.field private static final MSG_DELETE_LOG:I = 0xa

.field private static final MSG_DELETE_LOG_DONE:I = 0x3f2

.field private static final MSG_DONE_OFFSET:I = 0x3e8

.field private static final MSG_SEND_UNIAT_COMMAND:I = 0x5

.field private static final MSG_SHOW_INFO:I = 0x1

.field private static final MSG_SHOW_PROGRESS:I = 0xb

.field private static final MSG_START_DAEMON:I = 0x8

.field private static final MSG_START_LOGGER:I = 0x6

.field private static final MSG_START_LOGGER_DONE:I = 0x3ee

.field private static final MSG_STOP_DAEMON:I = 0x9

.field private static final MSG_STOP_LOGGER:I = 0x7

.field private static final MSG_STOP_LOGGER_DONE:I = 0x3ef

.field private static final MSG_UNIAT_COMMAND:I = 0x3

.field private static final MSG_UPDATE_STATUS:I = 0x2

.field private static final QXDM_MASK_KEY:Ljava/lang/String; = ".dat"

.field public static final SETTING_FILENAME:Ljava/lang/String; = "/data/data/com.htc.android.qxdm2sd/data/qxdm2sd.conf"

.field public static final SUBKEY_MASK:Ljava/lang/String; = "Mask"

.field public static final SUBKEY_NULLMASK:Ljava/lang/String; = "NullMask"

.field public static final TAG:Ljava/lang/String; = "QXDM2SD"

.field private static final TIME_TO_CHECK_LOG:I = 0x1388

.field public static final VAL_EXTERNAL_STORAGE:Ljava/lang/String; = "EXTERNAL_STORAGE"

.field public static final VAL_INTERNAL_STORAGE:Ljava/lang/String; = "INTERNAL_STORAGE"

.field public static final VAL_PHONE_STORAGE:Ljava/lang/String; = "PHONE_STORAGE"

.field private static final VERBOSE:Z = true


# instance fields
.field private clickOk:Landroid/content/DialogInterface$OnClickListener;

.field private mAllDiagStatus:[Ljava/lang/String;

.field private mAtCmdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoStart:Z

.field private mButtonDisable:Landroid/widget/Button;

.field private mButtonEnable:Landroid/widget/Button;

.field private mChangeRadio_storage:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mCheckAutoStart:Landroid/widget/CheckBox;

.field private mConf:J

.field private mDaemonRunning:Z

.field private mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

.field private final mDialogListener_cancel:Landroid/content/DialogInterface$OnClickListener;

.field private final mDialogListener_hasMask:Landroid/content/DialogInterface$OnClickListener;

.field private mEditRotateCount:Landroid/widget/EditText;

.field private mEditRotateSize:Landroid/widget/EditText;

.field private mExternalStorage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutDiags:Landroid/widget/LinearLayout;

.field private mMaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStorage:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRadioExternalStorage:Landroid/widget/RadioButton;

.field private mRadioGroupStorage:Landroid/widget/RadioGroup;

.field private mRadioPhoneStorage:Landroid/widget/RadioButton;

.field private mRotateCount:I

.field private mRotateSizeMB:I

.field private mSelItems:[Ljava/lang/CharSequence;

.field private mSelectedView:Landroid/view/View;

.field private mStoragePath:Ljava/lang/String;

.field private mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mAutoStart:Z

    .line 116
    const/16 v0, 0x40

    iput v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRotateSizeMB:I

    .line 117
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRotateCount:I

    .line 118
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    .line 120
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mAllDiagStatus:[Ljava/lang/String;

    .line 124
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mEditRotateSize:Landroid/widget/EditText;

    .line 125
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mEditRotateCount:Landroid/widget/EditText;

    .line 126
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mCheckAutoStart:Landroid/widget/CheckBox;

    .line 127
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mButtonEnable:Landroid/widget/Button;

    .line 128
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mButtonDisable:Landroid/widget/Button;

    .line 129
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mSelectedView:Landroid/view/View;

    .line 130
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mLayoutDiags:Landroid/widget/LinearLayout;

    .line 135
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    .line 136
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mMaskList:Ljava/util/List;

    .line 137
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mAtCmdList:Ljava/util/List;

    .line 138
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mSelItems:[Ljava/lang/CharSequence;

    .line 139
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 145
    new-instance v0, Lcom/htc/android/qxdm2sd/QXDM2SD$1;

    invoke-direct {v0, p0}, Lcom/htc/android/qxdm2sd/QXDM2SD$1;-><init>(Lcom/htc/android/qxdm2sd/QXDM2SD;)V

    iput-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDialogListener_hasMask:Landroid/content/DialogInterface$OnClickListener;

    .line 173
    new-instance v0, Lcom/htc/android/qxdm2sd/QXDM2SD$2;

    invoke-direct {v0, p0}, Lcom/htc/android/qxdm2sd/QXDM2SD$2;-><init>(Lcom/htc/android/qxdm2sd/QXDM2SD;)V

    iput-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDialogListener_cancel:Landroid/content/DialogInterface$OnClickListener;

    .line 190
    new-instance v0, Lcom/htc/android/qxdm2sd/QXDM2SD$3;

    invoke-direct {v0, p0}, Lcom/htc/android/qxdm2sd/QXDM2SD$3;-><init>(Lcom/htc/android/qxdm2sd/QXDM2SD;)V

    iput-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mChangeRadio_storage:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 854
    new-instance v0, Lcom/htc/android/qxdm2sd/QXDM2SD$4;

    invoke-direct {v0, p0}, Lcom/htc/android/qxdm2sd/QXDM2SD$4;-><init>(Lcom/htc/android/qxdm2sd/QXDM2SD;)V

    iput-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->clickOk:Landroid/content/DialogInterface$OnClickListener;

    .line 1130
    new-instance v0, Lcom/htc/android/qxdm2sd/QXDM2SD$5;

    invoke-direct {v0, p0}, Lcom/htc/android/qxdm2sd/QXDM2SD$5;-><init>(Lcom/htc/android/qxdm2sd/QXDM2SD;)V

    iput-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;

    .line 1216
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mSelectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/android/qxdm2sd/QXDM2SD;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mSelectedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mMaskList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/android/qxdm2sd/QXDM2SD;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->updateStatus()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/android/qxdm2sd/QXDM2SD;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mMaskList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mAtCmdList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/android/qxdm2sd/QXDM2SD;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/android/qxdm2sd/QXDM2SD;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->showProgress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/android/qxdm2sd/QXDM2SD;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->showSingleChoiceItemDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/android/qxdm2sd/QXDM2SD;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/android/qxdm2sd/QXDM2SD;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDaemonRunning:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/android/qxdm2sd/QXDM2SD;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDaemonRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mSelItems:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/android/qxdm2sd/QXDM2SD;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mSelItems:[Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/qxdm2sd/QXDM2SD;)Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/android/qxdm2sd/QXDM2SD;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mPhoneStorage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mExternalStorage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mAllDiagStatus:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/android/qxdm2sd/QXDM2SD;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mAllDiagStatus:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/android/qxdm2sd/QXDM2SD;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->showVersionDialog()V

    return-void
.end method

.method public static createDefaultConfig()Z
    .locals 8

    .prologue
    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    .line 525
    const-string v4, "/data/data/com.htc.android.qxdm2sd/data/qxdm2sd.conf"

    invoke-static {v4}, Lcom/htc/android/qxdm2sd/HtcNative;->confLoad(Ljava/lang/String;)J

    move-result-wide v0

    .line 527
    .local v0, mConf:J
    cmp-long v4, v0, v5

    if-nez v4, :cond_1

    .line 529
    const-string v4, "/data/data/com.htc.android.qxdm2sd/data/qxdm2sd.conf"

    invoke-static {v4}, Lcom/htc/android/qxdm2sd/HtcNative;->confNew(Ljava/lang/String;)J

    move-result-wide v0

    .line 531
    cmp-long v4, v0, v5

    if-nez v4, :cond_0

    .line 533
    const-string v4, "QXDM2SD"

    const-string v5, "cannot create new config!"

    invoke-static {v4, v5}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const/4 v3, 0x0

    .line 648
    :goto_0
    return v3

    .line 537
    :cond_0
    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/HtcNative;->confClear(J)V

    .line 540
    :cond_1
    const/4 v3, 0x1

    .line 542
    .local v3, ret:Z
    const-string v4, ""

    const-string v5, "AutoStart"

    const-string v6, ""

    invoke-static {v0, v1, v5, v6}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 544
    const-string v4, "AutoStart"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v4, v5}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 547
    :cond_2
    const-string v4, ""

    const-string v5, "RotateSizeMB"

    const-string v6, ""

    invoke-static {v0, v1, v5, v6}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 549
    const-string v4, "RotateSizeMB"

    const/16 v5, 0x40

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v4, v5}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 552
    :cond_3
    const-string v4, ""

    const-string v5, "RotateCount"

    const-string v6, ""

    invoke-static {v0, v1, v5, v6}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 554
    const-string v4, "RotateCount"

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v4, v5}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 557
    :cond_4
    const-string v4, "StoragePath"

    const-string v5, ""

    invoke-static {v0, v1, v4, v5}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, path:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 561
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/htc/android/qxdm2sd/Device;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 564
    const-string v4, "StoragePath"

    const-string v5, "EXTERNAL_STORAGE"

    invoke-static {v0, v1, v4, v5}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 566
    invoke-static {}, Lcom/htc/android/qxdm2sd/HtcNative;->getExternalStorageState()I

    move-result v4

    if-nez v4, :cond_5

    .line 569
    const/4 v3, 0x0

    .line 608
    :cond_5
    :goto_1
    const-string v4, ""

    const-string v5, "qxdm7k:Mask"

    const-string v6, ""

    invoke-static {v0, v1, v5, v6}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 610
    const-string v4, "qxdm7k:Mask"

    const-string v5, "7k_maskFile.dat"

    invoke-static {v0, v1, v4, v5}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 612
    :cond_6
    const-string v4, ""

    const-string v5, "qxdm7k:NullMask"

    const-string v6, ""

    invoke-static {v0, v1, v5, v6}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 614
    const-string v4, "qxdm7k:NullMask"

    const-string v5, "7k_maskFile_null.dat"

    invoke-static {v0, v1, v4, v5}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 617
    :cond_7
    const-string v4, ""

    const-string v5, "qxdm9k:Mask"

    const-string v6, ""

    invoke-static {v0, v1, v5, v6}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 619
    const-string v4, "qxdm9k:Mask"

    const-string v5, "9k_maskFile.dat"

    invoke-static {v0, v1, v4, v5}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 621
    :cond_8
    const-string v4, ""

    const-string v5, "qxdm9k:NullMask"

    const-string v6, ""

    invoke-static {v0, v1, v5, v6}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 623
    const-string v4, "qxdm9k:NullMask"

    const-string v5, "9k_maskFile_null.dat"

    invoke-static {v0, v1, v4, v5}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 626
    :cond_9
    const-string v4, ""

    const-string v5, "qxdmExt:Mask"

    const-string v6, ""

    invoke-static {v0, v1, v5, v6}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 628
    const-string v4, "qxdmExt:Mask"

    const-string v5, "7k_maskFile.dat"

    invoke-static {v0, v1, v4, v5}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 630
    :cond_a
    const-string v4, ""

    const-string v5, "qxdmExt:NullMask"

    const-string v6, ""

    invoke-static {v0, v1, v5, v6}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 632
    const-string v4, "qxdmExt:NullMask"

    const-string v5, "7k_maskFile_null.dat"

    invoke-static {v0, v1, v4, v5}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 635
    :cond_b
    const-string v4, ""

    const-string v5, "tiTrace:Mask"

    const-string v6, ""

    invoke-static {v0, v1, v5, v6}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 637
    const-string v4, "tiTrace:Mask"

    const-string v5, "trace_mux.dat"

    invoke-static {v0, v1, v4, v5}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 639
    :cond_c
    const-string v4, ""

    const-string v5, "tiTrace:NullMask"

    const-string v6, ""

    invoke-static {v0, v1, v5, v6}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 641
    const-string v4, "tiTrace:NullMask"

    const-string v5, "trace_mux_null.dat"

    invoke-static {v0, v1, v4, v5}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 644
    :cond_d
    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/HtcNative;->confSort(J)V

    .line 645
    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/HtcNative;->confSave(J)Z

    .line 646
    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/HtcNative;->confClose(J)V

    goto/16 :goto_0

    .line 572
    :cond_e
    invoke-static {}, Lcom/htc/android/qxdm2sd/HtcNative;->getExternalStorageState()I

    move-result v4

    if-ne v4, v7, :cond_f

    .line 575
    const-string v4, "StoragePath"

    const-string v5, "EXTERNAL_STORAGE"

    invoke-static {v0, v1, v4, v5}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 577
    :cond_f
    const-string v4, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 580
    const-string v4, "StoragePath"

    const-string v5, "PHONE_STORAGE"

    invoke-static {v0, v1, v4, v5}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 585
    :cond_10
    const-string v4, "StoragePath"

    const-string v5, "EXTERNAL_STORAGE"

    invoke-static {v0, v1, v4, v5}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 588
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 591
    :cond_11
    const-string v4, "EXTERNAL_STORAGE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 593
    invoke-static {}, Lcom/htc/android/qxdm2sd/HtcNative;->getExternalStorageState()I

    move-result v4

    if-nez v4, :cond_5

    .line 596
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 599
    :cond_12
    const-string v4, "PHONE_STORAGE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 601
    const-string v4, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 604
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method public static getDaemonPID()I
    .locals 5

    .prologue
    .line 1398
    const/4 v1, 0x0

    .line 1402
    .local v1, pid:I
    :try_start_0
    const-string v2, "/data/data/com.htc.android.qxdm2sd/bin/htcqxdm2sd -p"

    invoke-static {v2}, Lcom/htc/android/qxdm2sd/Device;->getCommandOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1409
    :goto_0
    return v1

    .line 1404
    :catch_0
    move-exception v0

    .line 1406
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "QXDM2SD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDaemonPID(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDaemonStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1414
    const-string v0, "/data/data/com.htc.android.qxdm2sd/bin/htcqxdm2sd -l"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device;->getCommandOutput(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDaemonVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1393
    const-string v0, "/data/data/com.htc.android.qxdm2sd/bin/htcqxdm2sd -v"

    invoke-static {v0}, Lcom/htc/android/qxdm2sd/Device;->getCommandOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "dirPath"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 788
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v3, mList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    const/4 v0, 0x0

    .line 791
    .local v0, dir:Ljava/io/File;
    const/4 v1, 0x0

    .line 793
    .local v1, files:[Ljava/io/File;
    if-nez p1, :cond_1

    move-object v3, v4

    .line 810
    .end local v3           #mList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    :cond_0
    :goto_0
    return-object v3

    .line 796
    .restart local v3       #mList:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0           #dir:Ljava/io/File;
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 797
    .restart local v0       #dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 799
    if-nez v1, :cond_2

    move-object v3, v4

    .line 800
    goto :goto_0

    .line 802
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 804
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 806
    aget-object v4, v1, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 673
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->setContentView(I)V

    .line 675
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mEditRotateSize:Landroid/widget/EditText;

    .line 676
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mEditRotateSize:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 677
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mEditRotateSize:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 679
    const v1, 0x7f050001

    invoke-virtual {p0, v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mEditRotateCount:Landroid/widget/EditText;

    .line 680
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mEditRotateCount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 681
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mEditRotateCount:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 683
    const v1, 0x7f050002

    invoke-virtual {p0, v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mCheckAutoStart:Landroid/widget/CheckBox;

    .line 685
    const v1, 0x7f050003

    invoke-virtual {p0, v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRadioGroupStorage:Landroid/widget/RadioGroup;

    .line 686
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRadioGroupStorage:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mChangeRadio_storage:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 688
    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRadioPhoneStorage:Landroid/widget/RadioButton;

    .line 689
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRadioExternalStorage:Landroid/widget/RadioButton;

    .line 691
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 693
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRadioPhoneStorage:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mPhoneStorage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 694
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRadioExternalStorage:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mExternalStorage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 697
    :cond_0
    const v1, 0x7f050006

    invoke-virtual {p0, v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mLayoutDiags:Landroid/widget/LinearLayout;

    .line 698
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 700
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mLayoutDiags:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->attachLayout(Landroid/content/Context;Landroid/widget/LinearLayout;)Z

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 703
    :cond_1
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mEditRotateSize:Landroid/widget/EditText;

    iget v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRotateSizeMB:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mEditRotateCount:Landroid/widget/EditText;

    iget v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRotateCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mCheckAutoStart:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mAutoStart:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 707
    const v1, 0x7f050007

    invoke-virtual {p0, v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mButtonEnable:Landroid/widget/Button;

    .line 708
    const v1, 0x7f050008

    invoke-virtual {p0, v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mButtonDisable:Landroid/widget/Button;

    .line 710
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mButtonEnable:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mButtonDisable:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mCheckAutoStart:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    return-void
.end method

.method private isStorageMounted()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1071
    const/4 v0, 0x0

    .line 1073
    .local v0, bRet:Z
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mExternalStorage:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mPhoneStorage:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1075
    const-string v1, "QXDM2SD"

    const-string v2, "both external and phone storage are not available"

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    :goto_0
    return v0

    .line 1077
    :cond_0
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1079
    const-string v1, "QXDM2SD"

    const-string v2, "storage is not selected"

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1081
    :cond_1
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mExternalStorage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1083
    invoke-static {}, Lcom/htc/android/qxdm2sd/HtcNative;->getExternalStorageState()I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 1085
    :cond_3
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mPhoneStorage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1087
    invoke-static {}, Lcom/htc/android/qxdm2sd/HtcNative;->getPhoneStorageState()I

    move-result v3

    if-ne v3, v1, :cond_4

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_2

    .line 1091
    :cond_5
    const-string v1, "QXDM2SD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown storage ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private lockView(Z)V
    .locals 5
    .parameter "isLocked"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 742
    iget-object v4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mButtonEnable:Landroid/widget/Button;

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 743
    iget-object v4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mButtonEnable:Landroid/widget/Button;

    if-nez p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 744
    iget-object v4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mCheckAutoStart:Landroid/widget/CheckBox;

    if-nez p1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 745
    iget-object v4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mEditRotateSize:Landroid/widget/EditText;

    if-nez p1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 746
    iget-object v4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mEditRotateCount:Landroid/widget/EditText;

    if-nez p1, :cond_4

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 747
    iget-object v4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRadioExternalStorage:Landroid/widget/RadioButton;

    if-nez p1, :cond_5

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mExternalStorage:Ljava/lang/String;

    if-eqz v1, :cond_5

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 748
    iget-object v4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRadioPhoneStorage:Landroid/widget/RadioButton;

    if-nez p1, :cond_6

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mPhoneStorage:Ljava/lang/String;

    if-eqz v1, :cond_6

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 750
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_8

    .line 752
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v4

    if-nez p1, :cond_7

    move v1, v2

    :goto_8
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 750
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .end local v0           #i:I
    :cond_0
    move v1, v3

    .line 742
    goto :goto_0

    :cond_1
    move v1, v3

    .line 743
    goto :goto_1

    :cond_2
    move v1, v3

    .line 744
    goto :goto_2

    :cond_3
    move v1, v3

    .line 745
    goto :goto_3

    :cond_4
    move v1, v3

    .line 746
    goto :goto_4

    :cond_5
    move v1, v3

    .line 747
    goto :goto_5

    :cond_6
    move v1, v3

    .line 748
    goto :goto_6

    .restart local v0       #i:I
    :cond_7
    move v1, v3

    .line 752
    goto :goto_8

    .line 754
    :cond_8
    return-void
.end method

.method public static runDaemon(Ljava/lang/String;)I
    .locals 4
    .parameter "argv"

    .prologue
    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.htc.android.qxdm2sd/bin/htcqxdm2sd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, cmd:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/qxdm2sd/Device;->execAndWait(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 666
    .end local v0           #cmd:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private showMsgDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 816
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f04000b

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDialogListener_cancel:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 824
    return-void
.end method

.method private showProgress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "text"

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1124
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1128
    .end local p1
    .end local p2
    :goto_0
    return-void

    .line 1127
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

    iput-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method private showSingleChoiceItemDialog(Ljava/lang/String;)V
    .locals 5
    .parameter "title"

    .prologue
    .line 830
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mMaskList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mMaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 832
    :cond_0
    const-string v1, "Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No mask file ( *.dat ) is found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->showMsgDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :goto_0
    return-void

    .line 837
    :cond_1
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mMaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mSelItems:[Ljava/lang/CharSequence;

    .line 839
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mSelItems:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 841
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mSelItems:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mMaskList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 839
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 844
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mSelItems:[Ljava/lang/CharSequence;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDialogListener_hasMask:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f040014

    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDialogListener_cancel:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x108009b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showVersionDialog()V
    .locals 4

    .prologue
    const v3, 0x7f040003

    .line 1099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ver. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f040001

    invoke-virtual {p0, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f040004

    invoke-virtual {p0, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Library Version [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/android/qxdm2sd/HtcNative;->getLibVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ] req [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f040002

    invoke-virtual {p0, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1102
    .local v0, msg:Ljava/lang/String;
    const-string v1, "never"

    invoke-virtual {p0, v3}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Expire Date [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1107
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f04000b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x108009b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1114
    return-void
.end method

.method public static updateConfigAutoStart(Z)V
    .locals 4
    .parameter "autostart"

    .prologue
    .line 653
    const-string v2, "/data/data/com.htc.android.qxdm2sd/data/qxdm2sd.conf"

    invoke-static {v2}, Lcom/htc/android/qxdm2sd/HtcNative;->confLoad(Ljava/lang/String;)J

    move-result-wide v0

    .line 655
    .local v0, mConf:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 662
    :goto_0
    return-void

    .line 658
    :cond_0
    const-string v2, "AutoStart"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 660
    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/HtcNative;->confSave(J)Z

    .line 661
    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/HtcNative;->confClose(J)V

    goto :goto_0
.end method

.method private updateStatus()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 758
    iget-boolean v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDaemonRunning:Z

    if-nez v1, :cond_0

    .line 760
    invoke-direct {p0, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->lockView(Z)V

    .line 762
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mButtonEnable:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 763
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mButtonDisable:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 777
    :goto_0
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mCheckAutoStart:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mAutoStart:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 779
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRadioExternalStorage:Landroid/widget/RadioButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External Storage "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mExternalStorage:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mExternalStorage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 781
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRadioPhoneStorage:Landroid/widget/RadioButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone Storage "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mPhoneStorage:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mPhoneStorage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 783
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->updateInfo()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 767
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->lockView(Z)V

    .line 769
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mButtonEnable:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 770
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mButtonDisable:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 773
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    invoke-virtual {v1, v3}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->removeMessages(I)V

    .line 774
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    invoke-virtual {v2, v3}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 779
    :cond_1
    const-string v1, "is not mounted!"

    goto :goto_1

    .line 781
    :cond_2
    const-string v1, "is not mounted!"

    goto :goto_2

    .line 784
    .restart local v0       #i:I
    :cond_3
    return-void
.end method

.method private updateStorageStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 718
    const-string v0, "mounted"

    invoke-static {}, Lcom/htc/android/qxdm2sd/Device;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 720
    invoke-static {}, Lcom/htc/android/qxdm2sd/Device;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mExternalStorage:Ljava/lang/String;

    .line 721
    const-string v0, "QXDM2SD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "External Storage ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mExternalStorage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is mounted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :goto_0
    const-string v0, "mounted"

    invoke-static {}, Lcom/htc/android/qxdm2sd/Device;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 731
    invoke-static {}, Lcom/htc/android/qxdm2sd/Device;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mPhoneStorage:Ljava/lang/String;

    .line 732
    const-string v0, "QXDM2SD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone Storage ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mPhoneStorage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is mounted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :goto_1
    return-void

    .line 725
    :cond_0
    iput-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mExternalStorage:Ljava/lang/String;

    goto :goto_0

    .line 736
    :cond_1
    iput-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mPhoneStorage:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getDiagInfo(Ljava/lang/String;)Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 418
    if-nez p1, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-object v1

    .line 421
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 423
    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 425
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v1, v1, v0

    goto :goto_0

    .line 421
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public loadConfig()Z
    .locals 7

    .prologue
    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    .line 433
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 435
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/HtcNative;->confClose(J)V

    .line 438
    :cond_0
    const-string v1, "/data/data/com.htc.android.qxdm2sd/data/qxdm2sd.conf"

    invoke-static {v1}, Lcom/htc/android/qxdm2sd/HtcNative;->confLoad(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    .line 440
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    .line 442
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/HtcNative;->confDebugDump(J)V

    .line 444
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    const-string v3, "AutoStart"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mAutoStart:Z

    .line 445
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    const-string v3, "RotateSizeMB"

    const/16 v4, 0x40

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRotateSizeMB:I

    .line 446
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    const-string v3, "RotateCount"

    const/16 v4, 0xa

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRotateCount:I

    .line 447
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    const-string v3, "StoragePath"

    const-string v4, "EXTERNAL_STORAGE"

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;

    .line 450
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;

    const-string v2, "PHONE_STORAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mPhoneStorage:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;

    .line 452
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_6

    .line 454
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 452
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 450
    .end local v0           #i:I
    :cond_2
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mExternalStorage:Ljava/lang/String;

    goto :goto_0

    .line 457
    .restart local v0       #i:I
    :cond_3
    invoke-direct {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->isStorageMounted()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 459
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v1, v1, v0

    iget-wide v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Mask"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->setMask(Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v1, v1, v0

    iget-wide v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "NullMask"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/qxdm2sd/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->setNullMask(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getMask()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->setMask(Ljava/lang/String;)V

    .line 463
    :cond_4
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getNullMask()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->setNullMask(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 467
    :cond_5
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->setMask(Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1, v6}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->setNullMask(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 472
    .end local v0           #i:I
    :cond_6
    const/4 v1, 0x1

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x0

    .line 974
    iput-object p1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mSelectedView:Landroid/view/View;

    .line 976
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mButtonEnable:Landroid/widget/Button;

    if-ne p1, v6, :cond_6

    .line 978
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/htc/android/qxdm2sd/Device;->getFsAvailableSpaceMB(Ljava/lang/String;)J

    move-result-wide v0

    .line 979
    .local v0, avaiableSizeMB:J
    const-wide/16 v4, 0x0

    .line 983
    .local v4, requireSizeMB:J
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mEditRotateSize:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRotateSizeMB:I

    .line 984
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mEditRotateCount:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRotateCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v6, v6, v3

    if-eqz v6, :cond_1

    .line 994
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 995
    iget v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRotateSizeMB:I

    iget v7, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRotateCount:I

    mul-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 992
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 986
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 988
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "QXDM2SD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 998
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #i:I
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->isStorageMounted()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1000
    const-string v6, "Error"

    const-string v7, "Storage is not selected/mounted"

    invoke-direct {p0, v6, v7}, Lcom/htc/android/qxdm2sd/QXDM2SD;->showMsgDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    .end local v0           #avaiableSizeMB:J
    .end local v3           #i:I
    .end local v4           #requireSizeMB:J
    :cond_2
    :goto_2
    return-void

    .line 1002
    .restart local v0       #avaiableSizeMB:J
    .restart local v3       #i:I
    .restart local v4       #requireSizeMB:J
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_4

    .line 1004
    const-string v6, "Error"

    const-string v7, "Please enable diag with availabe mask/nullmask"

    invoke-direct {p0, v6, v7}, Lcom/htc/android/qxdm2sd/QXDM2SD;->showMsgDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1006
    :cond_4
    cmp-long v6, v4, v0

    if-lez v6, :cond_5

    .line 1008
    const-string v6, "QXDM2SD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Required ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] MB is greater than Avaiable ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] MB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string v6, "Not Enough Space"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The required space: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MB\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "The available space: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MB\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Please re-assign the proper rotated count and file size"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/htc/android/qxdm2sd/QXDM2SD;->showMsgDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1015
    :cond_5
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mCheckAutoStart:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mAutoStart:Z

    .line 1017
    invoke-virtual {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->saveConfig()Z

    .line 1019
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    iget-object v7, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    const/4 v8, 0x6

    const/16 v9, 0x3ee

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 1022
    .end local v0           #avaiableSizeMB:J
    .end local v3           #i:I
    .end local v4           #requireSizeMB:J
    :cond_6
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mButtonDisable:Landroid/widget/Button;

    if-ne p1, v6, :cond_7

    .line 1024
    iput-boolean v10, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mAutoStart:Z

    .line 1026
    invoke-virtual {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->saveConfig()Z

    .line 1028
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    iget-object v7, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    const/4 v8, 0x7

    const/16 v9, 0x3ef

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 1030
    :cond_7
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mCheckAutoStart:Landroid/widget/CheckBox;

    if-ne p1, v6, :cond_8

    .line 1032
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mCheckAutoStart:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mAutoStart:Z

    .line 1034
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    iget-object v7, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    invoke-virtual {v7, v8}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 1038
    :cond_8
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v6, v6, v3

    if-eqz v6, :cond_2

    .line 1040
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v6

    if-eq p1, v6, :cond_9

    .line 1038
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1043
    :cond_9
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-nez v6, :cond_a

    .line 1045
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->cleanProp()V

    .line 1047
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    iget-object v7, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    invoke-virtual {v7, v8}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 1049
    :cond_a
    invoke-direct {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->isStorageMounted()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 1051
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    iget-object v7, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    const/16 v8, 0xc

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Select the mask file for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 1055
    :cond_b
    const-string v6, "Error"

    const-string v7, "Phone/External storage is not mounted!"

    invoke-direct {p0, v6, v7}, Lcom/htc/android/qxdm2sd/QXDM2SD;->showMsgDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1059
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->cleanProp()V

    .line 1061
    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    iget-object v7, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    invoke-virtual {v7, v8}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 867
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 869
    const-string v0, "QXDM2SD"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    if-nez v0, :cond_0

    .line 873
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mWorkerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerThread:Landroid/os/HandlerThread;

    .line 875
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 877
    new-instance v0, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;-><init>(Lcom/htc/android/qxdm2sd/QXDM2SD;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mAtCmdList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mAtCmdList:Ljava/util/List;

    .line 885
    :cond_1
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->isInBootCompleteReceiver()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 887
    const-string v0, "QXDM2SD"

    const-string v1, "device is booting ..."

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f04

    invoke-virtual {p0, v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Device is booting, please wait ...\n\nClick button to close."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f04000b

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->clickOk:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 933
    :goto_0
    return-void

    .line 898
    :cond_2
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/qxdm2sd/Version;->setExpireDate(Ljava/lang/String;)V

    .line 900
    invoke-static {}, Lcom/htc/android/qxdm2sd/Version;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - expired!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->setTitle(Ljava/lang/CharSequence;)V

    .line 903
    const-string v0, "QXDM2SD"

    invoke-virtual {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 907
    :cond_3
    const v0, 0x7f040004

    invoke-virtual {p0, v0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/qxdm2sd/Version;->isHardwareSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - not supported!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->setTitle(Ljava/lang/CharSequence;)V

    .line 910
    const-string v0, "QXDM2SD"

    invoke-virtual {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 914
    :cond_4
    const/4 v0, 0x5

    new-array v10, v0, [Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    new-instance v0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    const-string v2, "qxdm7k"

    const-string v3, "/dev/diag"

    const-string v5, "at@FlushCDLogToAppsAck=0"

    const-string v6, "at@FlushCDLogToAppsAck=1"

    const-string v7, "qxdm_7k_"

    move-object v1, p0

    move-object v9, v8

    invoke-direct/range {v0 .. v9}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;-><init>(Lcom/htc/android/qxdm2sd/QXDM2SD;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v10, v4

    new-instance v0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    const-string v2, "qxdm9k"

    const-string v3, "/dev/diag_mdm"

    const-string v5, "at@FlushCDLogToAppsAck=0"

    const-string v6, "at@FlushCDLogToAppsAck=1"

    const-string v7, "qxdm_9k_"

    move-object v1, p0

    move-object v9, v8

    invoke-direct/range {v0 .. v9}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;-><init>(Lcom/htc/android/qxdm2sd/QXDM2SD;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v10, v12

    const/4 v11, 0x2

    new-instance v0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    const-string v2, "qxdmExt"

    const-string v3, "/dev/extdiag"

    const-string v5, "at@FlushCDLogToAppsAck=0"

    const-string v6, "at@FlushCDLogToAppsAck=1"

    const-string v7, "qxdm_ext_"

    move-object v1, p0

    move-object v9, v8

    invoke-direct/range {v0 .. v9}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;-><init>(Lcom/htc/android/qxdm2sd/QXDM2SD;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/4 v11, 0x3

    new-instance v0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    const-string v2, "tiTrace"

    const-string v3, "ro.muxd.trace_pts_name"

    const-string v5, "AT%TRACE=1"

    const-string v6, "AT%TRACE=0"

    const-string v7, "ti_trace_"

    move-object v1, p0

    move v4, v12

    move-object v9, v8

    invoke-direct/range {v0 .. v9}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;-><init>(Lcom/htc/android/qxdm2sd/QXDM2SD;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/4 v0, 0x4

    aput-object v8, v10, v0

    iput-object v10, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    .line 922
    invoke-static {p0}, Lcom/htc/android/qxdm2sd/Device;->initEnvironment(Landroid/content/Context;)Z

    .line 924
    invoke-direct {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->updateStorageStatus()V

    .line 926
    invoke-virtual {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->loadConfig()Z

    .line 928
    invoke-direct {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->initViews()V

    .line 930
    invoke-virtual {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f040009

    invoke-virtual {p0, v1}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getDaemonVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/qxdm2sd/Version;->composeVersions(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->setTitle(Ljava/lang/CharSequence;)V

    .line 932
    const-string v0, "QXDM2SD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", need lib="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f040002

    invoke-virtual {p0, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", used lib="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/android/qxdm2sd/HtcNative;->getLibVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 967
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 969
    const-string v0, "QXDM2SD"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 1378
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1388
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1381
    :pswitch_0
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    invoke-virtual {v2, v0}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1385
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1378
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 955
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 957
    const-string v0, "QXDM2SD"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 961
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    invoke-virtual {v0, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->removeMessages(I)V

    .line 962
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1358
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1360
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1362
    invoke-static {p1}, Lcom/htc/android/qxdm2sd/Device;->createOptionMenu(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v0

    .line 1364
    .local v0, optionMenu:Landroid/view/Menu;
    const-string v3, "About"

    invoke-interface {v0, v2, v1, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x41

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1367
    const-string v3, "Delete all logs"

    invoke-interface {v0, v2, v5, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x44

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1372
    .end local v0           #optionMenu:Landroid/view/Menu;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 938
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 940
    const-string v0, "QXDM2SD"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-static {}, Lcom/htc/android/qxdm2sd/Device;->isUsbDebuggingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 944
    invoke-static {p0}, Lcom/htc/android/qxdm2sd/Device;->showUsbDebuggingWarning(Landroid/content/Context;)V

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mEditRotateSize:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mWorkerHandler:Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/qxdm2sd/QXDM2SD$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public saveConfig()Z
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 477
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 479
    const-string v1, "/data/data/com.htc.android.qxdm2sd/data/qxdm2sd.conf"

    invoke-static {v1}, Lcom/htc/android/qxdm2sd/HtcNative;->confNew(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    .line 481
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 483
    const-string v1, "QXDM2SD"

    const-string v2, "cannot create new config!"

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/4 v1, 0x0

    .line 520
    :goto_0
    return v1

    .line 487
    :cond_0
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/HtcNative;->confClear(J)V

    .line 490
    :cond_1
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    const-string v3, "AutoStart"

    iget-boolean v4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mAutoStart:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 491
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    const-string v3, "RotateSizeMB"

    iget v4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRotateSizeMB:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 492
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    const-string v3, "RotateCount"

    iget v4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mRotateCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 494
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 496
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    const-string v3, "StoragePath"

    const-string v4, "EXTERNAL_STORAGE"

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 511
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    .line 513
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Mask"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getMask()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 514
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NullMask"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mDiagInfo:[Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getNullMask()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 498
    .end local v0           #i:I
    :cond_2
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mPhoneStorage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 500
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    const-string v3, "StoragePath"

    const-string v4, "PHONE_STORAGE"

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 502
    :cond_3
    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mExternalStorage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 504
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    const-string v3, "StoragePath"

    const-string v4, "EXTERNAL_STORAGE"

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/qxdm2sd/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 508
    :cond_4
    const-string v1, "QXDM2SD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStoragePath = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is undefined, not save to config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 517
    .restart local v0       #i:I
    :cond_5
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/HtcNative;->confSort(J)V

    .line 518
    iget-wide v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD;->mConf:J

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/HtcNative;->confSave(J)Z

    .line 520
    const/4 v1, 0x1

    goto/16 :goto_0
.end method
