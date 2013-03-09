.class public Lcom/android/htccontacts/PeopleApp;
.super Landroid/app/Application;
.source "PeopleApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/PeopleApp$BrowserLayerCarouselBroadcastReceiver;,
        Lcom/android/htccontacts/PeopleApp$QueryHandler;,
        Lcom/android/htccontacts/PeopleApp$AllPeopleChangeObserver;,
        Lcom/android/htccontacts/PeopleApp$PrepareHandler;
    }
.end annotation


# static fields
.field private static final ACTION_SUBSCRIBE_PRESENCE_HTC_VENDOR:Ljava/lang/String; = "com.android.contacts.im.VoIP.SYNC"

.field private static final ACTION_SUBSCRIBE_PRESENCE_QIK:Ljava/lang/String; = "com.qik.android.subscribe.presence"

.field private static final ACTION_SUBSCRIBE_PRESENCE_SKYPE:Ljava/lang/String; = "com.android.contacts.im.skype.SYNC"

.field private static final ACTION_UNSUBSCRIBE_PRESENCE_QIK:Ljava/lang/String; = "com.qik.android.unsubscribe.presence"

.field private static final DEBUG:Z = true

#the value of this static final field might be set in the static constructor
.field private static final ENALBE_PREINFLATE:Z = false

.field private static final MSG_ALL_PEOPLE_PRECURSOR_REQUERY:I = 0x1001111

.field private static final MSG_PRE_INFLATE:I = 0x101

.field private static final MSG_SUBSCRIBE_PRESENCE:I = 0x2710

.field private static final MSG_UNSUBSCRIBE_PRESENCE:I = 0x2711

.field private static final TAG:Ljava/lang/String; = "PeopleApp"

.field private static final TOKEN_QUERY_ALL_PEOPLE_CURSOR:I = 0x1

.field private static mIsNaviOn:Z

.field private static sMe:Lcom/android/htccontacts/PeopleApp;

.field private static sProcessName:Ljava/lang/String;


# instance fields
.field private final ACTION_LOCATIONS_NAVI_ON:Ljava/lang/String;

.field private final IS_NAVI_ON:Ljava/lang/String;

.field public hasSubscribedPresenceService:Z

.field private isObtainingAllContactPreView:Z

.field private isObtainingTabPreView:Z

.field private mAccountTypeManager:Lcom/android/htccontacts/model/AccountTypeManager;

.field private mAllPeopleChangeObserver:Lcom/android/htccontacts/PeopleApp$AllPeopleChangeObserver;

.field private mAllPeopleCursor:Landroid/database/Cursor;

.field private mContactPhotoManager:Lcom/android/htccontacts/ContactPhotoManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentConfiguration:Landroid/content/res/Configuration;

.field private mDialerSrv:Lcom/htc/service/dialer/IDialerService;

.field private mFrequencyObservable:Lcom/android/htccontacts/group/FrequencyObservable;

.field private mHandler:Lcom/android/htccontacts/PeopleApp$PrepareHandler;

.field private mIsTerminating:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field public mMimetypeSupport:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPeopleIcon:Landroid/graphics/drawable/Drawable;

.field private mPreInflatedAllContactListView:Landroid/view/View;

.field private mPreInflatedTabLayoutView:Landroid/view/View;

.field protected mQueryAllPeople:Landroid/os/MessageQueue$IdleHandler;

.field private mQueryHandler:Lcom/android/htccontacts/PeopleApp$QueryHandler;

.field private mQuickContactClass:Ljava/lang/Class;

.field protected mReQueryAllPeople:Landroid/os/MessageQueue$IdleHandler;

.field private mReceiver:Lcom/android/htccontacts/PeopleApp$BrowserLayerCarouselBroadcastReceiver;

.field private mSrvConn:Landroid/content/ServiceConnection;

.field private mUiModeObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private preInflatedViewValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 101
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x39

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/htccontacts/PeopleApp;->ENALBE_PREINFLATE:Z

    .line 131
    sput-boolean v1, Lcom/android/htccontacts/PeopleApp;->mIsNaviOn:Z

    return-void

    :cond_1
    move v0, v1

    .line 101
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 404
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mUiModeObserver:Ljava/util/ArrayList;

    .line 129
    const-string v0, "com.htc.laputa.HtcNavi.action.LOCATIONS_NAVI_ON"

    iput-object v0, p0, Lcom/android/htccontacts/PeopleApp;->ACTION_LOCATIONS_NAVI_ON:Ljava/lang/String;

    .line 130
    const-string v0, "isNaviOn"

    iput-object v0, p0, Lcom/android/htccontacts/PeopleApp;->IS_NAVI_ON:Ljava/lang/String;

    .line 251
    new-instance v0, Lcom/android/htccontacts/PeopleApp$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/PeopleApp$1;-><init>(Lcom/android/htccontacts/PeopleApp;)V

    iput-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mReQueryAllPeople:Landroid/os/MessageQueue$IdleHandler;

    .line 312
    new-instance v0, Lcom/android/htccontacts/PeopleApp$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/PeopleApp$2;-><init>(Lcom/android/htccontacts/PeopleApp;)V

    iput-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mQueryAllPeople:Landroid/os/MessageQueue$IdleHandler;

    .line 753
    iput-object v1, p0, Lcom/android/htccontacts/PeopleApp;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    .line 754
    iput-object v1, p0, Lcom/android/htccontacts/PeopleApp;->mSrvConn:Landroid/content/ServiceConnection;

    .line 406
    const-string v0, "PeopleApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PeopleApp constructed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    sput-object p0, Lcom/android/htccontacts/PeopleApp;->sMe:Lcom/android/htccontacts/PeopleApp;

    .line 409
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/PeopleApp;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mPreInflatedTabLayoutView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/PeopleApp;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mPreInflatedAllContactListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/PeopleApp;)Lcom/android/htccontacts/PeopleApp$AllPeopleChangeObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mAllPeopleChangeObserver:Lcom/android/htccontacts/PeopleApp$AllPeopleChangeObserver;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/htccontacts/PeopleApp;Lcom/android/htccontacts/PeopleApp$AllPeopleChangeObserver;)Lcom/android/htccontacts/PeopleApp$AllPeopleChangeObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/htccontacts/PeopleApp;->mAllPeopleChangeObserver:Lcom/android/htccontacts/PeopleApp$AllPeopleChangeObserver;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/htccontacts/PeopleApp;Lcom/htc/service/dialer/IDialerService;)Lcom/htc/service/dialer/IDialerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/htccontacts/PeopleApp;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    return-object p1
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-boolean p0, Lcom/android/htccontacts/PeopleApp;->mIsNaviOn:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/PeopleApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/htccontacts/PeopleApp;->preInflateTabLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/htccontacts/PeopleApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/htccontacts/PeopleApp;->mIsTerminating:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/PeopleApp;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mAllPeopleCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/htccontacts/PeopleApp;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/htccontacts/PeopleApp;->mAllPeopleCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/htccontacts/PeopleApp;)Lcom/android/htccontacts/PeopleApp$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mQueryHandler:Lcom/android/htccontacts/PeopleApp$QueryHandler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/htccontacts/PeopleApp;Lcom/android/htccontacts/PeopleApp$QueryHandler;)Lcom/android/htccontacts/PeopleApp$QueryHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/htccontacts/PeopleApp;->mQueryHandler:Lcom/android/htccontacts/PeopleApp$QueryHandler;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/htccontacts/PeopleApp;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Lcom/android/htccontacts/PeopleApp;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/htccontacts/PeopleApp;->sMe:Lcom/android/htccontacts/PeopleApp;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/htccontacts/PeopleApp;->sProcessName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-object p0, Lcom/android/htccontacts/PeopleApp;->sProcessName:Ljava/lang/String;

    return-object p0
.end method

.method private bindDialerService()V
    .locals 4

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mSrvConn:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 758
    new-instance v0, Lcom/android/htccontacts/PeopleApp$4;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/PeopleApp$4;-><init>(Lcom/android/htccontacts/PeopleApp;)V

    iput-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mSrvConn:Landroid/content/ServiceConnection;

    .line 774
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.htcdialer.DialerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/htccontacts/PeopleApp;->mSrvConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    const-string v0, "PeopleApp"

    const-string v1, "bind DialerService fail !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/htccontacts/PeopleApp;
    .locals 1

    .prologue
    .line 391
    sget-object v0, Lcom/android/htccontacts/PeopleApp;->sMe:Lcom/android/htccontacts/PeopleApp;

    return-object v0
.end method

.method public static isDockMode(Landroid/content/res/Configuration;)Z
    .locals 2
    .parameter "config"

    .prologue
    const/4 v0, 0x1

    .line 837
    sget-boolean v1, Lcom/android/htccontacts/PeopleApp;->mIsNaviOn:Z

    if-nez v1, :cond_0

    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    if-eq v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private preInflateTabLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 567
    sget-boolean v0, Lcom/android/htccontacts/PeopleApp;->ENALBE_PREINFLATE:Z

    if-nez v0, :cond_0

    .line 577
    :goto_0
    return-void

    .line 570
    :cond_0
    const-string v0, "PeopleApp"

    const-string v1, "preInflateTabLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x20900b2

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mPreInflatedTabLayoutView:Landroid/view/View;

    .line 575
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030006

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mPreInflatedAllContactListView:Landroid/view/View;

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/PeopleApp;->preInflatedViewValid:Z

    goto :goto_0
.end method

.method private requestOrientation()I
    .locals 3

    .prologue
    .line 821
    invoke-virtual {p0}, Lcom/android/htccontacts/PeopleApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/android/htccontacts/PeopleApp;->isDockMode(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    const/4 v0, 0x4

    .line 832
    .local v0, orientation:I
    :goto_0
    return v0

    .line 825
    .end local v0           #orientation:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/PeopleApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 826
    const/4 v0, 0x5

    .restart local v0       #orientation:I
    goto :goto_0

    .line 829
    .end local v0           #orientation:I
    :cond_1
    const/4 v0, 0x1

    .restart local v0       #orientation:I
    goto :goto_0
.end method

.method private setupScreenOreitation()Z
    .locals 4

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/android/htccontacts/PeopleApp;->requestOrientation()I

    move-result v2

    .line 622
    .local v2, orientation:I
    iget-object v3, p0, Lcom/android/htccontacts/PeopleApp;->mUiModeObserver:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 623
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 624
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 625
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 628
    :cond_1
    const/4 v3, 0x0

    .line 631
    .end local v0           #activity:Landroid/app/Activity;
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private setupScreenOreitation(Landroid/app/Activity;I)Z
    .locals 1
    .parameter "activity"
    .parameter "orientation"

    .prologue
    .line 635
    if-nez p1, :cond_0

    .line 636
    const/4 v0, 0x0

    .line 640
    :goto_0
    return v0

    .line 638
    :cond_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 640
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public actionSubscribePresence()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/PeopleApp;->actionSubscribePresence(Z)V

    .line 137
    return-void
.end method

.method public actionSubscribePresence(Z)V
    .locals 3
    .parameter "force"

    .prologue
    const/16 v1, 0x2711

    const/16 v2, 0x2710

    .line 141
    if-nez p1, :cond_3

    .line 142
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mHandler:Lcom/android/htccontacts/PeopleApp$PrepareHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/PeopleApp$PrepareHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mHandler:Lcom/android/htccontacts/PeopleApp$PrepareHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/PeopleApp$PrepareHandler;->removeMessages(I)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mHandler:Lcom/android/htccontacts/PeopleApp$PrepareHandler;

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/PeopleApp$PrepareHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/htccontacts/PeopleApp;->hasSubscribedPresenceService:Z

    if-eq v0, v1, :cond_1

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mHandler:Lcom/android/htccontacts/PeopleApp$PrepareHandler;

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/PeopleApp$PrepareHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public actionUnsubscribePresence()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/PeopleApp;->actionUnsubscribePresence(Z)V

    .line 158
    return-void
.end method

.method public actionUnsubscribePresence(Z)V
    .locals 4
    .parameter "force"

    .prologue
    const/16 v3, 0x2711

    const/16 v1, 0x2710

    .line 161
    if-nez p1, :cond_3

    .line 162
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mHandler:Lcom/android/htccontacts/PeopleApp$PrepareHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/PeopleApp$PrepareHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mHandler:Lcom/android/htccontacts/PeopleApp$PrepareHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/PeopleApp$PrepareHandler;->removeMessages(I)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mHandler:Lcom/android/htccontacts/PeopleApp$PrepareHandler;

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/PeopleApp$PrepareHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    :cond_1
    :goto_0
    return-void

    .line 169
    :cond_2
    iget-boolean v0, p0, Lcom/android/htccontacts/PeopleApp;->hasSubscribedPresenceService:Z

    if-eqz v0, :cond_1

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mHandler:Lcom/android/htccontacts/PeopleApp$PrepareHandler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/htccontacts/PeopleApp$PrepareHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public getAllPeopleCursor()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mAllPeopleCursor:Landroid/database/Cursor;

    .line 396
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 397
    const-string v1, "PeopleApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use preloaded all people cursor - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v1, p0, Lcom/android/htccontacts/PeopleApp;->mAllPeopleChangeObserver:Lcom/android/htccontacts/PeopleApp$AllPeopleChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 400
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/htccontacts/PeopleApp;->mAllPeopleCursor:Landroid/database/Cursor;

    .line 401
    return-object v0
.end method

.method public getDialerSrvContactInfo(J)Lcom/htc/service/dialer/ContactData;
    .locals 6
    .parameter "contactId"

    .prologue
    .line 782
    const/4 v0, 0x0

    .line 784
    .local v0, bFakeInput:Z
    const/4 v1, 0x0

    .line 786
    .local v1, data:Lcom/htc/service/dialer/ContactData;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 787
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 789
    if-eqz v0, :cond_0

    .line 790
    :try_start_0
    iget-object v4, p0, Lcom/android/htccontacts/PeopleApp;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    const-string v5, "0955888666"

    invoke-interface {v4, v5}, Lcom/htc/service/dialer/IDialerService;->getContactData(Ljava/lang/String;)Lcom/htc/service/dialer/ContactData;

    move-result-object v1

    .line 797
    :goto_0
    return-object v1

    .line 792
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/PeopleApp;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/htc/service/dialer/IDialerService;->getContactData(Ljava/lang/String;)Lcom/htc/service/dialer/ContactData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 794
    :catch_0
    move-exception v2

    .line 795
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getFrequencyObservable()Lcom/android/htccontacts/group/FrequencyObservable;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mFrequencyObservable:Lcom/android/htccontacts/group/FrequencyObservable;

    return-object v0
.end method

.method public getPeopleIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mPeopleIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPreInflatedAllContactLayout()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 597
    sget-boolean v2, Lcom/android/htccontacts/PeopleApp;->ENALBE_PREINFLATE:Z

    if-nez v2, :cond_0

    move-object v0, v1

    .line 610
    :goto_0
    return-object v0

    .line 600
    :cond_0
    iget-boolean v2, p0, Lcom/android/htccontacts/PeopleApp;->preInflatedViewValid:Z

    if-nez v2, :cond_1

    move-object v0, v1

    .line 601
    goto :goto_0

    .line 603
    :cond_1
    iget-boolean v2, p0, Lcom/android/htccontacts/PeopleApp;->isObtainingAllContactPreView:Z

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 604
    goto :goto_0

    .line 606
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mPreInflatedAllContactListView:Landroid/view/View;

    .line 607
    .local v0, returnView:Landroid/view/View;
    iput-object v1, p0, Lcom/android/htccontacts/PeopleApp;->mPreInflatedAllContactListView:Landroid/view/View;

    .line 608
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/PeopleApp;->isObtainingAllContactPreView:Z

    .line 609
    const-string v1, "PeopleApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreInflatedAllContactLayout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPreInflatedTabLayout()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 580
    sget-boolean v2, Lcom/android/htccontacts/PeopleApp;->ENALBE_PREINFLATE:Z

    if-nez v2, :cond_0

    move-object v0, v1

    .line 593
    :goto_0
    return-object v0

    .line 583
    :cond_0
    iget-boolean v2, p0, Lcom/android/htccontacts/PeopleApp;->preInflatedViewValid:Z

    if-nez v2, :cond_1

    move-object v0, v1

    .line 584
    goto :goto_0

    .line 586
    :cond_1
    iget-boolean v2, p0, Lcom/android/htccontacts/PeopleApp;->isObtainingTabPreView:Z

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 587
    goto :goto_0

    .line 589
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mPreInflatedTabLayoutView:Landroid/view/View;

    .line 590
    .local v0, returnView:Landroid/view/View;
    iput-object v1, p0, Lcom/android/htccontacts/PeopleApp;->mPreInflatedTabLayoutView:Landroid/view/View;

    .line 591
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/PeopleApp;->isObtainingTabPreView:Z

    .line 592
    const-string v1, "PeopleApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreInflatedTabLayout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getQuickContactClass()Ljava/lang/Class;
    .locals 3

    .prologue
    .line 701
    iget-object v1, p0, Lcom/android/htccontacts/PeopleApp;->mQuickContactClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 704
    :try_start_0
    const-string v1, "com.htc.widget.QuickContactBadge"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/PeopleApp;->mQuickContactClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 716
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/PeopleApp;->mQuickContactClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 719
    :try_start_1
    const-string v1, "android.widget.QuickContactBadge"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/PeopleApp;->mQuickContactClass:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 732
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/htccontacts/PeopleApp;->mQuickContactClass:Ljava/lang/Class;

    return-object v1

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v1, "PeopleApp"

    const-string v2, "com.htc.widget.QuickContactBadge not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 709
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 710
    .local v0, e:Ljava/lang/LinkageError;
    const-string v1, "PeopleApp"

    const-string v2, "com.htc.widget.QuickContactBadge linkage error"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 712
    .end local v0           #e:Ljava/lang/LinkageError;
    :catch_2
    move-exception v0

    .line 713
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PeopleApp"

    const-string v2, "com.htc.widget.QuickContactBadge Class.forName exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 721
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 722
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v1, "PeopleApp"

    const-string v2, "android.widget.QuickContactBadge not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 724
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_4
    move-exception v0

    .line 725
    .local v0, e:Ljava/lang/LinkageError;
    const-string v1, "PeopleApp"

    const-string v2, "android.QuickContactBadge linkage error"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 727
    .end local v0           #e:Ljava/lang/LinkageError;
    :catch_5
    move-exception v0

    .line 728
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PeopleApp"

    const-string v2, "android.QuickContactBadge Class.forName exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "name"

    .prologue
    .line 416
    const-string v0, "contactAccountTypes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mAccountTypeManager:Lcom/android/htccontacts/model/AccountTypeManager;

    if-nez v0, :cond_0

    .line 418
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->createAccountTypeManager(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mAccountTypeManager:Lcom/android/htccontacts/model/AccountTypeManager;

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mAccountTypeManager:Lcom/android/htccontacts/model/AccountTypeManager;

    .line 434
    :goto_0
    return-object v0

    .line 425
    :cond_1
    const-string v0, "contactPhotos"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 426
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mContactPhotoManager:Lcom/android/htccontacts/ContactPhotoManager;

    if-nez v0, :cond_2

    .line 427
    invoke-static {p0}, Lcom/android/htccontacts/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/htccontacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mContactPhotoManager:Lcom/android/htccontacts/ContactPhotoManager;

    .line 428
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mContactPhotoManager:Lcom/android/htccontacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactPhotoManager;->preloadPhotosInBackground()V

    .line 430
    :cond_2
    const-string v0, "PeopleApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemService mContactPhotoManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/PeopleApp;->mContactPhotoManager:Lcom/android/htccontacts/ContactPhotoManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mContactPhotoManager:Lcom/android/htccontacts/ContactPhotoManager;

    goto :goto_0

    .line 434
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isIntentSupported(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 3
    .parameter "mimetype"
    .parameter "intent"

    .prologue
    .line 738
    iget-object v1, p0, Lcom/android/htccontacts/PeopleApp;->mMimetypeSupport:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 739
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/htccontacts/PeopleApp;->mMimetypeSupport:Ljava/util/HashMap;

    .line 741
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/PeopleApp;->mMimetypeSupport:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 742
    iget-object v1, p0, Lcom/android/htccontacts/PeopleApp;->mMimetypeSupport:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 747
    :goto_0
    return v0

    .line 745
    :cond_1
    invoke-static {p0, p2}, Lcom/android/htccontacts/util/ContactsUtils;->isSupport(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 746
    .local v0, isSupport:Z
    iget-object v1, p0, Lcom/android/htccontacts/PeopleApp;->mMimetypeSupport:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public isTerminating()Z
    .locals 1

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/android/htccontacts/PeopleApp;->mIsTerminating:Z

    return v0
.end method

.method public notifyFrequencyConfigChange()V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mFrequencyObservable:Lcom/android/htccontacts/group/FrequencyObservable;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mFrequencyObservable:Lcom/android/htccontacts/group/FrequencyObservable;

    invoke-virtual {v0}, Lcom/android/htccontacts/group/FrequencyObservable;->notifyChanged()V

    .line 698
    :cond_0
    return-void
.end method

.method protected onAllPeopleContentChanged()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mAllPeopleCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mAllPeopleCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/PeopleApp;->mReQueryAllPeople:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 522
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "newConfig"

    .prologue
    const/16 v8, 0x101

    const/4 v5, 0x0

    .line 656
    invoke-static {}, Lcom/android/htccontacts/customize/CustomizeResource;->clearAllResourceCache()V

    .line 660
    invoke-direct {p0}, Lcom/android/htccontacts/PeopleApp;->setupScreenOreitation()Z

    .line 661
    iget-object v6, p0, Lcom/android/htccontacts/PeopleApp;->mUiModeObserver:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 662
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 663
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 666
    .end local v0           #activity:Landroid/app/Activity;
    :cond_1
    sget-boolean v6, Lcom/android/htccontacts/PeopleApp;->ENALBE_PREINFLATE:Z

    if-nez v6, :cond_3

    .line 688
    :cond_2
    :goto_1
    return-void

    .line 669
    :cond_3
    const/4 v2, 0x0

    .line 670
    .local v2, isLocaleChange:Z
    iget-object v6, p0, Lcom/android/htccontacts/PeopleApp;->mCurrentConfiguration:Landroid/content/res/Configuration;

    if-eqz v6, :cond_4

    if-eqz p1, :cond_4

    .line 671
    iget-object v6, p0, Lcom/android/htccontacts/PeopleApp;->mCurrentConfiguration:Landroid/content/res/Configuration;

    iget-object v4, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 672
    .local v4, oldLocale:Ljava/util/Locale;
    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 673
    .local v3, newLocale:Ljava/util/Locale;
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 674
    invoke-virtual {v4, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v2, 0x1

    .line 677
    .end local v3           #newLocale:Ljava/util/Locale;
    .end local v4           #oldLocale:Ljava/util/Locale;
    :cond_4
    :goto_2
    iput-object p1, p0, Lcom/android/htccontacts/PeopleApp;->mCurrentConfiguration:Landroid/content/res/Configuration;

    .line 678
    if-eqz v2, :cond_2

    .line 681
    iget-boolean v6, p0, Lcom/android/htccontacts/PeopleApp;->isObtainingAllContactPreView:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/htccontacts/PeopleApp;->isObtainingTabPreView:Z

    if-nez v6, :cond_2

    .line 684
    :cond_5
    iput-boolean v5, p0, Lcom/android/htccontacts/PeopleApp;->preInflatedViewValid:Z

    .line 685
    iget-object v5, p0, Lcom/android/htccontacts/PeopleApp;->mHandler:Lcom/android/htccontacts/PeopleApp$PrepareHandler;

    invoke-virtual {v5, v8}, Lcom/android/htccontacts/PeopleApp$PrepareHandler;->removeMessages(I)V

    .line 686
    iget-object v5, p0, Lcom/android/htccontacts/PeopleApp;->mHandler:Lcom/android/htccontacts/PeopleApp$PrepareHandler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/htccontacts/PeopleApp$PrepareHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 687
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_1

    .restart local v3       #newLocale:Ljava/util/Locale;
    .restart local v4       #oldLocale:Ljava/util/Locale;
    :cond_6
    move v2, v5

    .line 674
    goto :goto_2
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 439
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 440
    iput-boolean v3, p0, Lcom/android/htccontacts/PeopleApp;->mIsTerminating:Z

    .line 443
    :try_start_0
    const-string v3, "com.android.htccontacts"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/htccontacts/PeopleApp;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/PeopleApp;->mContext:Landroid/content/Context;

    .line 445
    iget-object v3, p0, Lcom/android/htccontacts/PeopleApp;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/PeopleApp;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 447
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/PeopleApp;->mQueryAllPeople:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v3, v4}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 449
    new-instance v3, Lcom/android/htccontacts/PeopleApp$PrepareHandler;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/PeopleApp$PrepareHandler;-><init>(Lcom/android/htccontacts/PeopleApp;)V

    iput-object v3, p0, Lcom/android/htccontacts/PeopleApp;->mHandler:Lcom/android/htccontacts/PeopleApp$PrepareHandler;

    .line 450
    invoke-virtual {p0}, Lcom/android/htccontacts/PeopleApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 451
    .local v2, res:Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 452
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/PeopleApp;->mCurrentConfiguration:Landroid/content/res/Configuration;

    .line 454
    :cond_0
    new-instance v3, Lcom/android/htccontacts/group/FrequencyObservable;

    invoke-direct {v3}, Lcom/android/htccontacts/group/FrequencyObservable;-><init>()V

    iput-object v3, p0, Lcom/android/htccontacts/PeopleApp;->mFrequencyObservable:Lcom/android/htccontacts/group/FrequencyObservable;

    .line 455
    const v3, 0x7f02003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/PeopleApp;->mPeopleIcon:Landroid/graphics/drawable/Drawable;

    .line 458
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/htccontacts/PeopleApp;->hasSubscribedPresenceService:Z

    .line 460
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v3

    new-instance v4, Lcom/android/htccontacts/PeopleApp$3;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/PeopleApp$3;-><init>(Lcom/android/htccontacts/PeopleApp;)V

    invoke-virtual {v3, v4}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 471
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isPeoplePerformanceTuningEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 472
    invoke-direct {p0}, Lcom/android/htccontacts/PeopleApp;->bindDialerService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyCommunityEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 481
    const-string v3, "PeopleApp"

    const-string v4, "Call TMOClient.getInstance(mContext, true) to initial TMOClient..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v3, p0, Lcom/android/htccontacts/PeopleApp;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/htc/util/contacts/TMOClient;->getInstance(Landroid/content/Context;Z)Lcom/htc/util/contacts/TMOClient;

    .line 486
    :cond_2
    const-string v3, "PeopleApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PeopleApp created done: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    new-instance v3, Lcom/android/htccontacts/PeopleApp$BrowserLayerCarouselBroadcastReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/htccontacts/PeopleApp$BrowserLayerCarouselBroadcastReceiver;-><init>(Lcom/android/htccontacts/PeopleApp;Lcom/android/htccontacts/PeopleApp$1;)V

    iput-object v3, p0, Lcom/android/htccontacts/PeopleApp;->mReceiver:Lcom/android/htccontacts/PeopleApp$BrowserLayerCarouselBroadcastReceiver;

    .line 490
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.htc.laputa.HtcNavi.action.LOCATIONS_NAVI_ON"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 491
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/htccontacts/PeopleApp;->mReceiver:Lcom/android/htccontacts/PeopleApp$BrowserLayerCarouselBroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/htccontacts/PeopleApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 493
    return-void

    .line 476
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 477
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PeopleApp"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/PeopleApp;->mIsTerminating:Z

    .line 498
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 500
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mAllPeopleCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mAllPeopleCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mAllPeopleCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 504
    :cond_0
    sget-boolean v0, Lcom/android/htccontacts/ContactListSearchPicker;->sIsEnableCachePeopleSearchCursor:Z

    if-eqz v0, :cond_1

    .line 505
    invoke-virtual {p0}, Lcom/android/htccontacts/PeopleApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htccontacts/ContactListSearchPicker;->recyclePeopleSearchCursor(Landroid/content/ContentResolver;)V

    .line 508
    :cond_1
    const-string v0, "PeopleApp"

    const-string v1, "PeopleApp Terminated!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mReceiver:Lcom/android/htccontacts/PeopleApp$BrowserLayerCarouselBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/PeopleApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 511
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mUiModeObserver:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/htccontacts/PeopleApp;->mUiModeObserver:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 512
    return-void
.end method

.method public registerUiModeObserver(Landroid/app/Activity;)I
    .locals 1
    .parameter "activity"

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mUiModeObserver:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    invoke-direct {p0}, Lcom/android/htccontacts/PeopleApp;->setupScreenOreitation()Z

    .line 807
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mUiModeObserver:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setupScreenOreitation(Landroid/app/Activity;)Z
    .locals 2
    .parameter "activity"

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/android/htccontacts/PeopleApp;->requestOrientation()I

    move-result v0

    .line 649
    .local v0, orientation:I
    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/PeopleApp;->setupScreenOreitation(Landroid/app/Activity;I)Z

    move-result v1

    return v1
.end method

.method public unregisterUiModeObserver(Landroid/app/Activity;)I
    .locals 1
    .parameter "activity"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mUiModeObserver:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mUiModeObserver:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mUiModeObserver:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/PeopleApp;->mUiModeObserver:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
