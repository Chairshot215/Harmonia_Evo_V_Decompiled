.class public Lcom/android/htccontacts/HtcViewMyContactCardActivity;
.super Lcom/android/htccontacts/HtcViewContactDetail;
.source "HtcViewMyContactCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyEntityLoader;,
        Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;,
        Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;,
        Lcom/android/htccontacts/HtcViewMyContactCardActivity$BuildSocialNetworkEntryTask;,
        Lcom/android/htccontacts/HtcViewMyContactCardActivity$ShareOnClickListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOADER_ID:I = 0x0

.field private static final MENU_IMPORT:I = 0x3

.field private static final MENU_PRINT:I = 0x5

.field private static final MENU_SHARE:I = 0x4

.field private static final MESSAGE_RE_CONSTRUCT:I = 0x1

.field private static final REQUEST_ACTION_PICK_ACCOUNT:I = 0x1f5

.field private static final REQUEST_QUICK_EDIT_TEXT:I = 0x1f4

.field private static final REQUEST_SHARE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "HtcViewMyContactCardActivity"


# instance fields
.field private bDoingBuildSocialNetworkEntryTask:Z

.field protected mActionAdapters:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCreate:Z

.field mEditActionEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

.field mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation
.end field

.field mEventEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mExteriorListAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/ExteriorListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mFacebookLogin:Z

.field mFacebookStatusEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

.field protected mGroupListAdapter:Lcom/android/htccontacts/widget/GroupListAdapter;

.field private mHasExteriorInit:Z

.field private mHasExteriorLoaded:Z

.field mImEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentFilter:Landroid/content/IntentFilter;

.field mInterAccount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mMsgHandler:Landroid/os/Handler;

.field mMyLoaderCallbacks:Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;

.field mNicknameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mNoteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mOrganizationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mOtherEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlurkLogin:Z

.field mPlurkStatusEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

.field mPostalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileLookupUri:Landroid/net/Uri;

.field mResolver:Landroid/content/ContentResolver;

.field private mSNC_Icon:[B

.field private mSNC_Tagline:Ljava/lang/String;

.field private mSNC_Tagline_data_id:J

.field private mSNC_Tagline_raw_contact_id:J

.field private mSendMyContactCardMenuItem:Landroid/view/MenuItem;

.field mShareActionEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

.field private mShowSendMyContactCardMenuItem:Z

.field mSipAddressEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mTwitterLogin:Z

.field mTwitterStatusEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

.field mWebsiteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mlMyContactCardContactId:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetail;-><init>()V

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPhoneEntries:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEmailEntries:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mImEntries:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPostalEntries:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mOtherEntries:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEventEntries:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mInterAccount:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mNicknameEntries:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mNoteEntries:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSipAddressEntries:Ljava/util/ArrayList;

    .line 149
    iput-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mFacebookStatusEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 150
    iput-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mTwitterStatusEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 151
    iput-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPlurkStatusEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 153
    iput-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mShareActionEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 154
    iput-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEditActionEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mShowSendMyContactCardMenuItem:Z

    .line 156
    iput-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSendMyContactCardMenuItem:Landroid/view/MenuItem;

    .line 191
    iput-boolean v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->bDoingBuildSocialNetworkEntryTask:Z

    .line 193
    iput-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSNC_Tagline:Ljava/lang/String;

    .line 196
    iput-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSNC_Icon:[B

    .line 201
    iput-boolean v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mCreate:Z

    .line 202
    iput-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mProfileLookupUri:Landroid/net/Uri;

    .line 205
    iput-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    iput-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 209
    new-instance v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$1;-><init>(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mMsgHandler:Landroid/os/Handler;

    .line 1648
    iput-boolean v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mHasExteriorInit:Z

    .line 1649
    iput-boolean v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mHasExteriorLoaded:Z

    .line 1869
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->bDoingBuildSocialNetworkEntryTask:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->addAndMergeAllEntries()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->setList()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEntities:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/htccontacts/HtcViewMyContactCardActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEntities:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->isSocialNetworkLogin()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mCreate:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->doUpdateContactInfo()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mlMyContactCardContactId:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/htccontacts/HtcViewMyContactCardActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mlMyContactCardContactId:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/htccontacts/HtcViewMyContactCardActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mProfileLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->importContact()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->resetList()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->removeAllEntries()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mFacebookLogin:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mTwitterLogin:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPlurkLogin:Z

    return v0
.end method

.method private addAndMergeAllEntries()V
    .locals 8

    .prologue
    const v7, 0x7f0a00fc

    const v6, 0x7f0a00fa

    const v5, 0x7f0a00f8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 842
    iget-boolean v4, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-nez v4, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->DeDuplicatePhoneEntries(Ljava/util/ArrayList;)V

    .line 844
    iget-object v4, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->DeDuplicateMailEntries(Ljava/util/ArrayList;)V

    .line 845
    iget-object v4, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->DeDuplicateHtcEventEntries(Ljava/util/ArrayList;)V

    .line 846
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getInformationEntryCount()I

    move-result v4

    if-lez v4, :cond_6

    move v1, v2

    .line 847
    .local v1, haveInformationItem:Z
    :goto_1
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getActionEntryCount()I

    move-result v4

    if-lez v4, :cond_7

    move v0, v2

    .line 848
    .local v0, haveActionItem:Z
    :goto_2
    if-eqz v1, :cond_2

    .line 849
    const-wide/high16 v2, 0x4008

    invoke-static {v2, v3}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    .line 850
    const v2, 0x7f0a01b4

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->addSeparatorHeader(I)V

    .line 851
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mShareActionEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEditActionEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    const v3, 0x7f0a01b1

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->newLabelEntry(Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 861
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 862
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 863
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSipAddressEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 864
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 865
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 866
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mOtherEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 867
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 868
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 869
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 870
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 871
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 873
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getInternetAccountEntryCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 874
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->hasSeparatorHeader()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 875
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    const v3, 0x7f0a01b3

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->newLabelEntry(Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    :cond_3
    :goto_4
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mInterAccount:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 883
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mFacebookStatusEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    if-eqz v2, :cond_4

    .line 884
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->hasSeparatorHeader()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 885
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->newLabelEntry(Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    :goto_5
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mFacebookStatusEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    :cond_4
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mTwitterStatusEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    if-eqz v2, :cond_5

    .line 892
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->hasSeparatorHeader()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 893
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->newLabelEntry(Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    :goto_6
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mTwitterStatusEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    :cond_5
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPlurkStatusEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    if-eqz v2, :cond_0

    .line 900
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->hasSeparatorHeader()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 901
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->newLabelEntry(Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    :goto_7
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPlurkStatusEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .end local v0           #haveActionItem:Z
    .end local v1           #haveInformationItem:Z
    :cond_6
    move v1, v3

    .line 846
    goto/16 :goto_1

    .restart local v1       #haveInformationItem:Z
    :cond_7
    move v0, v3

    .line 847
    goto/16 :goto_2

    .line 857
    .restart local v0       #haveActionItem:Z
    :cond_8
    const v2, 0x7f0a01b1

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->addSeparatorHeader(I)V

    goto/16 :goto_3

    .line 878
    :cond_9
    const v2, 0x7f0a01b3

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->addSeparatorHeader(I)V

    goto :goto_4

    .line 887
    :cond_a
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->addSeparatorHeader(I)V

    goto :goto_5

    .line 895
    :cond_b
    invoke-virtual {p0, v6}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->addSeparatorHeader(I)V

    goto :goto_6

    .line 903
    :cond_c
    invoke-virtual {p0, v7}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->addSeparatorHeader(I)V

    goto :goto_7
.end method

.method private buildMyCommunitySNC()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    .line 812
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 813
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v0, :cond_0

    .line 814
    const/16 v2, 0x1c

    iput v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 815
    iput-boolean v3, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->fromMyPhonebook:Z

    .line 816
    const v2, 0x2080254

    iput v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->rightIconId:I

    .line 818
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 819
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "MyCommunityProfileFirstView"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isMyCommunityProfileFirstView:Z

    .line 821
    iget-boolean v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isMyCommunityProfileFirstView:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyCommunityServiceEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 822
    const v2, 0x7f0a031c

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 823
    const v2, 0x7f0a031d

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 824
    iput-wide v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    .line 825
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mInterAccount:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 826
    .restart local v1       #sp:Landroid/content/SharedPreferences;
    :cond_1
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyCommunityServiceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 827
    const v2, 0x7f0a0318

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 828
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSNC_Tagline:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 829
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSNC_Tagline:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 830
    iget-wide v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSNC_Tagline_data_id:J

    iput-wide v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    .line 835
    :goto_1
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSNC_Icon:[B

    iput-object v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->sncIcon:[B

    .line 836
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mInterAccount:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 832
    :cond_2
    const v2, 0x7f0a0319

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 833
    iput-wide v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->id:J

    goto :goto_1
.end method

.method private doImportContact(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 1347
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1348
    .local v0, lContactId:J
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->importToMyContact(Landroid/content/Context;J)V

    .line 1401
    return-void
.end method

.method private getActionEntryCount()I
    .locals 2

    .prologue
    .line 951
    const/4 v0, 0x0

    .line 952
    .local v0, result:I
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mShareActionEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    if-eqz v1, :cond_0

    .line 953
    add-int/lit8 v0, v0, 0x1

    .line 955
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEditActionEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    if-eqz v1, :cond_1

    .line 956
    add-int/lit8 v0, v0, 0x1

    .line 958
    :cond_1
    return v0
.end method

.method private getInformationEntryCount()I
    .locals 2

    .prologue
    .line 962
    const/4 v0, 0x0

    .line 963
    .local v0, result:I
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->safeGetSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 964
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->safeGetSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 965
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->safeGetSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 966
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mOtherEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->safeGetSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 967
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->safeGetSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 969
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->safeGetSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 970
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->safeGetSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 971
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->safeGetSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 972
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->safeGetSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 973
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->safeGetSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 974
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSipAddressEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->safeGetSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 976
    return v0
.end method

.method private getInternetAccountEntryCount()I
    .locals 2

    .prologue
    .line 980
    const/4 v0, 0x0

    .line 981
    .local v0, result:I
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mInterAccount:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->safeGetSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 982
    return v0
.end method

.method private getShareDialog()Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 5

    .prologue
    .line 1195
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 1196
    .local v0, list:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    const v4, 0x7f0a0175

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 1197
    const/4 v3, 0x1

    const v4, 0x7f0a0174

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 1199
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1200
    .local v2, result:Lcom/htc/widget/HtcAlertDialog$Builder;
    if-eqz v2, :cond_0

    .line 1201
    new-instance v1, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ShareOnClickListener;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ShareOnClickListener;-><init>(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V

    .line 1202
    .local v1, listener:Lcom/android/htccontacts/HtcViewMyContactCardActivity$ShareOnClickListener;
    invoke-virtual {v2, v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1204
    .end local v1           #listener:Lcom/android/htccontacts/HtcViewMyContactCardActivity$ShareOnClickListener;
    :cond_0
    return-object v2
.end method

.method private getShareIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 1319
    iget-wide v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mlMyContactCardContactId:J

    invoke-static {v2, v3}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 1324
    :goto_0
    return-object v0

    .line 1320
    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mlMyContactCardContactId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1321
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.htccontacts.ACTION_SEND_CONTACT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1322
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "text/x-vCard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1323
    const-string v2, "isMyContactCard"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private importContact()V
    .locals 3

    .prologue
    .line 1341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1342
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1343
    const-string v1, "filter_account_mode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1344
    const/16 v1, 0x1f5

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1345
    return-void
.end method

.method private initBroadcastReceiver()V
    .locals 2

    .prologue
    .line 1734
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.intent.action.MY_CONTACT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 1735
    new-instance v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity$4;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$4;-><init>(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1741
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1742
    return-void
.end method

.method private isSocialNetworkLogin()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1097
    iget-object v6, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEntities:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 1117
    :cond_0
    return-void

    .line 1098
    :cond_1
    iget-object v6, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEntities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 1100
    .local v0, entity:Landroid/content/Entity;
    invoke-virtual {v0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Entity$NamedContentValues;

    .line 1101
    .local v5, subValue:Landroid/content/Entity$NamedContentValues;
    iget-object v1, v5, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1102
    .local v1, entryValues:Landroid/content/ContentValues;
    const-string v6, "mimetype"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1103
    .local v4, mimetype:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1104
    const-string v6, "com.htc.socialnetwork.facebook/login"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "com.facebook.auth.login/login"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1106
    :cond_4
    iput-boolean v7, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mFacebookLogin:Z

    goto :goto_0

    .line 1108
    :cond_5
    const-string v6, "com.htc.socialnetwork.flickr/login"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1110
    const-string v6, "com.htc.htctwitter/login"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1111
    iput-boolean v7, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mTwitterLogin:Z

    goto :goto_0

    .line 1112
    :cond_6
    const-string v6, "com.htc.socialnetwork.plurk/login"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1113
    iput-boolean v7, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPlurkLogin:Z

    goto :goto_0
.end method

.method private newEditActionEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 3

    .prologue
    .line 1087
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1088
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/16 v1, 0x5e

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1089
    const v1, 0x2080324

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 1090
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a026e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1092
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getEditIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 1093
    return-object v0
.end method

.method private newEditEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 3

    .prologue
    .line 1064
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1065
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/16 v1, 0x5c

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1066
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a026c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1068
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getEditIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 1069
    new-instance v1, Lcom/android/htccontacts/HtcViewMyContactCardActivity$3;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$3;-><init>(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->action:Landroid/view/View$OnClickListener;

    .line 1074
    return-object v0
.end method

.method private newHintEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 3

    .prologue
    .line 1042
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1043
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/16 v1, 0x5a

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1044
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a026a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1046
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 1047
    return-object v0
.end method

.method private newImportEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 3

    .prologue
    .line 1051
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1052
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/16 v1, 0x5b

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1053
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a026b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1055
    new-instance v1, Lcom/android/htccontacts/HtcViewMyContactCardActivity$2;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$2;-><init>(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->action:Landroid/view/View$OnClickListener;

    .line 1060
    return-object v0
.end method

.method private newShareActionEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 3

    .prologue
    .line 1078
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 1079
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const/16 v1, 0x5d

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 1080
    const v1, 0x2080337

    iput v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 1081
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a026d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 1083
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getShareIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 1084
    return-object v0
.end method

.method private postProcessMyContactInfo(Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;I)V
    .locals 1
    .parameter "entry"
    .parameter "type"

    .prologue
    .line 684
    if-nez p1, :cond_0

    .line 708
    :goto_0
    return-void

    .line 688
    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 697
    :pswitch_1
    const/16 v0, 0x63

    iput v0, p1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 698
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 699
    const/4 v0, -0x1

    iput v0, p1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 700
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    goto :goto_0

    .line 688
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private printMyContactCard()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1793
    iget-wide v5, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mlMyContactCardContactId:J

    invoke-static {v5, v6}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1828
    :goto_0
    return-void

    .line 1795
    :cond_0
    sget-object v5, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "data"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1797
    .local v3, profileDataUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1807
    .local v2, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.westtek.jcp"

    const-string v6, "com.westtek.jcp.JCPRINT"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1810
    const-string v5, "text/android.provider.contacts"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1811
    const-string v5, "ProfileId"

    iget-wide v6, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mlMyContactCardContactId:J

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1813
    const-string v4, "display_name ASC"

    .line 1815
    .local v4, sortOrder:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1816
    .local v1, extras:Landroid/os/Bundle;
    const-string v5, "projection"

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1817
    const-string v5, "selection"

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    const-string v5, "selectionArgs"

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1819
    const-string v5, "sortOrder"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1823
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v5}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1825
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private quickEditText(Landroid/os/Bundle;)V
    .locals 10
    .parameter "b"

    .prologue
    .line 1168
    if-nez p1, :cond_1

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1169
    :cond_1
    const-string v6, "Text"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1170
    .local v3, sTargetOriginalText:Ljava/lang/String;
    const-string v6, "NewText"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1171
    .local v2, sTargetNewText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1172
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1174
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1175
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "data1"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSNC_Tagline_data_id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1177
    .local v4, sbWhere:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1178
    .local v0, nUpdates:I
    if-lez v0, :cond_3

    .line 1190
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget-wide v7, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSNC_Tagline_raw_contact_id:J

    invoke-static {v6, v7, v8}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;J)V

    goto :goto_0

    .line 1181
    :cond_3
    const-string v6, "mimetype"

    const-string v7, "com.htc.android.myphonebook.item/tmo_ext_tag"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    const-string v6, "raw_contact_id"

    iget-wide v7, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSNC_Tagline_raw_contact_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1183
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1184
    .local v1, result:Landroid/net/Uri;
    if-eqz v1, :cond_2

    goto :goto_1
.end method

.method private removeAllEntries()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 927
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 928
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 929
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 930
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 931
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mOtherEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 932
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 933
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mInterAccount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 935
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 936
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 937
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 938
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 939
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSipAddressEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 941
    iput-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mFacebookStatusEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 942
    iput-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mTwitterStatusEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 943
    iput-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPlurkStatusEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 945
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 948
    :cond_0
    return-void
.end method

.method private removeEntriesOfList(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 994
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    if-nez p1, :cond_1

    .line 1002
    :cond_0
    return-void

    .line 998
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 999
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1000
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 999
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resetList()V
    .locals 2

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    if-eqz v0, :cond_1

    .line 1766
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSeparatorHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSeparatorHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->removeHeaderView(Landroid/view/View;)Z

    .line 1769
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    if-eqz v0, :cond_1

    .line 1770
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1773
    :cond_1
    return-void
.end method

.method private safeGetSize(Ljava/util/List;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 986
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;>;"
    if-eqz p1, :cond_0

    .line 987
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 990
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setList()V
    .locals 3

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    if-nez v0, :cond_0

    .line 1776
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    .line 1778
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mGroupListAdapter:Lcom/android/htccontacts/widget/GroupListAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/widget/GroupListAdapter;->add(ILandroid/widget/BaseAdapter;)V

    .line 1783
    :goto_0
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$OpenSense;->isOpenSenseEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1785
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mGroupListAdapter:Lcom/android/htccontacts/widget/GroupListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1790
    :goto_1
    return-void

    .line 1780
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->setSections(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1788
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method private share()V
    .locals 2

    .prologue
    .line 1314
    iget-wide v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mlMyContactCardContactId:J

    invoke-static {v0, v1}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1316
    :goto_0
    return-void

    .line 1315
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getShareIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private shareMyVCard(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1306
    return-void
.end method

.method private shareMyVCard(Ljava/lang/String;J)V
    .locals 0
    .parameter "value"
    .parameter "personId"

    .prologue
    .line 1269
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1745
    return-void
.end method


# virtual methods
.method public IsForeground()Z
    .locals 1

    .prologue
    .line 1477
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method protected buildEntries()V
    .locals 46

    .prologue
    .line 395
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-nez v4, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEntities:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 397
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEntities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_2
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/Entity;

    .line 398
    .local v32, entity:Landroid/content/Entity;
    invoke-virtual/range {v32 .. v32}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v31

    .line 399
    .local v31, entValues:Landroid/content/ContentValues;
    const-string v4, "account_type"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 400
    .local v25, accountType:Ljava/lang/String;
    const-string v4, "_id"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    .line 401
    .local v41, rawContactId:J
    const-string v4, "data_set"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 402
    .local v28, dataSet:Ljava/lang/String;
    move-wide/from16 v0, v41

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSNC_Tagline_raw_contact_id:J

    .line 413
    invoke-virtual/range {v32 .. v32}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .local v37, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/content/Entity$NamedContentValues;

    .line 416
    .local v44, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v33, v0

    .line 417
    .local v33, entryValues:Landroid/content/ContentValues;
    const-string v4, "raw_contact_id"

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 419
    const-string v4, "mimetype"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 420
    .local v39, mimetype:Ljava/lang/String;
    if-eqz v39, :cond_3

    .line 422
    const-string v4, "com.htc.android.myphonebook.item/tmo_ext_tag"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 423
    const-string v4, "data1"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSNC_Tagline:Ljava/lang/String;

    .line 424
    const-string v4, "_id"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSNC_Tagline_data_id:J

    goto :goto_1

    .line 426
    :cond_4
    const-string v4, "com.htc.android.myphonebook.item/tmo_ext_snc"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 427
    const-string v4, "data1"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 428
    .local v24, SNC_Provide_ID:Ljava/lang/String;
    if-eqz v24, :cond_3

    .line 429
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_type=\'com.htc.android.myphonebook\' AND deleted = \'0\' AND system_id = \'SNC\' AND sourceid = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 431
    .local v7, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/provider/HtcContactsContract$Groups;->GROUP_RAW_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 433
    .local v27, c:Landroid/database/Cursor;
    if-eqz v27, :cond_5

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 434
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    .line 435
    const-string v4, "photo"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSNC_Icon:[B

    .line 437
    :cond_5
    if-eqz v27, :cond_3

    .line 438
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 444
    .end local v7           #where:Ljava/lang/String;
    .end local v24           #SNC_Provide_ID:Ljava/lang/String;
    .end local v27           #c:Landroid/database/Cursor;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v43

    .line 445
    .local v43, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, v43

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v29

    .line 447
    .local v29, datakind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v29, :cond_3

    .line 449
    const-string v4, "_id"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 450
    .local v11, id:J
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 470
    .local v13, uri:Landroid/net/Uri;
    const/16 v38, 0x0

    .line 472
    .local v38, isSuperPrimary:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-static {v4, v0, v1, v5}, Lcom/android/htccontacts/util/ContactsUtils;->buildActionString(Landroid/content/Context;Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;Z)Ljava/lang/String;

    move-result-object v9

    .line 473
    .local v9, sLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-static {v4, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->buildDataString(Landroid/content/Context;Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v10

    .line 476
    .local v10, sData:Ljava/lang/String;
    const-string v4, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 477
    const/4 v14, -0x1

    .line 478
    .local v14, nType:I
    const-string v4, "data2"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 481
    :try_start_0
    const-string v4, "data2"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 488
    :cond_7
    :goto_2
    const/4 v4, -0x1

    if-eq v4, v14, :cond_8

    .line 489
    if-nez v14, :cond_9

    .line 490
    const-string v4, "data3"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 496
    :cond_8
    :goto_3
    const/16 v45, 0x0

    .line 501
    .local v45, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->newPhoneEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;IZ)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v45

    .line 503
    if-eqz v45, :cond_3

    .line 504
    const/16 v4, 0x63

    move-object/from16 v0, v45

    iput v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 505
    const/4 v4, 0x0

    move-object/from16 v0, v45

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 506
    move-object/from16 v0, v39

    move-object/from16 v1, v45

    iput-object v0, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->mimetype:Ljava/lang/String;

    .line 507
    const/4 v4, -0x1

    move-object/from16 v0, v45

    iput v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 508
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPhoneEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 482
    .end local v45           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :catch_0
    move-exception v30

    .line 483
    .local v30, e:Ljava/lang/Exception;
    const-string v4, "HtcViewMyContactCardActivity"

    const-string v5, "buildphoneEntries e: "

    move-object/from16 v0, v30

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    const/4 v14, -0x1

    goto :goto_2

    .line 492
    .end local v30           #e:Ljava/lang/Exception;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v14, v5}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .end local v9           #sLabel:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9       #sLabel:Ljava/lang/String;
    goto :goto_3

    .line 510
    .end local v14           #nType:I
    :cond_a
    const-string v4, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 511
    const/4 v14, -0x1

    .line 512
    .restart local v14       #nType:I
    const-string v4, "data2"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 515
    :try_start_1
    const-string v4, "data2"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    .line 522
    :cond_b
    :goto_4
    const/4 v4, -0x1

    if-eq v4, v14, :cond_c

    .line 523
    if-nez v14, :cond_d

    .line 524
    const-string v4, "data3"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 531
    :cond_c
    :goto_5
    const/16 v45, 0x0

    .line 537
    .restart local v45       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const/16 v16, 0x0

    const v19, 0x2080a9c

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide/from16 v17, v11

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    invoke-static/range {v15 .. v23}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->newEmailEntry(Landroid/content/Context;Landroid/net/Uri;JILjava/lang/String;Ljava/lang/String;IZ)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v45

    .line 540
    if-eqz v45, :cond_3

    .line 541
    const/16 v4, 0x63

    move-object/from16 v0, v45

    iput v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 542
    const/4 v4, 0x0

    move-object/from16 v0, v45

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 543
    const/4 v4, -0x1

    move-object/from16 v0, v45

    iput v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 544
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEmailEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 516
    .end local v45           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :catch_1
    move-exception v30

    .line 517
    .restart local v30       #e:Ljava/lang/Exception;
    const-string v4, "HtcViewMyContactCardActivity"

    const-string v5, "buildphoneEntries e: "

    move-object/from16 v0, v30

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    const/4 v14, -0x1

    goto :goto_4

    .line 526
    .end local v30           #e:Ljava/lang/Exception;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v14, v5}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .end local v9           #sLabel:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9       #sLabel:Ljava/lang/String;
    goto :goto_5

    .line 546
    .end local v14           #nType:I
    :cond_e
    const-string v4, "vnd.android.cursor.item/htc_event_v2"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 554
    const/16 v26, 0x0

    .line 559
    .local v26, bFacebook:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-static {v4, v9, v0, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->newHtcEventEntry(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;Z)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v45

    .line 561
    .restart local v45       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v45, :cond_3

    .line 562
    const/16 v4, 0x63

    move-object/from16 v0, v45

    iput v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 563
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEventEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 565
    .end local v26           #bFacebook:Z
    .end local v45           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_f
    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 566
    const/4 v14, -0x1

    .line 567
    .restart local v14       #nType:I
    const-string v4, "data2"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 570
    :try_start_2
    const-string v4, "data2"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v14

    .line 577
    :cond_10
    :goto_6
    const/4 v4, -0x1

    if-eq v4, v14, :cond_11

    .line 578
    if-nez v14, :cond_12

    .line 579
    const-string v4, "data3"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 586
    :cond_11
    :goto_7
    const v18, 0x20801cb

    const/16 v21, -0x1

    move-object v15, v13

    move-wide/from16 v16, v11

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    invoke-static/range {v15 .. v21}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->newFindPostalEntry(Landroid/net/Uri;JILjava/lang/String;Ljava/lang/String;I)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v45

    .line 587
    .restart local v45       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v45, :cond_3

    .line 588
    const/16 v4, 0x63

    move-object/from16 v0, v45

    iput v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 589
    const/4 v4, 0x0

    move-object/from16 v0, v45

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 590
    const/4 v4, -0x1

    move-object/from16 v0, v45

    iput v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 591
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPostalEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 571
    .end local v45           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :catch_2
    move-exception v30

    .line 572
    .restart local v30       #e:Ljava/lang/Exception;
    const-string v4, "HtcViewMyContactCardActivity"

    const-string v5, "buildphoneEntries e: "

    move-object/from16 v0, v30

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    const/4 v14, -0x1

    goto :goto_6

    .line 581
    .end local v30           #e:Ljava/lang/Exception;
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v14, v5}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .end local v9           #sLabel:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9       #sLabel:Ljava/lang/String;
    goto :goto_7

    .line 593
    .end local v14           #nType:I
    :cond_13
    const-string v4, "vnd.android.cursor.item/im"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 594
    const/16 v40, -0x2

    .line 595
    .local v40, nProtocolType:I
    const-string v4, "data5"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 598
    :try_start_3
    const-string v4, "data5"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v40

    .line 605
    :cond_14
    :goto_8
    const/4 v4, -0x2

    move/from16 v0, v40

    if-eq v4, v0, :cond_15

    .line 606
    const/4 v4, -0x1

    move/from16 v0, v40

    if-ne v0, v4, :cond_16

    .line 607
    const-string v4, "data6"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 614
    :cond_15
    :goto_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const/16 v21, 0x0

    move-object/from16 v16, v13

    move-wide/from16 v17, v11

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    invoke-static/range {v15 .. v21}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->newImEntry(Landroid/content/Context;Landroid/net/Uri;JLjava/lang/String;Ljava/lang/String;I)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v45

    .line 615
    .restart local v45       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v45, :cond_3

    .line 616
    const/16 v4, 0x63

    move-object/from16 v0, v45

    iput v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 617
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mImEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 599
    .end local v45           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :catch_3
    move-exception v30

    .line 600
    .restart local v30       #e:Ljava/lang/Exception;
    const-string v4, "HtcViewMyContactCardActivity"

    const-string v5, "buildphoneEntries e: "

    move-object/from16 v0, v30

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    const/16 v40, -0x2

    goto :goto_8

    .line 609
    .end local v30           #e:Ljava/lang/Exception;
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v0, v40

    invoke-static {v4, v0, v5}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .end local v9           #sLabel:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9       #sLabel:Ljava/lang/String;
    goto :goto_9

    .line 619
    .end local v40           #nProtocolType:I
    :cond_17
    const-string v4, "vnd.android.cursor.item/note"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 621
    invoke-static {v10}, Lcom/android/htccontacts/util/SNUtils;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 622
    .local v34, filterText:Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 623
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    .line 626
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, v34

    invoke-static {v4, v0, v13}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->newNotesEntry(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v45

    .line 627
    .restart local v45       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v45, :cond_3

    .line 630
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mNoteEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 632
    .end local v34           #filterText:Ljava/lang/String;
    .end local v45           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_19
    const-string v4, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 633
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 634
    :cond_1a
    const/16 v4, 0x63

    move-object/from16 v0, p0

    invoke-static {v0, v9, v10, v4}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->newOrganizationEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v45

    .line 635
    .restart local v45       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v45, :cond_3

    .line 636
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 639
    .end local v45           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_1b
    const-string v4, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 640
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 641
    new-instance v45, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct/range {v45 .. v45}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 642
    .restart local v45       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, v45

    iput-object v9, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 643
    move-object/from16 v0, v45

    iput-object v10, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 644
    const/4 v4, 0x0

    move-object/from16 v0, v45

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 645
    const/16 v4, 0x63

    move-object/from16 v0, v45

    iput v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 646
    if-eqz v45, :cond_3

    .line 647
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mNicknameEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 650
    .end local v45           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_1c
    const-string v4, "vnd.android.cursor.item/website"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 651
    new-instance v45, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct/range {v45 .. v45}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 652
    .restart local v45       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, v45

    iput-object v9, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 653
    move-object/from16 v0, v45

    iput-object v10, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 654
    const/4 v4, 0x0

    move-object/from16 v0, v45

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 655
    const/16 v4, 0x63

    move-object/from16 v0, v45

    iput v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 656
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mWebsiteEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 657
    .end local v45           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_1d
    const-string v4, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 658
    new-instance v45, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct/range {v45 .. v45}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 659
    .restart local v45       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    move-object/from16 v0, v45

    iput-object v9, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 660
    move-object/from16 v0, v45

    iput-object v10, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 661
    const/4 v4, 0x0

    move-object/from16 v0, v45

    iput-boolean v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 662
    const/16 v4, 0x63

    move-object/from16 v0, v45

    iput v4, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 663
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSipAddressEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 669
    .end local v9           #sLabel:Ljava/lang/String;
    .end local v10           #sData:Ljava/lang/String;
    .end local v11           #id:J
    .end local v13           #uri:Landroid/net/Uri;
    .end local v25           #accountType:Ljava/lang/String;
    .end local v28           #dataSet:Ljava/lang/String;
    .end local v29           #datakind:Lcom/android/htccontacts/model/DataKind;
    .end local v31           #entValues:Landroid/content/ContentValues;
    .end local v32           #entity:Landroid/content/Entity;
    .end local v33           #entryValues:Landroid/content/ContentValues;
    .end local v37           #i$:Ljava/util/Iterator;
    .end local v38           #isSuperPrimary:Z
    .end local v39           #mimetype:Ljava/lang/String;
    .end local v41           #rawContactId:J
    .end local v43           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v44           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v45           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_1e
    const-wide/high16 v4, 0x4008

    invoke-static {v4, v5}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 670
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getInformationEntryCount()I

    move-result v4

    if-lez v4, :cond_20

    const/16 v35, 0x1

    .line 671
    .local v35, haveInformationItem:Z
    :goto_a
    if-eqz v35, :cond_1f

    .line 672
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->newShareActionEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mShareActionEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 673
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->newEditActionEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEditActionEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 678
    .end local v35           #haveInformationItem:Z
    :cond_1f
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyCommunityEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 679
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->buildMyCommunitySNC()V

    goto/16 :goto_0

    .line 670
    :cond_20
    const/16 v35, 0x0

    goto :goto_a
.end method

.method protected dataChanged()V
    .locals 0

    .prologue
    .line 1007
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->resetList()V

    .line 1009
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->removeAllEntries()V

    .line 1010
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->buildEntries()V

    .line 1011
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->addAndMergeAllEntries()V

    .line 1012
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->setMyProfileDefaultItemsIfNeeded()V

    .line 1019
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->setList()V

    .line 1020
    return-void
.end method

.method protected defaultItemAction(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getEditIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1024
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1025
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->startActivity(Landroid/content/Intent;)V

    .line 1027
    :cond_0
    return-void
.end method

.method protected getEditIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 803
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mProfileLookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 804
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    iget-object v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mProfileLookupUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 807
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    const v0, 0x7f0a011f

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 1143
    sparse-switch p1, :sswitch_data_0

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1145
    :sswitch_0
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 1146
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->quickEditText(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1150
    :sswitch_1
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1159
    :sswitch_2
    if-ne v0, p2, :cond_0

    if-eqz p3, :cond_0

    .line 1160
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->doImportContact(Landroid/net/Uri;)V

    goto :goto_0

    .line 1143
    :sswitch_data_0
    .sparse-switch
        0x1f4 -> :sswitch_0
        0x1f5 -> :sswitch_2
        0x1000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 230
    invoke-super {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetail;->onCreate(Landroid/os/Bundle;)V

    .line 231
    const v1, 0x7f07001f

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 237
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/android/htccontacts/widget/GroupListAdapter;

    invoke-direct {v1}, Lcom/android/htccontacts/widget/GroupListAdapter;-><init>()V

    iput-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mGroupListAdapter:Lcom/android/htccontacts/widget/GroupListAdapter;

    .line 238
    new-instance v1, Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mActionAdapters:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mExteriorListAdapters:Ljava/util/List;

    .line 241
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->initBroadcastReceiver()V

    .line 243
    new-instance v1, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;

    invoke-direct {v1, p0, v4}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;-><init>(Lcom/android/htccontacts/HtcViewMyContactCardActivity;Lcom/android/htccontacts/HtcViewMyContactCardActivity$1;)V

    iput-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mMyLoaderCallbacks:Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;

    .line 244
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mCreate:Z

    .line 245
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mMyLoaderCallbacks:Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 246
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 337
    const v1, 0x7f0a013b

    invoke-interface {p1, v5, v6, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080324

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 338
    const/4 v1, 0x3

    const v2, 0x7f0a00e4

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080a1e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 339
    const/4 v1, 0x4

    const v2, 0x7f0a0118

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080a75

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSendMyContactCardMenuItem:Landroid/view/MenuItem;

    .line 341
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSendMyContactCardMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSendMyContactCardMenuItem:Landroid/view/MenuItem;

    iget-boolean v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mShowSendMyContactCardMenuItem:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 344
    :cond_0
    const-wide/high16 v1, 0x4008

    invoke-static {v1, v2}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_icon_menu_print"

    const-string v3, "drawable"

    const-string v4, "com.htc"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 346
    .local v0, printResId:I
    const/4 v1, 0x5

    const v2, 0x7f0a03ad

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 348
    .end local v0           #printResId:I
    :cond_1
    invoke-super {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetail;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 349
    return v6
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 321
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 322
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 323
    .local v1, spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "MyCommunityProfileFirstView"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 325
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 327
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->unregisterBroadcastReceiver()V

    .line 329
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 331
    invoke-super {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->onDestroy()V

    .line 332
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 17
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 712
    invoke-virtual/range {p1 .. p1}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v12

    .line 713
    .local v12, heraderViewCount:I
    sub-int p3, p3, v12

    .line 714
    if-gez p3, :cond_1

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getCount()I

    move-result v1

    sub-int v1, p3, v1

    if-ltz v1, :cond_4

    .line 719
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mActionAdapters:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    if-eqz v1, :cond_0

    .line 720
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getCount()I

    move-result v1

    sub-int v4, p3, v1

    .line 721
    .local v4, updatePosition:I
    move v10, v4

    .line 722
    .local v10, calcPosition:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mActionAdapters:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    invoke-virtual {v1}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->getIndexCount()I

    move-result v1

    if-ge v13, v1, :cond_2

    .line 723
    add-int/lit8 v4, v4, -0x1

    .line 725
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mActionAdapters:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    invoke-virtual {v1, v13}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->getExteriorAdapterAtPosition(I)Lcom/htc/opensense/plugin/ExteriorListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getCount()I

    move-result v1

    sub-int/2addr v10, v1

    .line 726
    add-int/lit8 v10, v10, -0x1

    .line 728
    if-gez v10, :cond_3

    .line 734
    :cond_2
    if-ltz v4, :cond_0

    .line 735
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mActionAdapters:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 722
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 741
    .end local v4           #updatePosition:I
    .end local v10           #calcPosition:I
    .end local v13           #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 742
    .local v11, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v11, :cond_0

    .line 745
    const/4 v7, 0x0

    .line 746
    .local v7, actionIntent:Landroid/content/Intent;
    iget v1, v11, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    sparse-switch v1, :sswitch_data_0

    .line 777
    :cond_5
    :goto_2
    if-eqz v7, :cond_7

    .line 779
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 780
    :catch_0
    move-exception v8

    .line 781
    .local v8, anfe:Landroid/content/ActivityNotFoundException;
    const-string v1, "HtcViewMyContactCardActivity"

    const-string v2, "onListItemClick"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 748
    .end local v8           #anfe:Landroid/content/ActivityNotFoundException;
    :sswitch_0
    iget-boolean v1, v11, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->isMyCommunityProfileFirstView:Z

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyCommunityServiceEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 749
    const v1, 0x7f0a031e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 750
    .local v16, uri:Landroid/net/Uri;
    new-instance v14, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-direct {v14, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 751
    .local v14, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    const/4 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->finish()V

    goto :goto_2

    .line 757
    .end local v14           #intent:Landroid/content/Intent;
    .end local v16           #uri:Landroid/net/Uri;
    :cond_6
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 758
    .local v9, b:Landroid/os/Bundle;
    const-string v1, "Text"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSNC_Tagline:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    new-instance v15, Landroid/content/Intent;

    const-string v1, "com.android.htccontacts.ACTION_QUICK_EDIT_TEXT"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 760
    .local v15, intentQuickEdit:Landroid/content/Intent;
    invoke-virtual {v15, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 761
    const/16 v1, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v1}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 766
    .end local v9           #b:Landroid/os/Bundle;
    .end local v15           #intentQuickEdit:Landroid/content/Intent;
    :sswitch_1
    iget-object v7, v11, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 768
    goto :goto_2

    .line 771
    :sswitch_2
    iget-object v7, v11, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 772
    goto :goto_2

    .line 784
    :cond_7
    invoke-super/range {p0 .. p5}, Lcom/android/htccontacts/HtcViewContactDetail;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V

    goto/16 :goto_0

    .line 746
    nop

    :sswitch_data_0
    .sparse-switch
        0x1c -> :sswitch_0
        0x1d -> :sswitch_1
        0x5d -> :sswitch_2
        0x5e -> :sswitch_2
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 367
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 389
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetail;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 373
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getEditIntent()Landroid/content/Intent;

    move-result-object v0

    .line 374
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 379
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->importContact()V

    goto :goto_0

    .line 382
    :pswitch_3
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->share()V

    goto :goto_0

    .line 385
    :pswitch_4
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->printMyContactCard()V

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    invoke-super {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->onPause()V

    .line 300
    iput-boolean v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mCreate:Z

    .line 303
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEntities:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEntities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 306
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mEntities:Ljava/util/ArrayList;

    .line 309
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mExteriorListAdapters:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 310
    iget-object v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mExteriorListAdapters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/plugin/ExteriorListAdapter;

    goto :goto_0

    .line 313
    :cond_1
    iput-boolean v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mHasExteriorLoaded:Z

    .line 315
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 354
    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->isWirelessPrintingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, menuItem:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_0

    .line 358
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 361
    .end local v0           #menuItem:Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetail;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 362
    const/4 v1, 0x1

    return v1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 259
    invoke-super {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->onResume()V

    .line 268
    iput-boolean v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mFacebookLogin:Z

    .line 270
    iput-boolean v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mTwitterLogin:Z

    .line 271
    iput-boolean v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPlurkLogin:Z

    .line 284
    return-void
.end method

.method public reConstruct()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1749
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mlMyContactCardContactId:J

    .line 1751
    iput-boolean v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mFacebookLogin:Z

    .line 1753
    iput-boolean v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mTwitterLogin:Z

    .line 1754
    iput-boolean v3, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mPlurkLogin:Z

    .line 1757
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mMyLoaderCallbacks:Lcom/android/htccontacts/HtcViewMyContactCardActivity$MyLoaderCallbacks;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1758
    return-void
.end method

.method public setDoingBuildSocialNetworkEntryTask(Z)V
    .locals 0
    .parameter "bDoingBuildSocialNetworkEntryTask"

    .prologue
    .line 1761
    iput-boolean p1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->bDoingBuildSocialNetworkEntryTask:Z

    .line 1762
    return-void
.end method

.method protected setMyProfileDefaultItemsIfNeeded()V
    .locals 2

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->newHintEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->newImportEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->newEditEntry()Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mShowSendMyContactCardMenuItem:Z

    .line 1035
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSendMyContactCardMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mSendMyContactCardMenuItem:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mShowSendMyContactCardMenuItem:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1039
    :cond_0
    return-void
.end method

.method protected startQueryAction()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1653
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$OpenSense;->isOpenSenseEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1654
    iget-boolean v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mHasExteriorInit:Z

    if-nez v2, :cond_1

    .line 1656
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mExteriorListAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1657
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1658
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .line 1660
    .local v0, adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mActionAdapters:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    invoke-virtual {v2, v0}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->removeExteriorAdapter(Lcom/htc/opensense/plugin/ExteriorListAdapter;)V

    .line 1661
    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->unloadData()V

    .line 1662
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1664
    .end local v0           #adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    :cond_0
    new-instance v2, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;-><init>(Lcom/android/htccontacts/HtcViewMyContactCardActivity;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/HtcViewMyContactCardActivity$ExteriorAdapterLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1665
    iput-boolean v4, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mHasExteriorLoaded:Z

    .line 1666
    iput-boolean v4, p0, Lcom/android/htccontacts/HtcViewMyContactCardActivity;->mHasExteriorInit:Z

    .line 1670
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    :cond_1
    return-void
.end method
