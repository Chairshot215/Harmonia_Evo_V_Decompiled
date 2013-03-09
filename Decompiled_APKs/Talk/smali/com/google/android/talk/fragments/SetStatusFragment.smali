.class public Lcom/google/android/talk/fragments/SetStatusFragment;
.super Landroid/app/Fragment;
.source "SetStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;,
        Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;,
        Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;,
        Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;,
        Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;,
        Lcom/google/android/talk/fragments/SetStatusFragment$Host;,
        Lcom/google/android/talk/fragments/SetStatusFragment$Controller;
    }
.end annotation


# static fields
.field private static final PHOTO_DIR:Ljava/io/File;


# instance fields
.field private mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

.field private mActivity:Landroid/app/Activity;

.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mAsyncReadSettingsTask:Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;

.field private mAudioChatEnabled:Z

.field private mAvatarPicker:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

.field private mAvatarView:Landroid/widget/ImageView;

.field private mColumnAvatarData:I

.field private mConnectionStateListener:Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;

.field private mController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

.field private mCreated:Z

.field private mCustomStatusEditButton:Landroid/view/View;

.field private mCustomStatusHistoryButton:Landroid/widget/Button;

.field private mCustomStatusText:Landroid/widget/TextView;

.field private mEnabled:Z

.field mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mHaveAvatar:Z

.field private mImSession:Lcom/google/android/gtalkservice/IImSession;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mListenersRegistered:Z

.field private mOfflineWarning:Landroid/widget/TextView;

.field mOnActivityResultRunnable:Ljava/lang/Runnable;

.field private mPaused:Z

.field private mPendingAvatarUpdate:Landroid/graphics/Bitmap;

.field private mPendingAvatarUpdateDeleteMagic:Landroid/graphics/Bitmap;

.field private mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

.field mRoot:Landroid/view/View;

.field private mRosterListener:Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;

.field private mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

.field private mSettings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

.field private mStandardStatusButton:Landroid/widget/Button;

.field private mStandardStatusButtonBackground:Landroid/view/View;

.field private mUsername:Landroid/widget/TextView;

.field private mVideoChatEnabled:Z

.field mViewsToDisableWhenOffline:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1310
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/talk/fragments/SetStatusFragment;->PHOTO_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 404
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 135
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdateDeleteMagic:Landroid/graphics/Bitmap;

    .line 143
    iput-boolean v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mEnabled:Z

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mHandler:Landroid/os/Handler;

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mListenersRegistered:Z

    .line 1325
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$12;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$12;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 405
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "a"

    .prologue
    const/4 v1, 0x1

    .line 408
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 135
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdateDeleteMagic:Landroid/graphics/Bitmap;

    .line 143
    iput-boolean v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mEnabled:Z

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mHandler:Landroid/os/Handler;

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mListenersRegistered:Z

    .line 1325
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$12;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$12;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 409
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    .line 410
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->initialize()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->enableUI()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/talk/fragments/SetStatusFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mVideoChatEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/talk/fragments/SetStatusFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mVideoChatEnabled:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/google/android/talk/fragments/SetStatusFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAudioChatEnabled:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/google/android/talk/fragments/SetStatusFragment;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSettings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->clearStatusLists()V

    return-void
.end method

.method static synthetic access$1502(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdate:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->savePendingAvatarChanges()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAvatarPicker:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/TalkApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->disableUI()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/talk/fragments/SetStatusFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->uploadAvatar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/fragments/SetStatusFragment$Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/SetStatusFragment;->makeCustomStatusItems(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/SetStatusFragment;->makeDefaultStatusItems(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/talk/fragments/SetStatusFragment;Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/SetStatusFragment;->handlePresenceChoice(Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->saveStatusMessageIfChanged()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/android/talk/fragments/SetStatusFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mHaveAvatar:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->discardAvatar()V

    return-void
.end method

.method static synthetic access$2900()Ljava/io/File;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/google/android/talk/fragments/SetStatusFragment;->PHOTO_DIR:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/talk/fragments/SetStatusFragment;)Lcom/google/android/gtalkservice/IImSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/talk/fragments/SetStatusFragment;Lcom/google/android/gtalkservice/IImSession;)Lcom/google/android/gtalkservice/IImSession;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->initializeFromImSession()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->registerListeners()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/talk/fragments/SetStatusFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/SetStatusFragment;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->bindViews()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/talk/fragments/SetStatusFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->checkRunnable()V

    return-void
.end method

.method private asyncLoadSettings()V
    .locals 2

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->waitForAsyncTasksToComplete()V

    .line 550
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Lcom/google/android/talk/fragments/SetStatusFragment$1;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAsyncReadSettingsTask:Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;

    .line 551
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAsyncReadSettingsTask:Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 552
    return-void
.end method

.method private bindViews()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 1066
    iget-object v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mStandardStatusButton:Landroid/widget/Button;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v7, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    iget-object v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    if-eqz v7, :cond_0

    .line 1072
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1075
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1077
    .local v6, r:Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-static {v7}, Lcom/google/android/talk/util/PresenceUtils;->translatePresence(Lcom/google/android/gtalkservice/Presence;)I

    move-result v4

    .line 1078
    .local v4, mode:I
    iget-object v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mUsername:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 1079
    iget-object v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mUsername:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v9, v9, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    :cond_2
    iget-object v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v7, v4, v8}, Lcom/google/android/talk/TalkApp;->getStatusIcon(II)I

    move-result v5

    .line 1086
    .local v5, presence:I
    iget-object v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mStandardStatusButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v9, v9, Lcom/google/android/talk/TalkApp;->mDefaultStatusStrings:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    iget-object v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mStandardStatusButton:Landroid/widget/Button;

    const/4 v9, 0x6

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 1088
    iget-object v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mStandardStatusButton:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9, v10, v10, v10}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1094
    iget-object v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mStandardStatusButtonBackground:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 1095
    iget-object v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mStandardStatusButtonBackground:Landroid/view/View;

    iget-object v9, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v9, v4}, Lcom/google/android/talk/TalkApp;->getStatusColorId(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1098
    :cond_3
    const/4 v1, 0x0

    .line 1099
    .local v1, b:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdate:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdateDeleteMagic:Landroid/graphics/Bitmap;

    if-eq v7, v9, :cond_4

    .line 1100
    iget-object v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdate:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_5

    .line 1101
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdate:Landroid/graphics/Bitmap;

    .line 1108
    :cond_4
    :goto_1
    if-eqz v1, :cond_6

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mHaveAvatar:Z

    .line 1109
    iget-boolean v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mHaveAvatar:Z

    if-eqz v7, :cond_7

    .line 1110
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1115
    .local v0, avatar:Landroid/graphics/drawable/Drawable;
    :goto_3
    iget-object v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1117
    iget-object v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v9}, Lcom/google/android/gtalkservice/Presence;->getStatus()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1119
    iget-object v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v7}, Lcom/google/android/gtalkservice/Presence;->getDefaultStatusList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget-object v9, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v9}, Lcom/google/android/gtalkservice/Presence;->getDndStatusList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int v2, v7, v9

    .line 1123
    .local v2, customCount:I
    if-lez v2, :cond_8

    move v3, v8

    .line 1125
    .local v3, customVisible:I
    :goto_4
    iget-boolean v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mEnabled:Z

    if-eqz v7, :cond_0

    .line 1126
    iget-object v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusHistoryButton:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 1103
    .end local v0           #avatar:Landroid/graphics/drawable/Drawable;
    .end local v2           #customCount:I
    .end local v3           #customVisible:I
    :cond_5
    iget-object v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    iget v9, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mColumnAvatarData:I

    invoke-static {v7, v9}, Lcom/google/android/talk/DatabaseUtils;->getAvatarFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_6
    move v7, v8

    .line 1108
    goto :goto_2

    .line 1112
    :cond_7
    iget-object v7, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v7}, Lcom/google/android/talk/TalkApp;->getGenericAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatar:Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 1123
    .restart local v2       #customCount:I
    :cond_8
    const/16 v3, 0x8

    goto :goto_4
.end method

.method private checkRunnable()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mOnActivityResultRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mOnActivityResultRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mOnActivityResultRunnable:Ljava/lang/Runnable;

    .line 401
    :cond_0
    return-void
.end method

.method private clearStatusLists()V
    .locals 3

    .prologue
    .line 852
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    if-nez v1, :cond_0

    .line 861
    :goto_0
    return-void

    .line 855
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence;->clearStatusLists()V

    .line 856
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->setPresence(Lcom/google/android/gtalkservice/Presence;)V

    .line 857
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->initializeFromImSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "talk"

    const-string v2, "RemoteException failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private disableUI()V
    .locals 7

    .prologue
    .line 161
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mConnectionStateListener:Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;

    monitor-enter v5

    .line 162
    :try_start_0
    iget-boolean v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mEnabled:Z

    if-nez v4, :cond_0

    .line 163
    monitor-exit v5

    .line 180
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPaused:Z

    if-eqz v4, :cond_2

    .line 167
    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 170
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mViewsToDisableWhenOffline:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 171
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_3

    .line 172
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 170
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 175
    .end local v3           #v:Landroid/view/View;
    :cond_4
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mOfflineWarning:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusHistoryButton:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mEnabled:Z

    .line 179
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private discardAvatar()V
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdateDeleteMagic:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdate:Landroid/graphics/Bitmap;

    .line 1030
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->bindViews()V

    .line 1033
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->savePendingAvatarChanges()V

    .line 1034
    return-void
.end method

.method private enableUI()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 184
    iget-boolean v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mEnabled:Z

    if-eqz v4, :cond_0

    .line 198
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mViewsToDisableWhenOffline:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 189
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 190
    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 188
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 193
    .end local v3           #v:Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mOfflineWarning:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusHistoryButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 196
    iput-boolean v6, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mEnabled:Z

    .line 197
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->initialize()V

    goto :goto_0
.end method

.method private getCapabilities()I
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSettings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSettings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getCapabilities()I

    move-result v0

    goto :goto_0
.end method

.method public static getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x60

    const/4 v3, 0x1

    .line 1276
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1277
    const-string v1, "image/*"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1278
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1279
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1280
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1281
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1282
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1283
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1284
    return-object v0
.end method

.method public static getPhotoPickIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    const/16 v4, 0x60

    const/4 v3, 0x1

    .line 1291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1292
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1293
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1294
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1295
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1296
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1297
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1298
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1299
    return-object v0
.end method

.method public static getTakePickIntent(Ljava/io/File;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 1306
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1307
    const-string v1, "output"

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1308
    return-object v0
.end method

.method private handlePresenceChoice(Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 886
    const/4 v0, 0x0

    .line 888
    .local v0, p:Lcom/google/android/gtalkservice/Presence;
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    .line 889
    if-nez v0, :cond_0

    .line 929
    :goto_0
    return-void

    .line 896
    :cond_0
    iget-object v2, p1, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 897
    iget-object v2, p1, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 927
    :catch_0
    move-exception v2

    goto :goto_0

    .line 901
    :cond_1
    iget-object v1, p1, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mShow:Lcom/google/android/gtalkservice/Presence$Show;

    .line 902
    .local v1, show:Lcom/google/android/gtalkservice/Presence$Show;
    iget-boolean v2, p1, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mInvisible:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gtalkservice/Presence;->setInvisible(Z)Z

    .line 904
    sget-object v2, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    if-ne v1, v2, :cond_2

    .line 905
    sget-object v1, Lcom/google/android/gtalkservice/Presence$Show;->AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

    .line 907
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gtalkservice/Presence;->setAvailable(Z)V

    .line 909
    iget-boolean v2, p1, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mCustomPresence:Z

    if-eqz v2, :cond_3

    .line 910
    iget-object v2, p1, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gtalkservice/Presence;->setStatus(Lcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;)V

    .line 919
    :goto_1
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getCapabilities()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gtalkservice/Presence;->setCapabilities(I)V

    .line 920
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v2, v0}, Lcom/google/android/gtalkservice/IImSession;->setPresence(Lcom/google/android/gtalkservice/Presence;)V

    .line 921
    iget-boolean v2, p1, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mCustomPresence:Z

    if-eqz v2, :cond_4

    .line 922
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->mStatus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    :goto_2
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->savePendingAvatarChanges()V

    goto :goto_0

    .line 913
    :cond_3
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gtalkservice/Presence;->setStatus(Lcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;)V

    goto :goto_1

    .line 924
    :cond_4
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private initViews()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 965
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f10000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAvatarView:Landroid/widget/ImageView;

    .line 966
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f10000f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mStandardStatusButton:Landroid/widget/Button;

    .line 967
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f100091

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mStandardStatusButtonBackground:Landroid/view/View;

    .line 968
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f10008c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;

    .line 969
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f10008e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusHistoryButton:Landroid/widget/Button;

    .line 970
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f10008d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusEditButton:Landroid/view/View;

    .line 971
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f10008f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mOfflineWarning:Landroid/widget/TextView;

    .line 972
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    const v2, 0x7f10001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mUsername:Landroid/widget/TextView;

    .line 974
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAvatarView:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mStandardStatusButton:Landroid/widget/Button;

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusEditButton:Landroid/view/View;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusHistoryButton:Landroid/widget/Button;

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mViewsToDisableWhenOffline:[Landroid/view/View;

    .line 982
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mStandardStatusButton:Landroid/widget/Button;

    invoke-direct {p0, v1, v4}, Lcom/google/android/talk/fragments/SetStatusFragment;->setupPresencePopdown(Landroid/view/View;Z)V

    .line 983
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusHistoryButton:Landroid/widget/Button;

    invoke-direct {p0, v1, v5}, Lcom/google/android/talk/fragments/SetStatusFragment;->setupPresencePopdown(Landroid/view/View;Z)V

    .line 985
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$9;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$9;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    .line 1011
    .local v0, listener:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusEditButton:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusEditButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1014
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;

    instance-of v1, v1, Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 1015
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1019
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAvatarView:Landroid/widget/ImageView;

    new-instance v2, Lcom/google/android/talk/fragments/SetStatusFragment$10;

    invoke-direct {v2, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$10;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1025
    return-void
.end method

.method private initialize()V
    .locals 5

    .prologue
    .line 343
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$1;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    .line 369
    .local v0, initializer:Lcom/google/android/talk/SessionAvailableRunnable;
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/talk/TalkApp;->addImSessionAvailableCallback(Landroid/os/Handler;JLcom/google/android/talk/SessionAvailableRunnable;)V

    .line 370
    return-void
.end method

.method private initializeFromImSession()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1038
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    .line 1039
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v1}, Lcom/google/android/gtalkservice/IImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    :goto_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    if-eqz v1, :cond_0

    .line 1045
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    invoke-virtual {v1}, Lcom/google/android/talk/SelfStatusCursor;->close()V

    .line 1046
    iput-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    .line 1049
    :cond_0
    new-instance v1, Lcom/google/android/talk/SelfStatusCursor;

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/talk/SelfStatusCursor;-><init>(Landroid/app/Activity;Lcom/google/android/gtalkservice/Presence;Lcom/google/android/talk/TalkApp$AccountInfo;)V

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    .line 1050
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    const-string v2, "avatars_data"

    invoke-virtual {v1, v2}, Lcom/google/android/talk/SelfStatusCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mColumnAvatarData:I

    .line 1051
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mSelfCursor:Lcom/google/android/talk/SelfStatusCursor;

    new-instance v2, Lcom/google/android/talk/fragments/SetStatusFragment$11;

    invoke-direct {v2, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$11;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    invoke-virtual {v1, v2}, Lcom/google/android/talk/SelfStatusCursor;->setOnAvatarRunnable(Ljava/lang/Runnable;)V

    .line 1060
    return-void

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "talk"

    const-string v2, "unable to get presence"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1042
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    invoke-interface {v1}, Lcom/google/android/talk/fragments/SetStatusFragment$Controller;->finish()V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1320
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SetStatusFragment."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    return-void
.end method

.method private makeAdapter(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/widget/ArrayAdapter;
    .locals 8
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;",
            ">;)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 687
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;>;"
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 689
    .local v6, inflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$4;

    const v3, 0x7f04003c

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/talk/fragments/SetStatusFragment$4;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/content/Context;ILjava/util/List;Ljava/util/ArrayList;Landroid/view/LayoutInflater;Landroid/content/Context;)V

    return-object v0
.end method

.method private makeCustomStatusItems(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 17
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    move-object/from16 v16, v0

    .line 768
    .local v16, p:Lcom/google/android/gtalkservice/Presence;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .local v14, dropDownItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;>;"
    if-eqz v16, :cond_1

    .line 771
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gtalkservice/Presence;->getDefaultStatusList()Ljava/util/List;

    move-result-object v12

    .line 772
    .local v12, defaultStatusList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_0

    .line 773
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 774
    .local v4, status:Ljava/lang/String;
    new-instance v2, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;

    sget-object v5, Lcom/google/android/gtalkservice/Presence$Show;->AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/google/android/talk/TalkApp;->getStatusIcon(II)I

    move-result v7

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Ljava/lang/String;Lcom/google/android/gtalkservice/Presence$Show;ZIZ)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 783
    .end local v4           #status:Ljava/lang/String;
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gtalkservice/Presence;->getDndStatusList()Ljava/util/List;

    move-result-object v13

    .line 784
    .local v13, dndStatusList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v13, :cond_1

    .line 785
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 786
    .restart local v4       #status:Ljava/lang/String;
    new-instance v2, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;

    sget-object v5, Lcom/google/android/gtalkservice/Presence$Show;->DND:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/google/android/talk/TalkApp;->getStatusIcon(II)I

    move-result v7

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Ljava/lang/String;Lcom/google/android/gtalkservice/Presence$Show;ZIZ)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 796
    .end local v4           #status:Ljava/lang/String;
    .end local v12           #defaultStatusList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v13           #dndStatusList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_1
    new-instance v5, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c0026

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Ljava/lang/String;Lcom/google/android/gtalkservice/Presence$Show;ZIZ)V

    .line 802
    .local v5, clearStatusItem:Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;
    new-instance v2, Lcom/google/android/talk/fragments/SetStatusFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/talk/fragments/SetStatusFragment$6;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    invoke-virtual {v5, v2}, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->setClickRunnable(Ljava/lang/Runnable;)V

    .line 808
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/google/android/talk/fragments/SetStatusFragment;->makeAdapter(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    return-object v2
.end method

.method private makeDefaultStatusItems(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 14
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 713
    iget-object v13, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    .line 714
    .local v13, p:Lcom/google/android/gtalkservice/Presence;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v12, dropDownItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;>;"
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gtalkservice/Presence$Show;->AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;

    const/4 v5, 0x5

    invoke-virtual {v1, v5, v4}, Lcom/google/android/talk/TalkApp;->getStatusIcon(II)I

    move-result v5

    move-object v1, p0

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Ljava/lang/String;Lcom/google/android/gtalkservice/Presence$Show;ZIZ)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gtalkservice/Presence$Show;->DND:Lcom/google/android/gtalkservice/Presence$Show;

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;

    const/4 v5, 0x4

    invoke-virtual {v1, v5, v4}, Lcom/google/android/talk/TalkApp;->getStatusIcon(II)I

    move-result v5

    move-object v1, p0

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Ljava/lang/String;Lcom/google/android/gtalkservice/Presence$Show;ZIZ)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    new-instance v5, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0005

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/android/gtalkservice/Presence$Show;->AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1, v9, v4}, Lcom/google/android/talk/TalkApp;->getStatusIcon(II)I

    move-result v10

    move-object v6, p0

    move v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Ljava/lang/String;Lcom/google/android/gtalkservice/Presence$Show;ZIZ)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    move-object v1, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Ljava/lang/String;Lcom/google/android/gtalkservice/Presence$Show;ZIZ)V

    .line 747
    .local v0, signout:Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;
    new-instance v1, Lcom/google/android/talk/fragments/SetStatusFragment$5;

    invoke-direct {v1, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$5;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;->setClickRunnable(Ljava/lang/Runnable;)V

    .line 761
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    invoke-direct {p0, p1, v12}, Lcom/google/android/talk/fragments/SetStatusFragment;->makeAdapter(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    return-object v1
.end method

.method private registerForIntentBroadcast()V
    .locals 3

    .prologue
    .line 1345
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mFilter:Landroid/content/IntentFilter;

    .line 1346
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.GTALK_AVATAR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1348
    return-void
.end method

.method private registerListeners()V
    .locals 2

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mListenersRegistered:Z

    if-nez v0, :cond_2

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mConnectionStateListener:Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mConnectionStateListener:Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;

    .line 307
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mConnectionStateListener:Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRosterListener:Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;

    if-nez v0, :cond_1

    .line 310
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRosterListener:Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;

    .line 311
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRosterListener:Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->addRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 313
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mListenersRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_2
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private savePendingAvatarChanges()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 815
    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdate:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 816
    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdate:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdateDeleteMagic:Landroid/graphics/Bitmap;

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 817
    .local v1, delete:Z
    :goto_0
    if-eqz v1, :cond_2

    move-object v0, v2

    .line 818
    .local v0, avatar:Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v1, :cond_0

    .line 819
    iput-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdate:Landroid/graphics/Bitmap;

    .line 821
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/google/android/talk/fragments/SetStatusFragment$7;

    invoke-direct {v3, p0, v0}, Lcom/google/android/talk/fragments/SetStatusFragment$7;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/graphics/Bitmap;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 848
    .end local v0           #avatar:Landroid/graphics/Bitmap;
    .end local v1           #delete:Z
    :goto_2
    return-void

    .line 816
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 817
    .restart local v1       #delete:Z
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingAvatarUpdate:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 846
    .end local v1           #delete:Z
    :cond_3
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->bindViews()V

    goto :goto_2
.end method

.method private saveStatusMessageIfChanged()V
    .locals 6

    .prologue
    .line 864
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v4}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 870
    .local v2, newStatus:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v4}, Lcom/google/android/gtalkservice/Presence;->getStatus()Ljava/lang/String;

    move-result-object v3

    .line 871
    .local v3, oldStatus:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 872
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v4}, Lcom/google/android/gtalkservice/Presence;->getShow()Lcom/google/android/gtalkservice/Presence$Show;

    move-result-object v1

    .line 873
    .local v1, newShow:Lcom/google/android/gtalkservice/Presence$Show;
    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    sget-object v4, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    if-eq v1, v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Lcom/google/android/gtalkservice/Presence;->setAvailable(Z)V

    .line 874
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gtalkservice/Presence;->setStatus(Lcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;)V

    .line 876
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v5, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPendingPresenceUpdate:Lcom/google/android/gtalkservice/Presence;

    invoke-interface {v4, v5}, Lcom/google/android/gtalkservice/IImSession;->setPresence(Lcom/google/android/gtalkservice/Presence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :goto_2
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->savePendingAvatarChanges()V

    goto :goto_0

    .line 873
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 877
    :catch_0
    move-exception v0

    .line 878
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "talk"

    const-string v5, "RemoteException failure"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private setupPresencePopdown(Landroid/view/View;Z)V
    .locals 1
    .parameter "anchor"
    .parameter "custom"

    .prologue
    .line 932
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/talk/fragments/SetStatusFragment$8;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;ZLandroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 960
    return-void
.end method

.method private unregisterForIntentBroadcast()V
    .locals 2

    .prologue
    .line 1351
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1352
    return-void
.end method

.method private unregisterListeners()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_2

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mConnectionStateListener:Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mConnectionStateListener:Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->removeConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    .line 324
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mConnectionStateListener:Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->clearRefs()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mConnectionStateListener:Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRosterListener:Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRosterListener:Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IImSession;->removeRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 329
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRosterListener:Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;->clearRefs()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRosterListener:Lcom/google/android/talk/fragments/SetStatusFragment$RosterListener;

    .line 332
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mListenersRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_2
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private uploadAvatar()Z
    .locals 3

    .prologue
    .line 601
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v1}, Lcom/google/android/gtalkservice/IImSession;->uploadAvatarFromDb()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "talk"

    const-string v2, "RemoteException failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private waitForAsyncReadSettingsToComplete()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAsyncReadSettingsTask:Lcom/google/android/talk/fragments/SetStatusFragment$ReadSettingsTask;

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->waitForAsyncTaskToComplete(Landroid/os/AsyncTask;)V

    .line 533
    return-void
.end method

.method private waitForAsyncTaskToComplete(Landroid/os/AsyncTask;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    if-eqz p1, :cond_0

    .line 524
    :try_start_0
    invoke-virtual {p1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Talk"

    const-string v2, "SetStatusFragment.waitForAsyncTaskToComplete get error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private waitForAsyncTasksToComplete()V
    .locals 0

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->waitForAsyncReadSettingsToComplete()V

    .line 541
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 618
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$3;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/google/android/talk/fragments/SetStatusFragment$3;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;IILandroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mOnActivityResultRunnable:Ljava/lang/Runnable;

    .line 639
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->checkRunnable()V

    .line 640
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 374
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    const-string v1, "onAttach"

    invoke-direct {p0, v1}, Lcom/google/android/talk/fragments/SetStatusFragment;->log(Ljava/lang/String;)V

    .line 377
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 379
    check-cast v0, Lcom/google/android/talk/fragments/SetStatusFragment$Host;

    .line 381
    .local v0, host:Lcom/google/android/talk/fragments/SetStatusFragment$Host;
    invoke-interface {v0}, Lcom/google/android/talk/fragments/SetStatusFragment$Host;->getSetStatusController()Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mController:Lcom/google/android/talk/fragments/SetStatusFragment$Controller;

    .line 382
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    .line 384
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->checkRunnable()V

    .line 385
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 422
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 423
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    const v3, 0x7f10008a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 424
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 425
    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 426
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 432
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 415
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;

    .line 416
    new-instance v0, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    invoke-direct {v0, p0, p1}, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAvatarPicker:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCreated:Z

    .line 418
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 492
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    const v0, 0x7f04003a

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    .line 497
    :goto_0
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->initViews()V

    .line 498
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    return-object v0

    .line 495
    :cond_0
    const v0, 0x7f04003b

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mRoot:Landroid/view/View;

    goto :goto_0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .parameter "hidden"

    .prologue
    .line 1356
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 1357
    if-eqz p1, :cond_0

    .line 1358
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->saveStatusMessageIfChanged()V

    .line 1360
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 560
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mPaused:Z

    .line 563
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAvatarPicker:Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/fragments/SetStatusFragment$AvatarPicker;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1133
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 503
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 505
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;

    invoke-interface {v0}, Lcom/google/android/talk/fragments/BuddyListFragment$BuddyListHost;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 507
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->asyncLoadSettings()V

    .line 509
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->initialize()V

    .line 510
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->registerForIntentBroadcast()V

    .line 512
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->checkRunnable()V

    .line 513
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 567
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 568
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->saveStatusMessageIfChanged()V

    .line 569
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->unregisterListeners()V

    .line 570
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->unregisterForIntentBroadcast()V

    .line 571
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/google/android/talk/TalkApp;->removeImSessionAvailableCallback(Landroid/os/Handler;)V

    .line 579
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 581
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCustomStatusText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 582
    return-void
.end method

.method public switchAccounts(Lcom/google/android/talk/TalkApp$AccountInfo;)V
    .locals 1
    .parameter "accountInfo"

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mCreated:Z

    if-nez v0, :cond_1

    .line 436
    const-string v0, "switchAccounts: fragment\'s onCreate not called yet"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->log(Ljava/lang/String;)V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->unregisterListeners()V

    .line 441
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 442
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    const-string v0, "switchAccounts: mActivity is NULL"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->waitForAsyncTasksToComplete()V

    .line 453
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 454
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->asyncLoadSettings()V

    .line 455
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->initialize()V

    .line 456
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SetStatusFragment;->initViews()V

    goto :goto_0
.end method
