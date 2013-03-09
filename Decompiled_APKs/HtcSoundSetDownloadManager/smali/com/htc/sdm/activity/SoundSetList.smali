.class public Lcom/htc/sdm/activity/SoundSetList;
.super Landroid/app/Activity;
.source "SoundSetList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdm/activity/SoundSetList$ApplySoundSetTask;,
        Lcom/htc/sdm/activity/SoundSetList$OpenFileDescriptorForMediaPlayer;,
        Lcom/htc/sdm/activity/SoundSetList$CheckRingtoneConsistent;,
        Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;,
        Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;,
        Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;,
        Lcom/htc/sdm/activity/SoundSetList$ViewHolder;,
        Lcom/htc/sdm/activity/SoundSetList$ContentObserverStatus;,
        Lcom/htc/sdm/activity/SoundSetList$AudioFocusChangeListener;
    }
.end annotation


# static fields
.field private static ACTUAL_ITEM_START_POS:I = 0x0

.field private static ACTUAL_ITEM_START_POS_NOTIFICATION:I = 0x0

.field protected static final DEL_MODE:I = 0x3

.field private static final DIALOG_PLEASE_WAIT:I = 0x3e7

.field private static final DRM_PLAYBACK_PATH:Ljava/lang/String; = "drm_playback_path"

.field protected static final LIST_MODE:I = 0x1

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SDM"

.field private static final MENU_ADD:I = 0x1

.field private static final MENU_DELETE:I = 0x2

.field private static final MODE_DEL:I = 0x2

.field private static final MODE_LST:I = 0x1

.field private static final MSG_APPLY_COMPLETED:I = 0xc8

.field private static final MSG_OPEN_FD_COMPLETED:I = 0x65

.field private static final MSG_OPEN_FD_FAIL:I = 0x66

.field private static final MSG_QUERY_LIST_COMPLETED:I = 0x64

.field protected static final PICKER_MODE:I = 0x2

.field private static final PREFIX:Ljava/lang/String; = "[SoundSetList] "

.field private static SDM_LIST_ITEM_TYPE_DATA:I = 0x0

.field private static SDM_LIST_ITEM_TYPE_GETMORE:I = 0x0

.field private static SDM_LIST_ITEM_TYPE_NEW:I = 0x0

.field private static final SOUND_FD_URI:Ljava/lang/String; = "sound_fd_uri"

.field private static final SOUND_FILE_DESCRIPTOR:Ljava/lang/String; = "sound_file_descriptor"

.field private static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field private static final m_nLSWDeleteCaller:I = 0x2

.field private static final m_nSDMDeleteCaller:I = 0x1


# instance fields
.field private headerLableAdd:Lcom/htc/widget/HeaderBarImage;

.field private headerLableMore:Lcom/htc/widget/HeaderBarImage;

.field private headerText:Lcom/htc/widget/HeaderBarText;

.field private headerbar:Lcom/htc/widget/HeaderBarMiddle;

.field private headerbar_short:Lcom/htc/widget/HeaderBarShort;

.field private mAudioFocusListener:Lcom/htc/sdm/activity/SoundSetList$AudioFocusChangeListener;

.field private mAudioMgr:Landroid/media/AudioManager;

.field private mDialog:Landroid/app/Dialog;

.field private mIsDirty:Z

.field private mIsStartActivity:Z

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sdm/SoundSetParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mStrCurSelGUID:Ljava/lang/String;

.field private mStrPreSelGUID:Ljava/lang/String;

.field private m_ApplyBtn:Landroid/widget/Button;

.field private m_CheckRingtoneConsistent:Ljava/lang/Thread;

.field private m_CurrentPlayableThreadID:J

.field private m_QuerySoundListThread:Ljava/lang/Thread;

.field private m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

.field private m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

.field private m_bSaveOrNot:Z

.field private m_bStartAsDeleteMode:Z

.field private m_customTitle:Ljava/lang/String;

.field private m_defStrUri:Ljava/lang/String;

.field private m_nActivityMode:I

.field private m_nActualItemStartPos:I

.field private m_nCurrentListType:I

.field private m_nCurrentOpMode:I

.field private m_nDeleteModeCaller:I

.field private m_observer:Lcom/htc/sdm/activity/SoundSetList$ContentObserverStatus;

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    const/4 v0, 0x2

    sput v0, Lcom/htc/sdm/activity/SoundSetList;->SDM_LIST_ITEM_TYPE_NEW:I

    .line 86
    sput v1, Lcom/htc/sdm/activity/SoundSetList;->SDM_LIST_ITEM_TYPE_GETMORE:I

    .line 87
    sput v2, Lcom/htc/sdm/activity/SoundSetList;->SDM_LIST_ITEM_TYPE_DATA:I

    .line 89
    sput v1, Lcom/htc/sdm/activity/SoundSetList;->ACTUAL_ITEM_START_POS:I

    .line 90
    sput v2, Lcom/htc/sdm/activity/SoundSetList;->ACTUAL_ITEM_START_POS_NOTIFICATION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    iput v1, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    .line 96
    iput-boolean v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_bStartAsDeleteMode:Z

    .line 97
    iput v1, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nDeleteModeCaller:I

    .line 104
    iput v1, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nActivityMode:I

    .line 106
    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mDialog:Landroid/app/Dialog;

    .line 107
    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    .line 108
    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    .line 109
    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mListView:Lcom/htc/widget/HtcListView;

    .line 110
    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    .line 111
    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    .line 112
    iput v1, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    .line 114
    iput-boolean v2, p0, Lcom/htc/sdm/activity/SoundSetList;->mIsStartActivity:Z

    .line 115
    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mStrCurSelGUID:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mStrPreSelGUID:Ljava/lang/String;

    .line 118
    iput-boolean v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_bSaveOrNot:Z

    .line 119
    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_defStrUri:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_customTitle:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_observer:Lcom/htc/sdm/activity/SoundSetList$ContentObserverStatus;

    .line 127
    iput v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I

    .line 131
    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 134
    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_QuerySoundListThread:Ljava/lang/Thread;

    .line 140
    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_CheckRingtoneConsistent:Ljava/lang/Thread;

    .line 151
    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->headerText:Lcom/htc/widget/HeaderBarText;

    .line 152
    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableMore:Lcom/htc/widget/HeaderBarImage;

    .line 153
    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableAdd:Lcom/htc/widget/HeaderBarImage;

    .line 154
    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->headerbar:Lcom/htc/widget/HeaderBarMiddle;

    .line 155
    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->headerbar_short:Lcom/htc/widget/HeaderBarShort;

    .line 156
    iput-boolean v1, p0, Lcom/htc/sdm/activity/SoundSetList;->mIsDirty:Z

    .line 157
    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 2339
    new-instance v0, Lcom/htc/sdm/activity/SoundSetList$9;

    invoke-direct {v0, p0}, Lcom/htc/sdm/activity/SoundSetList$9;-><init>(Lcom/htc/sdm/activity/SoundSetList;)V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->uiHandler:Landroid/os/Handler;

    .line 2802
    return-void
.end method

.method private UpdateList()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_QuerySoundListThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;

    invoke-direct {v1, p0}, Lcom/htc/sdm/activity/SoundSetList$QuerySoundListFromDB;-><init>(Lcom/htc/sdm/activity/SoundSetList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_QuerySoundListThread:Ljava/lang/Thread;

    .line 339
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_QuerySoundListThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 342
    :cond_0
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mAudioFocusListener:Lcom/htc/sdm/activity/SoundSetList$AudioFocusChangeListener;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList;->mAudioFocusListener:Lcom/htc/sdm/activity/SoundSetList$AudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 268
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mAudioFocusListener:Lcom/htc/sdm/activity/SoundSetList$AudioFocusChangeListener;

    .line 277
    :cond_1
    return-void
.end method

.method static synthetic access$1200(Lcom/htc/sdm/activity/SoundSetList;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/sdm/activity/SoundSetList;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_CurrentPlayableThreadID:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/htc/sdm/activity/SoundSetList;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/htc/sdm/activity/SoundSetList;->m_CurrentPlayableThreadID:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/htc/sdm/activity/SoundSetList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_bSaveOrNot:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/sdm/activity/SoundSetList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/htc/sdm/activity/SoundSetList;->showDialogSafe(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/sdm/activity/SoundSetList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/sdm/activity/SoundSetList;->UpdateList()V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/sdm/activity/SoundSetList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nActivityMode:I

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/sdm/activity/SoundSetList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mStrCurSelGUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/sdm/activity/SoundSetList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList;->mStrCurSelGUID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/htc/sdm/activity/SoundSetList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList;->mStrPreSelGUID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/htc/sdm/activity/SoundSetList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_defStrUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/htc/sdm/activity/SoundSetList;->SDM_LIST_ITEM_TYPE_DATA:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/sdm/activity/SoundSetList;)Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/sdm/activity/SoundSetList;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/sdm/activity/SoundSetList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/sdm/activity/SoundSetList;)Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/sdm/activity/SoundSetList;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/htc/sdm/activity/SoundSetList;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$302(Lcom/htc/sdm/activity/SoundSetList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/htc/sdm/activity/SoundSetList;->mIsDirty:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/htc/sdm/activity/SoundSetList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/htc/sdm/activity/SoundSetList;->requestAudioFocus()V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/sdm/activity/SoundSetList;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/htc/sdm/activity/SoundSetList;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList;->m_QuerySoundListThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/htc/sdm/activity/SoundSetList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_bStartAsDeleteMode:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/sdm/activity/SoundSetList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nDeleteModeCaller:I

    return v0
.end method

.method static synthetic access$3602(Lcom/htc/sdm/activity/SoundSetList;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList;->m_CheckRingtoneConsistent:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/sdm/activity/SoundSetList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/sdm/activity/SoundSetList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    return v0
.end method

.method private getAddDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 985
    const/4 v2, 0x0

    .line 987
    .local v2, nTitle:I
    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    packed-switch v3, :pswitch_data_0

    .line 992
    const v2, 0x7f09000d

    .line 993
    new-array v1, v6, [Ljava/lang/CharSequence;

    const v3, 0x7f09000f

    invoke-virtual {p0, v3}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const v3, 0x7f090010

    invoke-virtual {p0, v3}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 1030
    .local v1, items:[Ljava/lang/CharSequence;
    :goto_0
    new-instance v0, Lcom/htc/sdm/activity/SoundSetList$7;

    invoke-direct {v0, p0}, Lcom/htc/sdm/activity/SoundSetList$7;-><init>(Lcom/htc/sdm/activity/SoundSetList;)V

    .line 1051
    .local v0, Listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    return-object v3

    .line 1000
    .end local v0           #Listener:Landroid/content/DialogInterface$OnClickListener;
    .end local v1           #items:[Ljava/lang/CharSequence;
    :pswitch_0
    const v2, 0x7f090004

    .line 1001
    new-array v1, v6, [Ljava/lang/CharSequence;

    const v3, 0x7f090006

    invoke-virtual {p0, v3}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const v3, 0x7f090007

    invoke-virtual {p0, v3}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 1005
    .restart local v1       #items:[Ljava/lang/CharSequence;
    goto :goto_0

    .line 1014
    .end local v1           #items:[Ljava/lang/CharSequence;
    :pswitch_1
    const v2, 0x7f090017

    .line 1015
    new-array v1, v6, [Ljava/lang/CharSequence;

    const v3, 0x7f090017

    invoke-virtual {p0, v3}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const v3, 0x7f090019

    invoke-virtual {p0, v3}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 1019
    .restart local v1       #items:[Ljava/lang/CharSequence;
    goto :goto_0

    .line 1022
    .end local v1           #items:[Ljava/lang/CharSequence;
    :pswitch_2
    const v2, 0x7f090026

    .line 1023
    new-array v1, v6, [Ljava/lang/CharSequence;

    const v3, 0x7f090029

    invoke-virtual {p0, v3}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const v3, 0x7f09002a

    invoke-virtual {p0, v3}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .restart local v1       #items:[Ljava/lang/CharSequence;
    goto :goto_0

    .line 987
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getAddDialogTelstra(Ljava/lang/Boolean;)Landroid/app/Dialog;
    .locals 9
    .parameter "bHub"

    .prologue
    const v8, 0x7f090013

    const v7, 0x7f090006

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 896
    const/4 v2, 0x0

    .line 897
    .local v2, nTitle:I
    const v2, 0x7f090004

    .line 898
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 900
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p0, v8}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    const v3, 0x7f090010

    invoke-virtual {p0, v3}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 910
    .local v1, items:[Ljava/lang/CharSequence;
    :goto_0
    new-instance v0, Lcom/htc/sdm/activity/SoundSetList$5;

    invoke-direct {v0, p0}, Lcom/htc/sdm/activity/SoundSetList$5;-><init>(Lcom/htc/sdm/activity/SoundSetList;)V

    .line 936
    .local v0, Listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    return-object v3

    .line 905
    .end local v0           #Listener:Landroid/content/DialogInterface$OnClickListener;
    .end local v1           #items:[Ljava/lang/CharSequence;
    :cond_0
    new-array v1, v6, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v7}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p0, v8}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .restart local v1       #items:[Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private getAddDialogVCAST()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 946
    const/4 v2, 0x0

    .line 947
    .local v2, nTitle:I
    const v2, 0x7f090004

    .line 948
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const v4, 0x7f09000f

    invoke-virtual {p0, v4}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const v4, 0x7f090012

    invoke-virtual {p0, v4}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 952
    .local v1, items:[Ljava/lang/CharSequence;
    new-instance v0, Lcom/htc/sdm/activity/SoundSetList$6;

    invoke-direct {v0, p0}, Lcom/htc/sdm/activity/SoundSetList$6;-><init>(Lcom/htc/sdm/activity/SoundSetList;)V

    .line 975
    .local v0, Listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private requestAudioFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 213
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mAudioFocusListener:Lcom/htc/sdm/activity/SoundSetList$AudioFocusChangeListener;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/htc/sdm/activity/SoundSetList$AudioFocusChangeListener;

    invoke-direct {v0, p0, v4}, Lcom/htc/sdm/activity/SoundSetList$AudioFocusChangeListener;-><init>(Lcom/htc/sdm/activity/SoundSetList;Lcom/htc/sdm/activity/SoundSetList$1;)V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mAudioFocusListener:Lcom/htc/sdm/activity/SoundSetList$AudioFocusChangeListener;

    .line 224
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList;->mAudioFocusListener:Lcom/htc/sdm/activity/SoundSetList$AudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 231
    iput-object v4, p0, Lcom/htc/sdm/activity/SoundSetList;->mAudioFocusListener:Lcom/htc/sdm/activity/SoundSetList$AudioFocusChangeListener;

    .line 247
    :cond_0
    return-void
.end method

.method private showDialogSafe(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 2820
    invoke-virtual {p0, p1}, Lcom/htc/sdm/activity/SoundSetList;->removeDialog(I)V

    .line 2821
    invoke-virtual {p0, p1}, Lcom/htc/sdm/activity/SoundSetList;->showDialog(I)V

    .line 2822
    return-void
.end method


# virtual methods
.method GotoCreateNewPage()V
    .locals 5

    .prologue
    .line 1056
    const-wide/32 v3, 0x80000

    invoke-static {p0, v3, v4}, Lcom/htc/sdm/util/SDMDBUtil;->isDataStorageFull(Landroid/content/Context;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1058
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/sdm/util/SDMUtil;->CreateDataStorageFullDialog(Landroid/content/Context;)V

    .line 1084
    :goto_0
    return-void

    .line 1061
    :cond_0
    const/4 v3, 0x1

    iget v4, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    if-ne v3, v4, :cond_1

    .line 1063
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/htc/sdm/activity/SDMCreateNew;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1064
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1065
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "SDMListType"

    iget v4, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1066
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1067
    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1071
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v2, picker:Landroid/content/Intent;
    const-string v3, "audio/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1073
    const-string v3, "com.htc.music"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    invoke-static {v2, p0}, Lcom/htc/sdm/util/SDMUtil;->isCallable(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1076
    const-string v3, "com.real.IMP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1077
    invoke-static {v2, p0}, Lcom/htc/sdm/util/SDMUtil;->isCallable(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1079
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1082
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/sdm/activity/SoundSetList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method GotoDownloadPage()V
    .locals 4

    .prologue
    .line 1088
    const-string v1, ""

    .line 1089
    .local v1, more_key:Ljava/lang/String;
    iget v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    packed-switch v2, :pswitch_data_0

    .line 1094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Soundset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1120
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.store.action.DISPATCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1121
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "navigate_to"

    const-string v3, "get_more"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1122
    const-string v2, "get_more_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1123
    const-string v2, "requester"

    const-string v3, "com.htc.store_sdm"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1124
    invoke-virtual {p0, v0}, Lcom/htc/sdm/activity/SoundSetList;->startActivity(Landroid/content/Intent;)V

    .line 1154
    return-void

    .line 1099
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Ringtone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1101
    goto :goto_0

    .line 1110
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Notification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1112
    goto :goto_0

    .line 1115
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Alarm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1089
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x2

    .line 1254
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1259
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 1261
    const/4 v2, -0x1

    if-ne v2, p2, :cond_0

    .line 1263
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1264
    .local v1, music:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 1309
    iget v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    invoke-static {p0, v1, v2}, Lcom/htc/sdm/util/SDMDBUtil;->AddNewSound(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 1310
    .local v0, NewSoundGUID:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/sdm/activity/SoundSetList;->UpdateList()V

    .line 1311
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sdm/activity/SoundSetList;->mIsDirty:Z

    .line 1312
    iget v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nActivityMode:I

    if-eq v4, v2, :cond_0

    .line 1316
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    invoke-static {v3}, Lcom/htc/sdm/util/SDMUtil;->RefID2Type(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v4, v3, v1}, Lcom/htc/sdm/util/SDMDBUtil;->ApplySound(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/net/Uri;)V

    .line 1322
    .end local v0           #NewSoundGUID:Ljava/lang/String;
    .end local v1           #music:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 348
    invoke-virtual {p0, v6}, Lcom/htc/sdm/activity/SoundSetList;->requestWindowFeature(I)Z

    .line 349
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 350
    const v3, 0x7f030008

    invoke-virtual {p0, v3}, Lcom/htc/sdm/activity/SoundSetList;->setContentView(I)V

    .line 351
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList;->getMode()I

    move-result v3

    iput v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nActivityMode:I

    .line 354
    iput v6, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    .line 355
    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nActivityMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 356
    iput v7, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    .line 357
    :cond_0
    iput v6, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    .line 358
    iput-boolean v8, p0, Lcom/htc/sdm/activity/SoundSetList;->m_bSaveOrNot:Z

    .line 359
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_defStrUri:Ljava/lang/String;

    .line 361
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 362
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 368
    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nActivityMode:I

    if-ne v3, v7, :cond_f

    .line 370
    const-string v3, "SDMPickerType"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    .line 376
    :goto_0
    const-string v3, "SDMSaveOrNot"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_bSaveOrNot:Z

    .line 377
    const-string v3, "SDMDefStrUri"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_defStrUri:Ljava/lang/String;

    .line 378
    const-string v3, "SDMPicketTitle"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_customTitle:Ljava/lang/String;

    .line 379
    const-string v3, "SDMListMode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 380
    .local v1, nDeleteOrList:I
    if-ne v1, v7, :cond_1

    .line 382
    iput-boolean v6, p0, Lcom/htc/sdm/activity/SoundSetList;->m_bStartAsDeleteMode:Z

    .line 383
    iput v7, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    .line 384
    iput v7, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nDeleteModeCaller:I

    .line 387
    :cond_1
    const-string v3, "SDMOptMode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 389
    iput-boolean v6, p0, Lcom/htc/sdm/activity/SoundSetList;->m_bStartAsDeleteMode:Z

    .line 390
    const-string v3, "SDMOptMode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    .line 394
    .end local v1           #nDeleteOrList:I
    :cond_2
    const v3, 0x7f0b0002

    invoke-virtual {p0, v3}, Lcom/htc/sdm/activity/SoundSetList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarMiddle;

    iput-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerbar:Lcom/htc/widget/HeaderBarMiddle;

    .line 395
    const v3, 0x7f0b001b

    invoke-virtual {p0, v3}, Lcom/htc/sdm/activity/SoundSetList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarShort;

    iput-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerbar_short:Lcom/htc/widget/HeaderBarShort;

    .line 396
    const v3, 0x7f0b0019

    invoke-virtual {p0, v3}, Lcom/htc/sdm/activity/SoundSetList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    iput-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableMore:Lcom/htc/widget/HeaderBarImage;

    .line 397
    const v3, 0x7f0b001a

    invoke-virtual {p0, v3}, Lcom/htc/sdm/activity/SoundSetList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    iput-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableAdd:Lcom/htc/widget/HeaderBarImage;

    .line 399
    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    if-ne v3, v6, :cond_13

    .line 401
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerbar_short:Lcom/htc/widget/HeaderBarShort;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarShort;->setVisibility(I)V

    .line 402
    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    if-eq v3, v6, :cond_3

    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    if-eq v3, v7, :cond_3

    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    if-ne v3, v9, :cond_11

    .line 406
    :cond_3
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableAdd:Lcom/htc/widget/HeaderBarImage;

    if-eqz v3, :cond_4

    .line 408
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableAdd:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 409
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableAdd:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090090

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    .line 410
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableAdd:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x208087c

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 411
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableAdd:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, p0}, Lcom/htc/widget/HeaderBarImage;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 412
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x9f

    if-ne v3, v4, :cond_10

    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    if-ne v3, v7, :cond_10

    .line 415
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableAdd:Lcom/htc/widget/HeaderBarImage;

    new-instance v4, Lcom/htc/sdm/activity/SoundSetList$1;

    invoke-direct {v4, p0}, Lcom/htc/sdm/activity/SoundSetList$1;-><init>(Lcom/htc/sdm/activity/SoundSetList;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x24

    if-ne v3, v4, :cond_12

    .line 439
    :cond_5
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerbar:Lcom/htc/widget/HeaderBarMiddle;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableMore:Lcom/htc/widget/HeaderBarImage;

    if-eqz v3, :cond_6

    .line 440
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerbar:Lcom/htc/widget/HeaderBarMiddle;

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableMore:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarMiddle;->removeView(Landroid/view/View;)V

    .line 459
    :cond_6
    :goto_2
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xf

    if-eq v3, v4, :cond_7

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xad

    if-ne v3, v4, :cond_8

    :cond_7
    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    if-ne v3, v7, :cond_8

    .line 462
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableMore:Lcom/htc/widget/HeaderBarImage;

    if-eqz v3, :cond_8

    .line 464
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableAdd:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 465
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableAdd:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090090

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    .line 466
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableAdd:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x208087c

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 467
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableAdd:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, p0}, Lcom/htc/widget/HeaderBarImage;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 468
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableAdd:Lcom/htc/widget/HeaderBarImage;

    new-instance v4, Lcom/htc/sdm/activity/SoundSetList$4;

    invoke-direct {v4, p0}, Lcom/htc/sdm/activity/SoundSetList$4;-><init>(Lcom/htc/sdm/activity/SoundSetList;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    :cond_8
    const v3, 0x7f0b0003

    invoke-virtual {p0, v3}, Lcom/htc/sdm/activity/SoundSetList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarText;

    iput-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerText:Lcom/htc/widget/HeaderBarText;

    .line 488
    :goto_3
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerText:Lcom/htc/widget/HeaderBarText;

    if-eqz v3, :cond_9

    .line 490
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 491
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_customTitle:Ljava/lang/String;

    if-nez v3, :cond_15

    .line 493
    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    invoke-static {v3}, Lcom/htc/sdm/util/SDMUtil;->RefID2TitleID(I)I

    move-result v2

    .line 494
    .local v2, nTitleId:I
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 502
    .end local v2           #nTitleId:I
    :cond_9
    :goto_4
    new-instance v3, Lcom/htc/sdm/activity/SoundSetList$ContentObserverStatus;

    invoke-direct {v3, p0}, Lcom/htc/sdm/activity/SoundSetList$ContentObserverStatus;-><init>(Lcom/htc/sdm/activity/SoundSetList;)V

    iput-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_observer:Lcom/htc/sdm/activity/SoundSetList$ContentObserverStatus;

    .line 503
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/htc/sdm/util/SDMUtil;->generateSDMStatusNotificationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList;->m_observer:Lcom/htc/sdm/activity/SoundSetList$ContentObserverStatus;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 505
    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    packed-switch v3, :pswitch_data_0

    .line 553
    sget v3, Lcom/htc/sdm/activity/SoundSetList;->ACTUAL_ITEM_START_POS:I

    iput v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I

    .line 563
    invoke-virtual {p0, v7}, Lcom/htc/sdm/activity/SoundSetList;->setVolumeControlStream(I)V

    .line 567
    :goto_5
    const v3, 0x7f0b001d

    invoke-virtual {p0, v3}, Lcom/htc/sdm/activity/SoundSetList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    iput-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->mListView:Lcom/htc/widget/HtcListView;

    .line 569
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v3, :cond_a

    .line 571
    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    if-ne v3, v6, :cond_16

    .line 573
    new-instance v3, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    invoke-direct {v3, p0, p0}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;-><init>(Lcom/htc/sdm/activity/SoundSetList;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    .line 574
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 575
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->ItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 585
    :cond_a
    :goto_6
    const v3, 0x7f0b001e

    invoke-virtual {p0, v3}, Lcom/htc/sdm/activity/SoundSetList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcFooterButton;

    iput-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    .line 586
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    if-eqz v3, :cond_b

    .line 588
    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    if-ne v3, v6, :cond_17

    .line 590
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->mButtonApplyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    const v4, 0x7f09003b

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 616
    :cond_b
    :goto_7
    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nActivityMode:I

    if-ne v7, v3, :cond_c

    .line 618
    invoke-virtual {p0, v8}, Lcom/htc/sdm/activity/SoundSetList;->setResult(I)V

    .line 621
    :cond_c
    iget-boolean v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_bStartAsDeleteMode:Z

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    if-ne v3, v7, :cond_d

    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nDeleteModeCaller:I

    if-ne v3, v7, :cond_d

    .line 623
    invoke-virtual {p0, v8}, Lcom/htc/sdm/activity/SoundSetList;->setResult(I)V

    .line 626
    :cond_d
    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    if-ne v3, v6, :cond_e

    .line 628
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/htc/sdm/activity/SoundSetList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->mAudioMgr:Landroid/media/AudioManager;

    .line 630
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_CurrentPlayableThreadID:J

    .line 633
    :cond_e
    return-void

    .line 374
    :cond_f
    const-string v3, "SDMListType"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    goto/16 :goto_0

    .line 423
    :cond_10
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableAdd:Lcom/htc/widget/HeaderBarImage;

    new-instance v4, Lcom/htc/sdm/activity/SoundSetList$2;

    invoke-direct {v4, p0}, Lcom/htc/sdm/activity/SoundSetList$2;-><init>(Lcom/htc/sdm/activity/SoundSetList;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 433
    :cond_11
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerbar:Lcom/htc/widget/HeaderBarMiddle;

    if-eqz v3, :cond_4

    .line 434
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerbar:Lcom/htc/widget/HeaderBarMiddle;

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableAdd:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarMiddle;->removeView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 442
    :cond_12
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableMore:Lcom/htc/widget/HeaderBarImage;

    if-eqz v3, :cond_6

    .line 444
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableMore:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 445
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableMore:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    .line 446
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableMore:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x20808d9

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 447
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableMore:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, p0}, Lcom/htc/widget/HeaderBarImage;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 448
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableMore:Lcom/htc/widget/HeaderBarImage;

    new-instance v4, Lcom/htc/sdm/activity/SoundSetList$3;

    invoke-direct {v4, p0}, Lcom/htc/sdm/activity/SoundSetList$3;-><init>(Lcom/htc/sdm/activity/SoundSetList;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 479
    :cond_13
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerbar:Lcom/htc/widget/HeaderBarMiddle;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarMiddle;->setVisibility(I)V

    .line 480
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerbar:Lcom/htc/widget/HeaderBarMiddle;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableAdd:Lcom/htc/widget/HeaderBarImage;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableMore:Lcom/htc/widget/HeaderBarImage;

    if-eqz v3, :cond_14

    .line 482
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerbar:Lcom/htc/widget/HeaderBarMiddle;

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableAdd:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarMiddle;->removeView(Landroid/view/View;)V

    .line 483
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerbar:Lcom/htc/widget/HeaderBarMiddle;

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList;->headerLableMore:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarMiddle;->removeView(Landroid/view/View;)V

    .line 485
    :cond_14
    const v3, 0x7f0b001c

    invoke-virtual {p0, v3}, Lcom/htc/sdm/activity/SoundSetList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarText;

    iput-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerText:Lcom/htc/widget/HeaderBarText;

    goto/16 :goto_3

    .line 498
    :cond_15
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->headerText:Lcom/htc/widget/HeaderBarText;

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList;->m_customTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 508
    :pswitch_0
    sget v3, Lcom/htc/sdm/activity/SoundSetList;->ACTUAL_ITEM_START_POS:I

    iput v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I

    .line 518
    invoke-virtual {p0, v10}, Lcom/htc/sdm/activity/SoundSetList;->setVolumeControlStream(I)V

    goto/16 :goto_5

    .line 526
    :pswitch_1
    sget v3, Lcom/htc/sdm/activity/SoundSetList;->ACTUAL_ITEM_START_POS_NOTIFICATION:I

    iput v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I

    .line 536
    invoke-virtual {p0, v10}, Lcom/htc/sdm/activity/SoundSetList;->setVolumeControlStream(I)V

    goto/16 :goto_5

    .line 539
    :pswitch_2
    sget v3, Lcom/htc/sdm/activity/SoundSetList;->ACTUAL_ITEM_START_POS:I

    iput v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I

    .line 549
    invoke-virtual {p0, v9}, Lcom/htc/sdm/activity/SoundSetList;->setVolumeControlStream(I)V

    goto/16 :goto_5

    .line 577
    :cond_16
    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    if-ne v3, v7, :cond_a

    .line 579
    new-instance v3, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    invoke-direct {v3, p0, p0}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;-><init>(Lcom/htc/sdm/activity/SoundSetList;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    .line 580
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 581
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    iget-object v4, v4, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->mDelClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    goto/16 :goto_6

    .line 593
    :cond_17
    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    if-ne v3, v7, :cond_b

    .line 595
    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    if-ne v6, v3, :cond_18

    .line 597
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    if-eqz v3, :cond_b

    .line 599
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->mButtonDeleteClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$400(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f090020

    invoke-virtual {p0, v5}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (0)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_7

    .line 606
    :cond_18
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    if-eqz v3, :cond_b

    .line 608
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->mButtonCancelClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$500(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    const v4, 0x7f09001f

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 610
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_7

    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 851
    sparse-switch p1, :sswitch_data_0

    .line 886
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mDialog:Landroid/app/Dialog;

    :goto_1
    return-object v0

    .line 855
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/sdm/activity/SoundSetList;->getAddDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mDialog:Landroid/app/Dialog;

    .line 856
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-ne v0, v1, :cond_0

    :cond_1
    iget v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 859
    invoke-direct {p0}, Lcom/htc/sdm/activity/SoundSetList;->getAddDialogVCAST()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 864
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/sdm/activity/SoundSetList;->getAddDialogVCAST()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 869
    :sswitch_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/sdm/activity/SoundSetList;->getAddDialogTelstra(Ljava/lang/Boolean;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 874
    :sswitch_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/sdm/activity/SoundSetList;->getAddDialogTelstra(Ljava/lang/Boolean;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 879
    :sswitch_4
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 880
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f09007c

    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 881
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 882
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 883
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_1

    .line 851
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x3e7 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 1231
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1233
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_observer:Lcom/htc/sdm/activity/SoundSetList$ContentObserverStatus;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1234
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_observer:Lcom/htc/sdm/activity/SoundSetList$ContentObserverStatus;

    .line 1235
    iget-boolean v2, p0, Lcom/htc/sdm/activity/SoundSetList;->mIsStartActivity:Z

    if-eqz v2, :cond_0

    .line 1237
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sdm/activity/SoundSetList;->mIsStartActivity:Z

    .line 1242
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1243
    .local v1, myIntent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1244
    .local v0, myBundle:Landroid/os/Bundle;
    const-string v2, "SDMListType"

    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1245
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1246
    const-string v2, "com.htc.sdm"

    const-string v3, "com.htc.sdm.activity.SoundSetList"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1247
    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetList;->startActivity(Landroid/content/Intent;)V

    .line 1249
    .end local v0           #myBundle:Landroid/os/Bundle;
    .end local v1           #myIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2800
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 648
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 650
    invoke-virtual {p0, p1}, Lcom/htc/sdm/activity/SoundSetList;->setIntent(Landroid/content/Intent;)V

    .line 651
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 653
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 655
    const-string v2, "SDMListType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 662
    .local v1, nNewIntentListType:I
    :goto_0
    iget v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    if-eq v2, v1, :cond_0

    .line 664
    iput v1, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    .line 665
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/sdm/activity/SoundSetList;->mIsStartActivity:Z

    .line 671
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList;->finish()V

    .line 673
    :cond_0
    return-void

    .line 659
    .end local v1           #nNewIntentListType:I
    :cond_1
    const/4 v1, 0x1

    .restart local v1       #nNewIntentListType:I
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/16 v6, 0x24

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 791
    iget v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    if-ne v2, v4, :cond_0

    .line 793
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 842
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 796
    :pswitch_0
    const-string v2, "ANALYTIC_SoundSet"

    const-string v3, "[SoundSetList] show the SDMCreateNew activity to add new sound set"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 806
    :cond_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v2, v6, :cond_2

    .line 807
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList;->GotoDownloadPage()V

    goto :goto_0

    .line 809
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList;->GotoCreateNewPage()V

    goto :goto_0

    .line 812
    :cond_3
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v2, v6, :cond_5

    .line 814
    :cond_4
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList;->GotoCreateNewPage()V

    goto :goto_0

    .line 818
    :cond_5
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9f

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    if-ne v2, v5, :cond_6

    .line 821
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/htc/sdm/activity/SoundSetList;->showDialog(I)V

    goto :goto_0

    .line 823
    :cond_6
    invoke-virtual {p0, v4}, Lcom/htc/sdm/activity/SoundSetList;->showDialog(I)V

    goto :goto_0

    .line 830
    :pswitch_1
    const-string v2, "ANALYTIC_SoundSet"

    const-string v3, "[SoundSetList] show the delete list"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/htc/sdm/activity/SoundSetListDelete;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 833
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 834
    .local v1, myBundle:Landroid/os/Bundle;
    const-string v2, "SDMListType"

    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 835
    const-string v2, "SDMOptMode"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 836
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 837
    invoke-virtual {p0, v0}, Lcom/htc/sdm/activity/SoundSetList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 793
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 1331
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList;->stopMediaPlayer()V

    .line 1332
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1333
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const v7, 0x2080323

    const v3, 0x208031d

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 724
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 725
    const/4 v0, 0x1

    .line 726
    .local v0, enableDelete:Z
    iget v1, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    if-ne v1, v5, :cond_0

    .line 728
    iget v1, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    packed-switch v1, :pswitch_data_0

    .line 761
    :goto_0
    if-eqz v0, :cond_0

    .line 763
    iget-boolean v1, p0, Lcom/htc/sdm/activity/SoundSetList;->m_bStartAsDeleteMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nDeleteModeCaller:I

    if-ne v1, v6, :cond_3

    .line 765
    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    invoke-static {p0, v1, v2, v5, v6}, Lcom/htc/sdm/util/SDMDBUtil;->hasDeleteItem(Landroid/content/Context;Ljava/lang/String;III)Z

    move-result v0

    .line 771
    :goto_1
    if-nez v0, :cond_5

    .line 773
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 774
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 785
    :cond_0
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 731
    :pswitch_0
    const v1, 0x7f09000e

    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 732
    const v1, 0x7f090020

    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v6, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 735
    :pswitch_1
    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 736
    const v1, 0x7f090020

    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v6, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 739
    :pswitch_2
    const v1, 0x7f090027

    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 740
    const v1, 0x7f090020

    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v6, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 749
    :pswitch_3
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x24

    if-eq v1, v2, :cond_1

    .line 751
    const v1, 0x7f090018

    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 754
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x24

    if-eq v1, v2, :cond_2

    .line 755
    const v1, 0x7f090020

    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v6, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 757
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 769
    :cond_3
    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    const/4 v3, 0x3

    invoke-static {p0, v1, v2, v3, v6}, Lcom/htc/sdm/util/SDMDBUtil;->hasDeleteItem(Landroid/content/Context;Ljava/lang/String;III)Z

    move-result v0

    goto/16 :goto_1

    .line 776
    :cond_4
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 778
    :cond_5
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 779
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 781
    :cond_6
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 728
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 684
    iget v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    if-ne v0, v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    if-ne v0, v2, :cond_1

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_CheckRingtoneConsistent:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 689
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/sdm/activity/SoundSetList$CheckRingtoneConsistent;

    invoke-direct {v1, p0}, Lcom/htc/sdm/activity/SoundSetList$CheckRingtoneConsistent;-><init>(Lcom/htc/sdm/activity/SoundSetList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_CheckRingtoneConsistent:Ljava/lang/Thread;

    .line 690
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_CheckRingtoneConsistent:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 691
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_CheckRingtoneConsistent:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    .line 699
    iget v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    if-ne v0, v2, :cond_4

    .line 701
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->UpdatetList(Ljava/util/ArrayList;)V

    .line 708
    :goto_0
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_2

    .line 710
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 714
    :cond_2
    iget-boolean v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mIsDirty:Z

    if-eqz v0, :cond_3

    .line 715
    invoke-direct {p0}, Lcom/htc/sdm/activity/SoundSetList;->UpdateList()V

    .line 716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mIsDirty:Z

    .line 718
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 719
    return-void

    .line 705
    :cond_4
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->UpdatetList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 286
    invoke-direct {p0}, Lcom/htc/sdm/activity/SoundSetList;->abandonAudioFocus()V

    .line 287
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->b_isListItemClick:Z
    invoke-static {v0, v1}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->access$102(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;Z)Z

    .line 291
    :cond_0
    return-void
.end method

.method setOpMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1158
    packed-switch p1, :pswitch_data_0

    .line 1162
    iget v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    if-eq v2, v1, :cond_3

    .line 1164
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    if-nez v2, :cond_0

    .line 1166
    new-instance v2, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    invoke-direct {v2, p0, p0}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;-><init>(Lcom/htc/sdm/activity/SoundSetList;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    .line 1169
    :cond_0
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1170
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v3, v3, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->ItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 1172
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 1174
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SSAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;

    iget-object v3, v3, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->mButtonApplyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1175
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    const v3, 0x7f09003b

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1176
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1178
    :cond_2
    iput v1, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    .line 1180
    invoke-direct {p0}, Lcom/htc/sdm/activity/SoundSetList;->UpdateList()V

    .line 1226
    :cond_3
    :goto_0
    return-void

    .line 1185
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList;->stopMediaPlayer()V

    .line 1187
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    if-eq v2, v4, :cond_3

    .line 1189
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    if-nez v2, :cond_4

    .line 1191
    new-instance v2, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    invoke-direct {v2, p0, p0}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;-><init>(Lcom/htc/sdm/activity/SoundSetList;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    .line 1194
    :cond_4
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_dl:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$600(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1195
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_uc:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$700(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1197
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1198
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    iget-object v3, v3, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->mDelClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 1200
    iget v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I

    if-ne v1, v2, :cond_6

    .line 1202
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    if-eqz v1, :cond_5

    .line 1204
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->mButtonDeleteClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$400(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1205
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090020

    invoke-virtual {p0, v3}, Lcom/htc/sdm/activity/SoundSetList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1206
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1219
    :cond_5
    :goto_1
    iput v4, p0, Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentOpMode:I

    .line 1221
    invoke-direct {p0}, Lcom/htc/sdm/activity/SoundSetList;->UpdateList()V

    goto :goto_0

    .line 1211
    :cond_6
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 1213
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList;->m_SDAdapter:Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;

    #getter for: Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->mButtonCancelClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->access$500(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1214
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    const v2, 0x7f09001f

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 1215
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->m_ApplyBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 1158
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method stopMediaPlayer()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 302
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 305
    :cond_0
    return-void
.end method
