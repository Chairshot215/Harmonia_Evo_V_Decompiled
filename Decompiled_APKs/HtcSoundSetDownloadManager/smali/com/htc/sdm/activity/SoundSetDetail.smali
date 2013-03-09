.class public Lcom/htc/sdm/activity/SoundSetDetail;
.super Landroid/app/Activity;
.source "SoundSetDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdm/activity/SoundSetDetail$ApplySoundSetTask;,
        Lcom/htc/sdm/activity/SoundSetDetail$ContentObserverStatus;,
        Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;,
        Lcom/htc/sdm/activity/SoundSetDetail$SoundData;,
        Lcom/htc/sdm/activity/SoundSetDetail$AudioFocusChangeListener;
    }
.end annotation


# static fields
.field private static final DIALOG_PLEASE_WAIT:I = 0x3e7

.field public static final DOWNLOAD_TITLE_REAL:Ljava/lang/String; = "com.htc.sdm.download.real"

.field protected static final LOG_FLAG:Z = false

.field protected static final LOG_TAG:Ljava/lang/String; = "SDM"

.field private static final MSG_APPLY_COMPLETED:I = 0xc8

.field protected static final PREFIX:Ljava/lang/String; = "[Detail View] "

.field public static final SDM_real_Uri:Landroid/net/Uri;


# instance fields
.field private Inflater:Landroid/view/LayoutInflater;

.field private mAdapter:Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;

.field private mAudioFocusListener:Lcom/htc/sdm/activity/SoundSetDetail$AudioFocusChangeListener;

.field private mAudioMgr:Landroid/media/AudioManager;

.field private mDownloadBtn:Lcom/htc/widget/HtcFooterButton;

.field mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHtcListItemDrawAndSeparate:Lcom/htc/widget/HtcListItemSeparable;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field mSoundChildList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sdm/SoundParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private m_GUID:Ljava/lang/String;

.field public m_Player:Landroid/media/MediaPlayer;

.field m_SoundParcelable:Lcom/htc/sdm/SoundParcelable;

.field private m_nSoundsetType:I

.field private m_observer:Lcom/htc/sdm/activity/SoundSetDetail$ContentObserverStatus;

.field m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

.field mlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sdm/activity/SoundSetDetail$SoundData;",
            ">;"
        }
    .end annotation
.end field

.field myStringArray:[Ljava/lang/String;

.field private myViewDescription:Landroid/view/View;

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-string v0, "content://com.htc.sdm/real"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/sdm/activity/SoundSetDetail;->SDM_real_Uri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->myViewDescription:Landroid/view/View;

    .line 70
    iput-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mAdapter:Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;

    .line 71
    iput-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->Inflater:Landroid/view/LayoutInflater;

    .line 72
    iput-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->myStringArray:[Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->m_Player:Landroid/media/MediaPlayer;

    .line 76
    iput-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mDownloadBtn:Lcom/htc/widget/HtcFooterButton;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->m_nSoundsetType:I

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->m_GUID:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mSoundChildList:Ljava/util/ArrayList;

    .line 86
    iput-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mHashMap:Ljava/util/HashMap;

    .line 93
    iput-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->m_observer:Lcom/htc/sdm/activity/SoundSetDetail$ContentObserverStatus;

    .line 101
    iput-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1116
    new-instance v0, Lcom/htc/sdm/activity/SoundSetDetail$3;

    invoke-direct {v0, p0}, Lcom/htc/sdm/activity/SoundSetDetail$3;-><init>(Lcom/htc/sdm/activity/SoundSetDetail;)V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mHtcListItemDrawAndSeparate:Lcom/htc/widget/HtcListItemSeparable;

    .line 1176
    new-instance v0, Lcom/htc/sdm/activity/SoundSetDetail$4;

    invoke-direct {v0, p0}, Lcom/htc/sdm/activity/SoundSetDetail$4;-><init>(Lcom/htc/sdm/activity/SoundSetDetail;)V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->uiHandler:Landroid/os/Handler;

    return-void
.end method

.method private UpdateList()V
    .locals 2

    .prologue
    .line 875
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mlist:Ljava/util/ArrayList;

    .line 876
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mlist:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 904
    :goto_0
    return-void

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 880
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 882
    iget v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->m_nSoundsetType:I

    packed-switch v0, :pswitch_data_0

    .line 903
    :goto_1
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mAdapter:Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;

    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->UpdatetList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 885
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetDetail;->ComposeRingtoneSound()V

    goto :goto_1

    .line 894
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetDetail;->ComposeNoticeSound()V

    goto :goto_1

    .line 897
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetDetail;->ComposeAlarmSound()V

    goto :goto_1

    .line 900
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetDetail;->ComposeSoundSet()V

    goto :goto_1

    .line 882
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
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

.method private abandonAudioFocus()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mAudioFocusListener:Lcom/htc/sdm/activity/SoundSetDetail$AudioFocusChangeListener;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mAudioFocusListener:Lcom/htc/sdm/activity/SoundSetDetail$AudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 175
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mAudioFocusListener:Lcom/htc/sdm/activity/SoundSetDetail$AudioFocusChangeListener;

    .line 179
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/htc/sdm/activity/SoundSetDetail;)Lcom/htc/widget/HtcListItemSeparable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mHtcListItemDrawAndSeparate:Lcom/htc/widget/HtcListItemSeparable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sdm/activity/SoundSetDetail;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/htc/sdm/activity/SoundSetDetail;->requestAudioFocus()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/sdm/activity/SoundSetDetail;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->m_nSoundsetType:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/sdm/activity/SoundSetDetail;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/htc/sdm/activity/SoundSetDetail;->showDialogSafe(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/sdm/activity/SoundSetDetail;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/htc/sdm/activity/SoundSetDetail;->UpdateList()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/sdm/activity/SoundSetDetail;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private requestAudioFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 147
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mAudioFocusListener:Lcom/htc/sdm/activity/SoundSetDetail$AudioFocusChangeListener;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/htc/sdm/activity/SoundSetDetail$AudioFocusChangeListener;

    invoke-direct {v0, p0, v4}, Lcom/htc/sdm/activity/SoundSetDetail$AudioFocusChangeListener;-><init>(Lcom/htc/sdm/activity/SoundSetDetail;Lcom/htc/sdm/activity/SoundSetDetail$1;)V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mAudioFocusListener:Lcom/htc/sdm/activity/SoundSetDetail$AudioFocusChangeListener;

    .line 154
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mAudioMgr:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mAudioFocusListener:Lcom/htc/sdm/activity/SoundSetDetail$AudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 157
    iput-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mAudioFocusListener:Lcom/htc/sdm/activity/SoundSetDetail$AudioFocusChangeListener;

    .line 165
    :cond_0
    return-void
.end method

.method private showDialogSafe(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1172
    invoke-virtual {p0, p1}, Lcom/htc/sdm/activity/SoundSetDetail;->removeDialog(I)V

    .line 1173
    invoke-virtual {p0, p1}, Lcom/htc/sdm/activity/SoundSetDetail;->showDialog(I)V

    .line 1174
    return-void
.end method


# virtual methods
.method ComposeAlarmSound()V
    .locals 6

    .prologue
    .line 1010
    new-instance v0, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;

    iget v2, p0, Lcom/htc/sdm/activity/SoundSetDetail;->m_nSoundsetType:I

    const v1, 0x7f090043

    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;-><init>(Lcom/htc/sdm/activity/SoundSetDetail;ILjava/lang/String;Lcom/htc/sdm/SoundSetParcelable;I)V

    .line 1011
    .local v0, data:Lcom/htc/sdm/activity/SoundSetDetail$SoundData;
    if-eqz v0, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    :cond_0
    return-void
.end method

.method ComposeNoticeSound()V
    .locals 6

    .prologue
    .line 1018
    new-instance v0, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;

    iget v2, p0, Lcom/htc/sdm/activity/SoundSetDetail;->m_nSoundsetType:I

    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;-><init>(Lcom/htc/sdm/activity/SoundSetDetail;ILjava/lang/String;Lcom/htc/sdm/SoundSetParcelable;I)V

    .line 1019
    .local v0, data:Lcom/htc/sdm/activity/SoundSetDetail$SoundData;
    if-eqz v0, :cond_0

    .line 1020
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    :cond_0
    return-void
.end method

.method ComposeRingtoneSound()V
    .locals 6

    .prologue
    .line 1002
    new-instance v0, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;

    iget v2, p0, Lcom/htc/sdm/activity/SoundSetDetail;->m_nSoundsetType:I

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;-><init>(Lcom/htc/sdm/activity/SoundSetDetail;ILjava/lang/String;Lcom/htc/sdm/SoundSetParcelable;I)V

    .line 1003
    .local v0, data:Lcom/htc/sdm/activity/SoundSetDetail$SoundData;
    if-eqz v0, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    :cond_0
    return-void
.end method

.method ComposeSoundSet()V
    .locals 12

    .prologue
    const v11, 0x7f090049

    .line 909
    const-string v3, ""

    .line 911
    .local v3, strText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->m_GUID:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/htc/sdm/util/SDMDBUtil;->loadSoundListFromDBbyParentGUID(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mSoundChildList:Ljava/util/ArrayList;

    .line 914
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mSoundChildList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/htc/sdm/util/SDMDBUtil;->getDefaultNotifyGUID(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    .line 917
    .local v7, defaultNotifyGUID:Ljava/lang/String;
    const/4 v8, 0x0

    .line 918
    .local v8, i:I
    const/4 v8, 0x0

    :goto_0
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mSoundChildList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_9

    .line 920
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mSoundChildList:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/sdm/SoundParcelable;

    .line 921
    .local v9, parcelable:Lcom/htc/sdm/SoundParcelable;
    const/4 v2, 0x0

    .line 922
    .local v2, typeid:I
    const/4 v5, 0x0

    .line 923
    .local v5, order:I
    invoke-virtual {v9}, Lcom/htc/sdm/SoundParcelable;->getRefType()Ljava/lang/String;

    move-result-object v10

    .line 926
    .local v10, refType:Ljava/lang/String;
    const-string v1, "S_Ringtone"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 928
    const/4 v2, 0x2

    .line 929
    const/4 v5, 0x0

    .line 930
    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 983
    :goto_1
    invoke-virtual {v9}, Lcom/htc/sdm/SoundParcelable;->getGUID()Ljava/lang/String;

    move-result-object v6

    .line 986
    .local v6, GUID:Ljava/lang/String;
    invoke-static {p0, v2, v6}, Lcom/htc/sdm/util/SDMDBUtil;->loadSoundSetFromDB(Landroid/content/Context;ILjava/lang/String;)Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v4

    .line 988
    .local v4, soundSetParcelable:Lcom/htc/sdm/SoundSetParcelable;
    invoke-static {p0, v4, v7}, Lcom/htc/sdm/util/SDMDBUtil;->updateDefaultNotifySound(Landroid/content/Context;Lcom/htc/sdm/SoundSetParcelable;Ljava/lang/String;)Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v4

    .line 991
    new-instance v0, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/sdm/activity/SoundSetDetail$SoundData;-><init>(Lcom/htc/sdm/activity/SoundSetDetail;ILjava/lang/String;Lcom/htc/sdm/SoundSetParcelable;I)V

    .line 992
    .local v0, data:Lcom/htc/sdm/activity/SoundSetDetail$SoundData;
    if-eqz v0, :cond_0

    .line 993
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mlist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    .end local v0           #data:Lcom/htc/sdm/activity/SoundSetDetail$SoundData;
    .end local v4           #soundSetParcelable:Lcom/htc/sdm/SoundSetParcelable;
    .end local v6           #GUID:Ljava/lang/String;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 932
    :cond_1
    const-string v1, "S_Alarm"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 934
    const/4 v2, 0x4

    .line 935
    const/4 v5, 0x1

    .line 936
    const v1, 0x7f090043

    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 938
    :cond_2
    const-string v1, "S_Notify"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 940
    const/4 v2, 0x3

    .line 941
    const/4 v5, 0x2

    .line 942
    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 944
    :cond_3
    const-string v1, "Message"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 946
    const/4 v2, 0x6

    .line 947
    const/4 v5, 0x3

    .line 948
    const v1, 0x7f090047

    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 950
    :cond_4
    const-string v1, "EMail"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 952
    const/4 v2, 0x7

    .line 953
    const/4 v5, 0x4

    .line 954
    const v1, 0x7f09004b

    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 956
    :cond_5
    const-string v1, "Calendar"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 958
    const/4 v2, 0x5

    .line 959
    const/4 v5, 0x5

    .line 960
    invoke-virtual {p0, v11}, Lcom/htc/sdm/activity/SoundSetDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 962
    :cond_6
    const-string v1, "FS1"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 964
    const/16 v2, 0x8

    .line 965
    const/4 v5, 0x6

    .line 966
    const v1, 0x7f09004f

    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 968
    :cond_7
    const-string v1, "FS2"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 970
    const/16 v2, 0x9

    .line 971
    const/4 v5, 0x7

    .line 972
    invoke-virtual {p0, v11}, Lcom/htc/sdm/activity/SoundSetDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 974
    :cond_8
    const-string v1, "Task"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    const/16 v2, 0xa

    .line 977
    const/16 v5, 0x8

    .line 978
    const v1, 0x7f09004d

    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 996
    .end local v2           #typeid:I
    .end local v5           #order:I
    .end local v9           #parcelable:Lcom/htc/sdm/SoundParcelable;
    .end local v10           #refType:Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mlist:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 997
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 28
    .parameter "savedInstanceState"

    .prologue
    .line 594
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 595
    const v24, 0x7f030009

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->setContentView(I)V

    .line 596
    const v24, 0x7f0b001f

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/htc/widget/HtcListView;

    .line 598
    .local v11, listView:Lcom/htc/widget/HtcListView;
    const-string v24, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/LayoutInflater;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sdm/activity/SoundSetDetail;->Inflater:Landroid/view/LayoutInflater;

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->Inflater:Landroid/view/LayoutInflater;

    move-object/from16 v24, v0

    const v25, 0x7f030006

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v11, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sdm/activity/SoundSetDetail;->myViewDescription:Landroid/view/View;

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->myViewDescription:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0b0010

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 603
    .local v9, label:Landroid/widget/TextView;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const v25, 0x7f090050

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->myViewDescription:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0b0012

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #label:Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 606
    .restart local v9       #label:Landroid/widget/TextView;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const v25, 0x7f090051

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->myViewDescription:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0b0014

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #label:Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 609
    .restart local v9       #label:Landroid/widget/TextView;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const v25, 0x7f090052

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->myViewDescription:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0b0016

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #label:Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 612
    .restart local v9       #label:Landroid/widget/TextView;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const v25, 0x7f090053

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    const/4 v9, 0x0

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->myViewDescription:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0b000e

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 618
    .local v21, textDescription:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->myViewDescription:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0b0011

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 619
    .local v20, textCreator:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->myViewDescription:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0b0013

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 620
    .local v19, textCreateDate:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->myViewDescription:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0b0015

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 621
    .local v18, textCategory:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->myViewDescription:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0b0017

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 623
    .local v22, textSize:Landroid/widget/TextView;
    const v24, 0x7f0b0002

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/htc/widget/HeaderBarShort;

    .line 624
    .local v23, titleBarView:Lcom/htc/widget/HeaderBarShort;
    const v24, 0x7f0b0020

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/htc/widget/HtcFooter;

    .line 628
    .local v17, taskbarView:Lcom/htc/widget/HtcFooter;
    const/4 v15, 0x0

    .line 629
    .local v15, sTitle:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sdm/activity/SoundSetDetail;->getIntent()Landroid/content/Intent;

    move-result-object v24

    const-string v25, "online_item_id"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 630
    .local v12, online_id:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sdm/activity/SoundSetDetail;->getIntent()Landroid/content/Intent;

    move-result-object v24

    const-string v25, "online_item_audio_type"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 631
    .local v13, online_type:Ljava/lang/String;
    if-eqz v12, :cond_1

    if-eqz v13, :cond_1

    .line 634
    invoke-static {v13}, Lcom/htc/sdm/util/SDMUtil;->RefType2ID(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sdm/activity/SoundSetDetail;->m_nSoundsetType:I

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sdm/activity/SoundSetDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_nSoundsetType:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v12, v1}, Lcom/htc/sdm/util/SDMDBUtil;->getSoundSetParcelableByGUID(Landroid/content/Context;Ljava/lang/String;I)Lcom/htc/sdm/SoundSetParcelable;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 638
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sdm/activity/SoundSetDetail;->finish()V

    .line 870
    :goto_0
    return-void

    .line 641
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sdm/SoundSetParcelable;->getName()Ljava/lang/String;

    move-result-object v15

    .line 644
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sdm/activity/SoundSetDetail;->getIntent()Landroid/content/Intent;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 645
    .local v3, bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_2

    if-nez v12, :cond_2

    .line 647
    const-string v24, "Soudset_Type"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sdm/activity/SoundSetDetail;->m_nSoundsetType:I

    .line 648
    const-string v24, "DetailParcel"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v24

    check-cast v24, Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    .line 649
    const-string v24, "SoundSetName"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 654
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    if-eqz v15, :cond_5

    .line 656
    const/4 v8, 0x0

    .line 657
    .local v8, headerText:Lcom/htc/widget/HeaderBarText;
    const v24, 0x7f0b0003

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HeaderBarShort;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #headerText:Lcom/htc/widget/HeaderBarText;
    check-cast v8, Lcom/htc/widget/HeaderBarText;

    .line 658
    .restart local v8       #headerText:Lcom/htc/widget/HeaderBarText;
    invoke-virtual {v8, v15}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 659
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sdm/SoundSetParcelable;->getDescription()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sdm/SoundSetParcelable;->getDescription()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_6

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sdm/SoundSetParcelable;->getDescription()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sdm/activity/SoundSetDetail;->m_GUID:Ljava/lang/String;

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sdm/SoundSetParcelable;->getAuth()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_7

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sdm/SoundSetParcelable;->getAuth()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sdm/SoundSetParcelable;->getRelDate()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sdm/SoundSetParcelable;->getRatingCount()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_8

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sdm/activity/SoundSetDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/sdm/SoundSetParcelable;->getRatingCount()J

    move-result-wide v25

    invoke-static/range {v24 .. v26}, Lcom/htc/sdm/util/SDMUtil;->getDateTimeStringFromMillisecond(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    .line 681
    .local v14, sTime:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    .end local v14           #sTime:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sdm/SoundSetParcelable;->getCat()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/htc/sdm/util/SDMUtil;->getCategoryString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    invoke-static/range {p0 .. p0}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_3

    sget-short v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v25, 0xf

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    sget-short v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v25, 0xad

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sdm/SoundSetParcelable;->getCat()Ljava/lang/String;

    move-result-object v24

    const-string v25, "0"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sdm/SoundSetParcelable;->getCat()Ljava/lang/String;

    move-result-object v24

    const-string v25, "108"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sdm/SoundSetParcelable;->getCat()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    :cond_3
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/sdm/SoundSetParcelable;->getSize()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    const v24, 0x7f0b001e

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sdm/activity/SoundSetDetail;->mDownloadBtn:Lcom/htc/widget/HtcFooterButton;

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->mDownloadBtn:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sdm/SoundSetParcelable;->getDownloadStatus()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->mDownloadBtn:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v24, v0

    const v25, 0x7f09003b

    invoke-virtual/range {v24 .. v25}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->mDownloadBtn:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v24, v0

    new-instance v25, Lcom/htc/sdm/activity/SoundSetDetail$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/sdm/activity/SoundSetDetail$1;-><init>(Lcom/htc/sdm/activity/SoundSetDetail;)V

    invoke-virtual/range {v24 .. v25}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 840
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->myViewDescription:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->mHtcListItemDrawAndSeparate:Lcom/htc/widget/HtcListItemSeparable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->myViewDescription:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v11, v0, v1, v2}, Lcom/htc/widget/HtcListView;->addFootViewWithoutDivider(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 842
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sdm/activity/SoundSetDetail;->mHashMap:Ljava/util/HashMap;

    .line 845
    new-instance v24, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;-><init>(Lcom/htc/sdm/activity/SoundSetDetail;Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sdm/activity/SoundSetDetail;->mAdapter:Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->mAdapter:Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_nSoundsetType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->SetListType(I)V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->mAdapter:Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 849
    invoke-direct/range {p0 .. p0}, Lcom/htc/sdm/activity/SoundSetDetail;->UpdateList()V

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->mAdapter:Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail$DetailAdapter;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 853
    invoke-static/range {p0 .. p0}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_5

    sget-short v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v25, 0xf

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    sget-short v24, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v25, 0xad

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    .line 857
    new-instance v24, Lcom/htc/sdm/activity/SoundSetDetail$ContentObserverStatus;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/sdm/activity/SoundSetDetail$ContentObserverStatus;-><init>(Lcom/htc/sdm/activity/SoundSetDetail;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sdm/activity/SoundSetDetail;->m_observer:Lcom/htc/sdm/activity/SoundSetDetail$ContentObserverStatus;

    .line 858
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sdm/activity/SoundSetDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/htc/sdm/util/SDMUtil;->generateSDMStatusNotificationUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_observer:Lcom/htc/sdm/activity/SoundSetDetail$ContentObserverStatus;

    move-object/from16 v27, v0

    invoke-virtual/range {v24 .. v27}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sdm/SoundSetParcelable;->getLang()Ljava/lang/String;

    move-result-object v10

    .line 861
    .local v10, lang:Ljava/lang/String;
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sdm/activity/SoundSetDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/htc/sdm/util/SDMUtil;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/htc/sdm/util/SDMUtil;->hasActiveNetwork(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sdm/activity/SoundSetDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_nSoundsetType:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/htc/sdm/util/SDMUtil;->typeIdToString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v24 .. v26}, Lcom/htc/sdm/util/SDMUtil;->SendLocaleChangeIntentToHub(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    .end local v8           #headerText:Lcom/htc/widget/HeaderBarText;
    .end local v10           #lang:Ljava/lang/String;
    :cond_5
    const-string v24, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/media/AudioManager;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sdm/activity/SoundSetDetail;->mAudioMgr:Landroid/media/AudioManager;

    goto/16 :goto_0

    .line 665
    .restart local v8       #headerText:Lcom/htc/widget/HeaderBarText;
    :cond_6
    const/16 v24, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 674
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->myViewDescription:Landroid/view/View;

    move-object/from16 v24, v0

    const v25, 0x7f0b000f

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 675
    .local v4, creatorArea:Landroid/widget/LinearLayout;
    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 684
    .end local v4           #creatorArea:Landroid/widget/LinearLayout;
    :cond_8
    :try_start_0
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v24, "yyyyMMdd"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 686
    .local v16, sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sdm/SoundSetParcelable;->getRelDate()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 688
    .local v5, date:Ljava/util/Date;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sdm/activity/SoundSetDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "date_format"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 692
    .local v6, dateFormat:Ljava/lang/CharSequence;
    invoke-static {v6, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 693
    .end local v5           #date:Ljava/util/Date;
    .end local v6           #dateFormat:Ljava/lang/CharSequence;
    .end local v16           #sdf:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v7

    .line 695
    .local v7, e:Ljava/text/ParseException;
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_3

    .line 765
    .end local v7           #e:Ljava/text/ParseException;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sdm/SoundSetParcelable;->getDownloadStatus()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->m_parcelable:Lcom/htc/sdm/SoundSetParcelable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sdm/SoundSetParcelable;->getDownloadStatus()I

    move-result v24

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->mDownloadBtn:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v24, v0

    const v25, 0x7f09005a

    invoke-virtual/range {v24 .. v25}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sdm/activity/SoundSetDetail;->mDownloadBtn:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v24, v0

    new-instance v25, Lcom/htc/sdm/activity/SoundSetDetail$2;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/sdm/activity/SoundSetDetail$2;-><init>(Lcom/htc/sdm/activity/SoundSetDetail;)V

    invoke-virtual/range {v24 .. v25}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 1193
    packed-switch p1, :pswitch_data_0

    .line 1203
    :goto_0
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0

    .line 1197
    :pswitch_0
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1198
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v1, 0x7f09007c

    invoke-virtual {p0, v1}, Lcom/htc/sdm/activity/SoundSetDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1199
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 1200
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 1193
    :pswitch_data_0
    .packed-switch 0x3e7
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->m_observer:Lcom/htc/sdm/activity/SoundSetDetail$ContentObserverStatus;

    if-eqz v0, :cond_0

    .line 1097
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetDetail;->m_observer:Lcom/htc/sdm/activity/SoundSetDetail$ContentObserverStatus;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1098
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->m_observer:Lcom/htc/sdm/activity/SoundSetDetail$ContentObserverStatus;

    .line 1107
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetDetail;->stopMediaPlayer()V

    .line 1113
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1114
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 1074
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1077
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetDetail;->stopMediaPlayer()V

    .line 1087
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetDetail;->finish()V

    .line 1088
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 184
    invoke-direct {p0}, Lcom/htc/sdm/activity/SoundSetDetail;->abandonAudioFocus()V

    .line 185
    return-void
.end method

.method stopMediaPlayer()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->m_Player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->m_Player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 193
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->m_Player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetDetail;->m_Player:Landroid/media/MediaPlayer;

    .line 196
    :cond_0
    return-void
.end method
