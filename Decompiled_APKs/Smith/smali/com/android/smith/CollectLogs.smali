.class public Lcom/android/smith/CollectLogs;
.super Landroid/app/TabActivity;
.source "CollectLogs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/smith/CollectLogs$LogsThread;,
        Lcom/android/smith/CollectLogs$MyFilenameFilter;
    }
.end annotation


# static fields
.field private static final COLOR_NORMAL_BACK:I = -0x1000000

.field private static final COLOR_NORMAL_TEXT:I = -0x1

.field private static final COLOR_SELECTED_BACK:I = -0x3f4000

.field private static final COLOR_SELECTED_TEXT:I = -0x1000000

.field private static final CONF_FILEPATH:Ljava/lang/String; = "/data/data/com.android.smith/data/CollectLogs.conf"

.field private static final EXTERNAL_STORAGE:Ljava/lang/String; = null

.field private static final FUNC_FINDLOGS:I = 0x1

.field private static final FUNC_MOVELOGS:I = 0x2

.field private static final FUNC_UPLOADLOGS:I = 0x3

.field private static final ID_EXTERNAL:I = 0x3

.field private static final ID_INTERNAL:I = 0x1

.field private static final ID_PHONE:I = 0x2

.field private static final INTERNAL_STORAGE:Ljava/lang/String; = "/data/data/com.android.smith/htclog/"

.field private static final KEY_FTP_HOST:Ljava/lang/String; = "FtpHost"

.field private static final KEY_FTP_PASS:Ljava/lang/String; = "FtpPass"

.field private static final KEY_FTP_PATH:Ljava/lang/String; = "FtpPath"

.field private static final KEY_FTP_PORT:Ljava/lang/String; = "FtpPort"

.field private static final KEY_FTP_USER:Ljava/lang/String; = "FtpUser"

.field private static final MAX_LIST_FILE_COUNT:I = 0x64

.field private static final MSG_FINISH_FINDLOGS:I = 0x5

.field private static final MSG_FINISH_MOVELOGS:I = 0x6

.field private static final MSG_FINISH_UPLOADLOGS:I = 0x7

.field private static final MSG_INIT:I = 0x1

.field private static final MSG_INIT_CHECK_END:I = 0x2

.field private static final MSG_LOGS_APPEND:I = 0x4

.field private static final MSG_LOGS_SETTEXT:I = 0x3

.field private static final PHONE_STORAGE:Ljava/lang/String; = null

.field private static final TAB_TAG_EXTERNAL:Ljava/lang/String; = "External"

.field private static final TAB_TAG_FTP:Ljava/lang/String; = "FTP"

.field private static final TAB_TAG_INTERNAL:Ljava/lang/String; = "Internal"

.field private static final TAB_TAG_PHONE:Ljava/lang/String; = "Phone/Tablet"

.field private static final TAB_TAG_UNKNOWN:Ljava/lang/String; = "Unknown"

.field private static final TAG:Ljava/lang/String; = "SM:CollectLogs"

.field private static final VERSION:Ljava/lang/String; = "2.0"

.field private static mExternalFiles:[Ljava/lang/String;

.field private static mInternalFiles:[Ljava/lang/String;

.field private static mPhoneFiles:[Ljava/lang/String;


# instance fields
.field private ftpclient:Lcom/android/smith/FtpClient;

.field private mButtonExternalUpload:Landroid/widget/Button;

.field private mButtonFtpSaveInfo:Landroid/widget/Button;

.field private mButtonInternalMove:Landroid/widget/Button;

.field private mButtonInternalUpload:Landroid/widget/Button;

.field private mButtonListener:Landroid/view/View$OnClickListener;

.field private mButtonPhoneMove:Landroid/widget/Button;

.field private mButtonPhoneUpload:Landroid/widget/Button;

.field private mCheckExternalRemove:Landroid/widget/CheckBox;

.field private mCheckFtpSavePassword:Landroid/widget/CheckBox;

.field private mCheckInternalRemove:Landroid/widget/CheckBox;

.field private mCheckPhoneRemove:Landroid/widget/CheckBox;

.field private mConf:J

.field private mEditFtpHost:Landroid/widget/EditText;

.field private mEditFtpPass:Landroid/widget/EditText;

.field private mEditFtpPath:Landroid/widget/EditText;

.field private mEditFtpPort:Landroid/widget/EditText;

.field private mEditFtpUser:Landroid/widget/EditText;

.field private mExternalLogsMark:I

.field private mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;

.field private mHandler:Landroid/os/Handler;

.field private mInternalLogsMark:I

.field private mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;

.field private final mListDialogListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field private mPhoneLogsMark:I

.field private mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTabExternal:Landroid/widget/TextView;

.field private mTabFtp:Landroid/widget/TextView;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabInternal:Landroid/widget/TextView;

.field private mTabPhone:Landroid/widget/TextView;

.field private mTextExternalLogs:Landroid/widget/TextView;

.field private mTextExternalPrompt:Landroid/widget/TextView;

.field private mTextInternalLogs:Landroid/widget/TextView;

.field private mTextInternalPrompt:Landroid/widget/TextView;

.field private mTextPhoneLogs:Landroid/widget/TextView;

.field private mTextPhonePrompt:Landroid/widget/TextView;

.field private mThreadCheckbox:[Z

.field private mThreadItems:[Ljava/lang/CharSequence;

.field private tabChangedListener:Landroid/widget/TabHost$OnTabChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
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

    sput-object v0, Lcom/android/smith/CollectLogs;->PHONE_STORAGE:Ljava/lang/String;

    .line 76
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

    sput-object v0, Lcom/android/smith/CollectLogs;->EXTERNAL_STORAGE:Ljava/lang/String;

    .line 888
    sput-object v2, Lcom/android/smith/CollectLogs;->mInternalFiles:[Ljava/lang/String;

    .line 889
    sput-object v2, Lcom/android/smith/CollectLogs;->mPhoneFiles:[Ljava/lang/String;

    .line 890
    sput-object v2, Lcom/android/smith/CollectLogs;->mExternalFiles:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/smith/CollectLogs;->mConf:J

    .line 98
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;

    .line 99
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;

    .line 100
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;

    .line 102
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mTabHost:Landroid/widget/TabHost;

    .line 103
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mTabInternal:Landroid/widget/TextView;

    .line 104
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mTabPhone:Landroid/widget/TextView;

    .line 105
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mTabExternal:Landroid/widget/TextView;

    .line 106
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mTabFtp:Landroid/widget/TextView;

    .line 107
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mButtonInternalMove:Landroid/widget/Button;

    .line 108
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mButtonPhoneMove:Landroid/widget/Button;

    .line 109
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mButtonInternalUpload:Landroid/widget/Button;

    .line 110
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mButtonPhoneUpload:Landroid/widget/Button;

    .line 111
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mButtonExternalUpload:Landroid/widget/Button;

    .line 112
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mButtonFtpSaveInfo:Landroid/widget/Button;

    .line 113
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mTextInternalPrompt:Landroid/widget/TextView;

    .line 114
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mTextPhonePrompt:Landroid/widget/TextView;

    .line 115
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mTextExternalPrompt:Landroid/widget/TextView;

    .line 116
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mTextInternalLogs:Landroid/widget/TextView;

    .line 117
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mTextPhoneLogs:Landroid/widget/TextView;

    .line 118
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mTextExternalLogs:Landroid/widget/TextView;

    .line 119
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mCheckInternalRemove:Landroid/widget/CheckBox;

    .line 120
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mCheckPhoneRemove:Landroid/widget/CheckBox;

    .line 121
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mCheckExternalRemove:Landroid/widget/CheckBox;

    .line 122
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mEditFtpHost:Landroid/widget/EditText;

    .line 123
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mEditFtpPort:Landroid/widget/EditText;

    .line 124
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mEditFtpUser:Landroid/widget/EditText;

    .line 125
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mEditFtpPass:Landroid/widget/EditText;

    .line 126
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mEditFtpPath:Landroid/widget/EditText;

    .line 127
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mCheckFtpSavePassword:Landroid/widget/CheckBox;

    .line 129
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 450
    new-instance v0, Lcom/android/smith/CollectLogs$1;

    invoke-direct {v0, p0}, Lcom/android/smith/CollectLogs$1;-><init>(Lcom/android/smith/CollectLogs;)V

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->tabChangedListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 503
    new-instance v0, Lcom/android/smith/CollectLogs$2;

    invoke-direct {v0, p0}, Lcom/android/smith/CollectLogs$2;-><init>(Lcom/android/smith/CollectLogs;)V

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 714
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mThreadItems:[Ljava/lang/CharSequence;

    .line 715
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mThreadCheckbox:[Z

    .line 758
    new-instance v0, Lcom/android/smith/CollectLogs$4;

    invoke-direct {v0, p0}, Lcom/android/smith/CollectLogs$4;-><init>(Lcom/android/smith/CollectLogs;)V

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mListDialogListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 902
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->ftpclient:Lcom/android/smith/FtpClient;

    .line 1264
    iput v3, p0, Lcom/android/smith/CollectLogs;->mInternalLogsMark:I

    .line 1265
    iput v3, p0, Lcom/android/smith/CollectLogs;->mPhoneLogsMark:I

    .line 1266
    iput v3, p0, Lcom/android/smith/CollectLogs;->mExternalLogsMark:I

    .line 1294
    new-instance v0, Lcom/android/smith/CollectLogs$5;

    invoke-direct {v0, p0}, Lcom/android/smith/CollectLogs$5;-><init>(Lcom/android/smith/CollectLogs;)V

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private ListLogDialog()I
    .locals 9

    .prologue
    const v5, 0x7f04005d

    const/4 v8, 0x7

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 779
    iget-object v4, p0, Lcom/android/smith/CollectLogs;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    .line 781
    .local v2, tab:Ljava/lang/String;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/smith/CollectLogs;->mThreadItems:[Ljava/lang/CharSequence;

    .line 782
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/smith/CollectLogs;->mThreadCheckbox:[Z

    .line 784
    const-string v4, "Internal"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 786
    sget-object v0, Lcom/android/smith/CollectLogs;->mInternalFiles:[Ljava/lang/String;

    .line 788
    .local v0, files:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-nez v4, :cond_5

    .line 790
    :cond_0
    iget-object v4, p0, Lcom/android/smith/CollectLogs;->mButtonInternalUpload:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v4, p0, Lcom/android/smith/CollectLogs;->mButtonInternalUpload:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 793
    new-instance v4, Lcom/android/smith/CollectLogs$LogsThread;

    invoke-direct {v4, p0, v6, v7, v8}, Lcom/android/smith/CollectLogs$LogsThread;-><init>(Lcom/android/smith/CollectLogs;III)V

    iput-object v4, p0, Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;

    .line 794
    iget-object v4, p0, Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;

    invoke-virtual {v4}, Lcom/android/smith/CollectLogs$LogsThread;->start()V

    .line 843
    :goto_0
    return v3

    .line 799
    .end local v0           #files:[Ljava/lang/String;
    :cond_1
    const-string v4, "Phone/Tablet"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 801
    sget-object v0, Lcom/android/smith/CollectLogs;->mPhoneFiles:[Ljava/lang/String;

    .line 803
    .restart local v0       #files:[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v4, v0

    if-nez v4, :cond_5

    .line 805
    :cond_2
    iget-object v4, p0, Lcom/android/smith/CollectLogs;->mButtonPhoneUpload:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 806
    iget-object v4, p0, Lcom/android/smith/CollectLogs;->mButtonPhoneUpload:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 808
    new-instance v4, Lcom/android/smith/CollectLogs$LogsThread;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5, v7, v8}, Lcom/android/smith/CollectLogs$LogsThread;-><init>(Lcom/android/smith/CollectLogs;III)V

    iput-object v4, p0, Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;

    .line 809
    iget-object v4, p0, Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;

    invoke-virtual {v4}, Lcom/android/smith/CollectLogs$LogsThread;->start()V

    goto :goto_0

    .line 816
    .end local v0           #files:[Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/android/smith/CollectLogs;->mExternalFiles:[Ljava/lang/String;

    .line 818
    .restart local v0       #files:[Ljava/lang/String;
    if-eqz v0, :cond_4

    array-length v4, v0

    if-nez v4, :cond_5

    .line 820
    :cond_4
    iget-object v4, p0, Lcom/android/smith/CollectLogs;->mButtonExternalUpload:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v4, p0, Lcom/android/smith/CollectLogs;->mButtonExternalUpload:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 823
    new-instance v4, Lcom/android/smith/CollectLogs$LogsThread;

    invoke-direct {v4, p0, v7, v7, v8}, Lcom/android/smith/CollectLogs$LogsThread;-><init>(Lcom/android/smith/CollectLogs;III)V

    iput-object v4, p0, Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;

    .line 824
    iget-object v4, p0, Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;

    invoke-virtual {v4}, Lcom/android/smith/CollectLogs$LogsThread;->start()V

    goto :goto_0

    .line 830
    :cond_5
    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/smith/CollectLogs;->mThreadItems:[Ljava/lang/CharSequence;

    .line 831
    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/android/smith/CollectLogs;->mThreadCheckbox:[Z

    .line 832
    iget-object v4, p0, Lcom/android/smith/CollectLogs;->mThreadItems:[Ljava/lang/CharSequence;

    new-instance v5, Ljava/lang/String;

    const-string v6, "Toggle All"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v3

    .line 833
    iget-object v4, p0, Lcom/android/smith/CollectLogs;->mThreadCheckbox:[Z

    aput-boolean v3, v4, v3

    .line 835
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_6

    .line 837
    iget-object v4, p0, Lcom/android/smith/CollectLogs;->mThreadItems:[Ljava/lang/CharSequence;

    add-int/lit8 v5, v1, 0x1

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 838
    iget-object v4, p0, Lcom/android/smith/CollectLogs;->mThreadCheckbox:[Z

    add-int/lit8 v5, v1, 0x1

    aput-boolean v3, v4, v5

    .line 835
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 841
    :cond_6
    invoke-direct {p0}, Lcom/android/smith/CollectLogs;->createListDialog()V

    .line 843
    array-length v3, v0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/smith/CollectLogs;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabInternal:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTextExternalPrompt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonInternalUpload:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/smith/CollectLogs;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mCheckInternalRemove:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonPhoneMove:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTextPhonePrompt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonPhoneUpload:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/smith/CollectLogs;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mCheckPhoneRemove:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpHost:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpPort:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabPhone:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpUser:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpPass:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/smith/CollectLogs;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpPath:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/smith/CollectLogs;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/smith/CollectLogs;->requestToSetupFtp()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/smith/CollectLogs;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/smith/CollectLogs;->ListLogDialog()I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonFtpSaveInfo:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/smith/CollectLogs;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/smith/CollectLogs;->saveSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/smith/CollectLogs;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mThreadCheckbox:[Z

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/smith/CollectLogs;[Z)[Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/smith/CollectLogs;->mThreadCheckbox:[Z

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/smith/CollectLogs;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/smith/CollectLogs;->createListDialog()V

    return-void
.end method

.method static synthetic access$2900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/smith/CollectLogs;->PHONE_STORAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabExternal:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/smith/CollectLogs;->EXTERNAL_STORAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/smith/CollectLogs;)Lcom/android/smith/FtpClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->ftpclient:Lcom/android/smith/FtpClient;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/smith/CollectLogs;Lcom/android/smith/FtpClient;)Lcom/android/smith/FtpClient;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/smith/CollectLogs;->ftpclient:Lcom/android/smith/FtpClient;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/smith/CollectLogs;->mInternalFiles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    sput-object p0, Lcom/android/smith/CollectLogs;->mInternalFiles:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/smith/CollectLogs;->mPhoneFiles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3402([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    sput-object p0, Lcom/android/smith/CollectLogs;->mPhoneFiles:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/smith/CollectLogs;->mExternalFiles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3502([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    sput-object p0, Lcom/android/smith/CollectLogs;->mExternalFiles:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/smith/CollectLogs;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mThreadItems:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/smith/CollectLogs;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/smith/CollectLogs;->mThreadItems:[Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/smith/CollectLogs;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mCheckExternalRemove:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/smith/CollectLogs;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/smith/CollectLogs;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/smith/CollectLogs;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTextInternalLogs:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabFtp:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/smith/CollectLogs;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/smith/CollectLogs;->mInternalLogsMark:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/smith/CollectLogs;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/smith/CollectLogs;->mInternalLogsMark:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTextPhoneLogs:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/smith/CollectLogs;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/smith/CollectLogs;->mPhoneLogsMark:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/smith/CollectLogs;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/smith/CollectLogs;->mPhoneLogsMark:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTextExternalLogs:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/smith/CollectLogs;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/smith/CollectLogs;->mExternalLogsMark:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/smith/CollectLogs;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/smith/CollectLogs;->mExternalLogsMark:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/smith/CollectLogs;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/smith/CollectLogs;->isLoggingSystemLoggers()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/smith/CollectLogs;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/smith/CollectLogs;->isLoggingBatteryLogger()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/smith/CollectLogs;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/smith/CollectLogs;->canAccessPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonInternalMove:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTextInternalPrompt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonExternalUpload:Landroid/widget/Button;

    return-object v0
.end method

.method private canAccessPath(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    .line 1270
    const/4 v2, 0x0

    .line 1273
    .local v2, ret:Z
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1275
    .local v0, d:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1276
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1278
    :cond_0
    invoke-static {p1}, Lcom/android/smith/Device;->canWrite(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1280
    const/4 v2, 0x1

    .line 1291
    .end local v0           #d:Ljava/io/File;
    :goto_0
    return v2

    .line 1284
    .restart local v0       #d:Ljava/io/File;
    :cond_1
    const-string v3, "SM:CollectLogs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storage ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] is not writable!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1287
    .end local v0           #d:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1289
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SM:CollectLogs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storage ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createListDialog()V
    .locals 4

    .prologue
    .line 719
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Select Files"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/smith/CollectLogs;->mThreadItems:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/smith/CollectLogs;->mThreadCheckbox:[Z

    iget-object v3, p0, Lcom/android/smith/CollectLogs;->mListDialogListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040036

    new-instance v2, Lcom/android/smith/CollectLogs$3;

    invoke-direct {v2, p0}, Lcom/android/smith/CollectLogs$3;-><init>(Lcom/android/smith/CollectLogs;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 756
    return-void
.end method

.method private isLoggingBatteryLogger()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, mSocket:Lcom/android/smith/ClientLocalSocket;
    const-string v4, "logbattery"

    invoke-static {v4}, Lcom/android/smith/ClientLocalSocket;->getServicePort(Ljava/lang/String;)I

    move-result v1

    .line 156
    .local v1, port:I
    if-lez v1, :cond_0

    .line 157
    new-instance v0, Lcom/android/smith/ClientLocalSocket;

    .end local v0           #mSocket:Lcom/android/smith/ClientLocalSocket;
    invoke-direct {v0, v1}, Lcom/android/smith/ClientLocalSocket;-><init>(I)V

    .line 159
    .restart local v0       #mSocket:Lcom/android/smith/ClientLocalSocket;
    :cond_0
    if-nez v0, :cond_1

    .line 166
    :goto_0
    return v3

    .line 162
    :cond_1
    const-string v4, ":islogging:"

    invoke-virtual {v0, v4}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 164
    .local v2, ret:Z
    :goto_1
    invoke-virtual {v0}, Lcom/android/smith/ClientLocalSocket;->close()V

    .line 165
    const/4 v0, 0x0

    move v3, v2

    .line 166
    goto :goto_0

    .end local v2           #ret:Z
    :cond_2
    move v2, v3

    .line 162
    goto :goto_1
.end method

.method private isLoggingSystemLoggers()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, mSocket:Lcom/android/smith/ClientLocalSocket;
    const-string v4, "logctl"

    invoke-static {v4}, Lcom/android/smith/ClientLocalSocket;->getServicePort(Ljava/lang/String;)I

    move-result v1

    .line 137
    .local v1, port:I
    if-lez v1, :cond_0

    .line 138
    new-instance v0, Lcom/android/smith/ClientLocalSocket;

    .end local v0           #mSocket:Lcom/android/smith/ClientLocalSocket;
    invoke-direct {v0, v1}, Lcom/android/smith/ClientLocalSocket;-><init>(I)V

    .line 140
    .restart local v0       #mSocket:Lcom/android/smith/ClientLocalSocket;
    :cond_0
    if-nez v0, :cond_1

    .line 147
    :goto_0
    return v3

    .line 143
    :cond_1
    const-string v4, ":islogging:"

    invoke-virtual {v0, v4}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommandReturnInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 145
    .local v2, ret:Z
    :goto_1
    invoke-virtual {v0}, Lcom/android/smith/ClientLocalSocket;->close()V

    .line 146
    const/4 v0, 0x0

    move v3, v2

    .line 147
    goto :goto_0

    .end local v2           #ret:Z
    :cond_2
    move v2, v3

    .line 143
    goto :goto_1
.end method

.method private loadSettings()Z
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 377
    iget-wide v7, p0, Lcom/android/smith/CollectLogs;->mConf:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 379
    iget-wide v7, p0, Lcom/android/smith/CollectLogs;->mConf:J

    invoke-static {v7, v8}, Lcom/android/smith/HtcNative;->confClose(J)V

    .line 382
    :cond_0
    const-string v7, "SM:CollectLogs"

    const-string v8, "loading settings from [/data/data/com.android.smith/data/CollectLogs.conf] ..."

    invoke-static {v7, v8}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v7, "/data/data/com.android.smith/data/CollectLogs.conf"

    invoke-static {v7}, Lcom/android/smith/HtcNative;->confLoad(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/smith/CollectLogs;->mConf:J

    .line 386
    iget-wide v7, p0, Lcom/android/smith/CollectLogs;->mConf:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 404
    :goto_0
    return v5

    .line 389
    :cond_1
    iget-wide v7, p0, Lcom/android/smith/CollectLogs;->mConf:J

    invoke-static {v7, v8}, Lcom/android/smith/HtcNative;->confDebugDump(J)V

    .line 391
    iget-wide v7, p0, Lcom/android/smith/CollectLogs;->mConf:J

    const-string v9, "FtpHost"

    iget-object v10, p0, Lcom/android/smith/CollectLogs;->mEditFtpHost:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, host:Ljava/lang/String;
    iget-wide v7, p0, Lcom/android/smith/CollectLogs;->mConf:J

    const-string v9, "FtpPort"

    iget-object v10, p0, Lcom/android/smith/CollectLogs;->mEditFtpPort:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, port:Ljava/lang/String;
    iget-wide v7, p0, Lcom/android/smith/CollectLogs;->mConf:J

    const-string v9, "FtpUser"

    iget-object v10, p0, Lcom/android/smith/CollectLogs;->mEditFtpUser:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, user:Ljava/lang/String;
    iget-wide v7, p0, Lcom/android/smith/CollectLogs;->mConf:J

    const-string v9, "FtpPass"

    iget-object v10, p0, Lcom/android/smith/CollectLogs;->mEditFtpPass:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/smith/CollectLogs;->EnCrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, pass:Ljava/lang/String;
    iget-wide v7, p0, Lcom/android/smith/CollectLogs;->mConf:J

    const-string v9, "FtpPath"

    iget-object v10, p0, Lcom/android/smith/CollectLogs;->mEditFtpPath:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/android/smith/HtcNative;->confGet(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, path:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/smith/CollectLogs;->mEditFtpHost:Landroid/widget/EditText;

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v7, p0, Lcom/android/smith/CollectLogs;->mEditFtpPort:Landroid/widget/EditText;

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v7, p0, Lcom/android/smith/CollectLogs;->mEditFtpUser:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v7, p0, Lcom/android/smith/CollectLogs;->mEditFtpPass:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/android/smith/CollectLogs;->DeCrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v7, p0, Lcom/android/smith/CollectLogs;->mEditFtpPath:Landroid/widget/EditText;

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v7, p0, Lcom/android/smith/CollectLogs;->mCheckFtpSavePassword:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/android/smith/CollectLogs;->mEditFtpPass:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {v7, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    move v5, v6

    .line 404
    goto/16 :goto_0
.end method

.method private requestToSetupFtp()V
    .locals 3

    .prologue
    .line 441
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f04003f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Please setup FTP information correctly before uploading logs!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040036

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 447
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 448
    return-void
.end method

.method private saveSettings()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 409
    iget-wide v0, p0, Lcom/android/smith/CollectLogs;->mConf:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 411
    const-string v0, "/data/data/com.android.smith/data/CollectLogs.conf"

    invoke-static {v0}, Lcom/android/smith/HtcNative;->confNew(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/smith/CollectLogs;->mConf:J

    .line 413
    iget-wide v0, p0, Lcom/android/smith/CollectLogs;->mConf:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 415
    const-string v0, "SM:CollectLogs"

    const-string v1, "cannot create new config!"

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const/4 v0, 0x0

    .line 436
    :goto_0
    return v0

    .line 420
    :cond_0
    iget-wide v0, p0, Lcom/android/smith/CollectLogs;->mConf:J

    const-string v2, "FtpHost"

    iget-object v3, p0, Lcom/android/smith/CollectLogs;->mEditFtpHost:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 421
    iget-wide v0, p0, Lcom/android/smith/CollectLogs;->mConf:J

    const-string v2, "FtpPort"

    iget-object v3, p0, Lcom/android/smith/CollectLogs;->mEditFtpPort:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 422
    iget-wide v0, p0, Lcom/android/smith/CollectLogs;->mConf:J

    const-string v2, "FtpUser"

    iget-object v3, p0, Lcom/android/smith/CollectLogs;->mEditFtpUser:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 423
    iget-wide v0, p0, Lcom/android/smith/CollectLogs;->mConf:J

    const-string v2, "FtpPath"

    iget-object v3, p0, Lcom/android/smith/CollectLogs;->mEditFtpPath:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 425
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mCheckFtpSavePassword:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    iget-wide v0, p0, Lcom/android/smith/CollectLogs;->mConf:J

    const-string v2, "FtpPass"

    iget-object v3, p0, Lcom/android/smith/CollectLogs;->mEditFtpPass:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/smith/CollectLogs;->EnCrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    .line 434
    :goto_1
    iget-wide v0, p0, Lcom/android/smith/CollectLogs;->mConf:J

    invoke-static {v0, v1}, Lcom/android/smith/HtcNative;->confSort(J)V

    .line 435
    iget-wide v0, p0, Lcom/android/smith/CollectLogs;->mConf:J

    invoke-static {v0, v1}, Lcom/android/smith/HtcNative;->confSave(J)Z

    .line 436
    const/4 v0, 0x1

    goto :goto_0

    .line 431
    :cond_1
    iget-wide v0, p0, Lcom/android/smith/CollectLogs;->mConf:J

    const-string v2, "FtpPass"

    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/android/smith/CollectLogs;->EnCrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/smith/HtcNative;->confSet(JLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method


# virtual methods
.method public DeCrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "C"

    .prologue
    .line 850
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 852
    .local v0, charC:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 853
    aget-char v2, v0, v1

    add-int/2addr v2, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 852
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 856
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public EnCrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "M"

    .prologue
    .line 863
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 865
    .local v0, charM:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 866
    aget-char v2, v0, v1

    sub-int/2addr v2, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 865
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 869
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    const/16 v2, 0x11

    const/4 v5, 0x0

    const/16 v4, 0x10

    const/4 v3, 0x2

    .line 248
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 250
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->setContentView(I)V

    .line 252
    invoke-virtual {p0}, Lcom/android/smith/CollectLogs;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mTabHost:Landroid/widget/TabHost;

    .line 254
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mTabInternal:Landroid/widget/TextView;

    .line 255
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabInternal:Landroid/widget/TextView;

    const-string v1, "Internal"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabInternal:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 257
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabInternal:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 259
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mTabPhone:Landroid/widget/TextView;

    .line 260
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabPhone:Landroid/widget/TextView;

    const-string v1, "Phone/Tablet"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabPhone:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 262
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabPhone:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 264
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mTabExternal:Landroid/widget/TextView;

    .line 265
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabExternal:Landroid/widget/TextView;

    const-string v1, "External"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabExternal:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 267
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabExternal:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 269
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mTabFtp:Landroid/widget/TextView;

    .line 270
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabFtp:Landroid/widget/TextView;

    const-string v1, "FTP"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabFtp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 272
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabFtp:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 274
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/smith/CollectLogs;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "Internal"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/CollectLogs;->mTabInternal:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f050012

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 275
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/smith/CollectLogs;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "Phone/Tablet"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/CollectLogs;->mTabPhone:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f050018

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 276
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/smith/CollectLogs;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "External"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/CollectLogs;->mTabExternal:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f05001e

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 277
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/smith/CollectLogs;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "FTP"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/CollectLogs;->mTabFtp:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f050023

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 279
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabInternal:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabInternal:Landroid/widget/TextView;

    const v1, -0x3f4000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 282
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 283
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/smith/CollectLogs;->tabChangedListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 285
    const v0, 0x7f050013

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonInternalMove:Landroid/widget/Button;

    .line 286
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonInternalMove:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/smith/CollectLogs;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonInternalMove:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 289
    const v0, 0x7f050019

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonPhoneMove:Landroid/widget/Button;

    .line 290
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonPhoneMove:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/smith/CollectLogs;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonPhoneMove:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 293
    const v0, 0x7f050014

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonInternalUpload:Landroid/widget/Button;

    .line 294
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonInternalUpload:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/smith/CollectLogs;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonInternalUpload:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 297
    const v0, 0x7f05001a

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonPhoneUpload:Landroid/widget/Button;

    .line 298
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonPhoneUpload:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/smith/CollectLogs;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonPhoneUpload:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 301
    const v0, 0x7f05001f

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonExternalUpload:Landroid/widget/Button;

    .line 302
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonExternalUpload:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/smith/CollectLogs;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonExternalUpload:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 305
    const v0, 0x7f05002a

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonFtpSaveInfo:Landroid/widget/Button;

    .line 306
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mButtonFtpSaveInfo:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/smith/CollectLogs;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    const v0, 0x7f050015

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mCheckInternalRemove:Landroid/widget/CheckBox;

    .line 309
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mCheckInternalRemove:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 311
    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mCheckPhoneRemove:Landroid/widget/CheckBox;

    .line 312
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mCheckPhoneRemove:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 314
    const v0, 0x7f050020

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mCheckExternalRemove:Landroid/widget/CheckBox;

    .line 315
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mCheckExternalRemove:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 317
    const v0, 0x7f050016

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mTextInternalPrompt:Landroid/widget/TextView;

    .line 318
    const v0, 0x7f05001c

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mTextPhonePrompt:Landroid/widget/TextView;

    .line 319
    const v0, 0x7f050021

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mTextExternalPrompt:Landroid/widget/TextView;

    .line 321
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mTextInternalLogs:Landroid/widget/TextView;

    .line 322
    const v0, 0x7f05001d

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mTextPhoneLogs:Landroid/widget/TextView;

    .line 323
    const v0, 0x7f050022

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mTextExternalLogs:Landroid/widget/TextView;

    .line 325
    const v0, 0x7f050024

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpHost:Landroid/widget/EditText;

    .line 326
    const v0, 0x7f050025

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpPort:Landroid/widget/EditText;

    .line 327
    const v0, 0x7f050026

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpUser:Landroid/widget/EditText;

    .line 328
    const v0, 0x7f050027

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpPass:Landroid/widget/EditText;

    .line 329
    const v0, 0x7f050028

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpPath:Landroid/widget/EditText;

    .line 331
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpHost:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 332
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpPort:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 333
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpUser:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 334
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpPass:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 335
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpPath:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 337
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpHost:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 338
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpPort:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 340
    const v0, 0x7f050029

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mCheckFtpSavePassword:Landroid/widget/CheckBox;

    .line 342
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpHost:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpPort:Landroid/widget/EditText;

    const-string v1, "21"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpUser:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpPass:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mEditFtpPath:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/htclog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ro.serialno"

    const-string v3, "UnknownSN"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 348
    invoke-static {p0}, Lcom/android/smith/Device;->keepScreenOn(Landroid/app/Activity;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/smith/CollectLogs;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "2.0"

    invoke-static {v0, v1}, Lcom/android/smith/Version;->composeVersions(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/smith/CollectLogs;->setTitle(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTextInternalPrompt:Landroid/widget/TextView;

    const v1, 0x7f04006a

    invoke-virtual {p0, v1}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTextPhonePrompt:Landroid/widget/TextView;

    const v1, 0x7f04006a

    invoke-virtual {p0, v1}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTextExternalPrompt:Landroid/widget/TextView;

    const v1, 0x7f04006a

    invoke-virtual {p0, v1}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTextInternalLogs:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTextPhoneLogs:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mTextExternalLogs:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 366
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 368
    invoke-direct {p0}, Lcom/android/smith/CollectLogs;->loadSettings()Z

    .line 370
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 372
    const/4 v0, 0x0

    const-string v1, "Searching, please wait ..."

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/smith/CollectLogs;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 373
    return-void
.end method

.method public onStop()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 172
    invoke-super {p0}, Landroid/app/TabActivity;->onStop()V

    .line 174
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 175
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 185
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->tryStop()V

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 198
    :goto_0
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->tryStop()V

    .line 206
    :try_start_1
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    :goto_1
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->tryStop()V

    .line 220
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->ftpclient:Lcom/android/smith/FtpClient;

    if-nez v0, :cond_3

    .line 224
    :try_start_2
    iget-object v0, p0, Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;

    invoke-virtual {v0}, Lcom/android/smith/CollectLogs$LogsThread;->join()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 230
    :cond_3
    :goto_2
    iput-object v2, p0, Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;

    .line 233
    :cond_4
    sput-object v2, Lcom/android/smith/CollectLogs;->mInternalFiles:[Ljava/lang/String;

    .line 234
    sput-object v2, Lcom/android/smith/CollectLogs;->mPhoneFiles:[Ljava/lang/String;

    .line 235
    sput-object v2, Lcom/android/smith/CollectLogs;->mExternalFiles:[Ljava/lang/String;

    .line 237
    iget-wide v0, p0, Lcom/android/smith/CollectLogs;->mConf:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_5

    .line 239
    iget-wide v0, p0, Lcom/android/smith/CollectLogs;->mConf:J

    invoke-static {v0, v1}, Lcom/android/smith/HtcNative;->confClose(J)V

    .line 241
    iput-wide v3, p0, Lcom/android/smith/CollectLogs;->mConf:J

    .line 243
    :cond_5
    return-void

    .line 226
    :catch_0
    move-exception v0

    goto :goto_2

    .line 208
    :catch_1
    move-exception v0

    goto :goto_1

    .line 195
    :catch_2
    move-exception v0

    goto :goto_0
.end method
