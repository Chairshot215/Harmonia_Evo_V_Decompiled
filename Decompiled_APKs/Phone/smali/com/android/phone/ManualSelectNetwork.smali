.class public Lcom/android/phone/ManualSelectNetwork;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "ManualSelectNetwork.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ManualSelectNetwork$StarredPreference;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DIALOG_NETWORK_LIST_LOAD:I = 0xc8

.field private static final DIALOG_NETWORK_SELECTION:I = 0x64

.field private static final EVENT_NETWORK_SCAN_COMPLETED:I = 0x64

.field private static final EVENT_NETWORK_SELECTION_DONE:I = 0xc8

.field private static final EVENT_NETWORK_SELECTION_STATE:I = 0x12c

.field private static final LOG_TAG:Ljava/lang/String; = "phone"

.field private static final MANUAL_LIST_NETWORKS_KEY:Ljava/lang/String; = "manual_list_networks_key"

.field private static final NETWORK_LIST_KEY:Ljava/lang/String; = "network_list_key"

.field public static final sIusacellShowNemericOpList:Ljava/util/ArrayList;

.field public static final sTelcelShowNemericOpList:Ljava/util/ArrayList;


# instance fields
.field isCancel:Z

.field isSetManualError:Z

.field private mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

.field private mCid:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerProxy:Landroid/os/Handler;

.field private mHtcContext:Landroid/content/Context;

.field private mIsActEnabled:Z

.field private mLocale:Ljava/util/Locale;

.field private mNetworkList:Lcom/htc/preference/HtcPreferenceCategory;

.field private mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

.field private mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

.field mNetworkSelectMsg:Ljava/lang/String;

.field private mOperatorInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorStringLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mQMIHandler:Landroid/os/Handler;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSelectedNetwork:Lcom/android/internal/telephony/OperatorInfo;

.field private mSimNumeric:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "334020"

    aput-object v2, v1, v3

    const-string v2, "33403"

    aput-object v2, v1, v4

    const-string v2, "334030"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/phone/ManualSelectNetwork;->sIusacellShowNemericOpList:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "33403"

    aput-object v2, v1, v3

    const-string v2, "334030"

    aput-object v2, v1, v4

    const-string v2, "334050"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/phone/ManualSelectNetwork;->sTelcelShowNemericOpList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 148
    iput-object v1, p0, Lcom/android/phone/ManualSelectNetwork;->mHandlerProxy:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/android/phone/ManualSelectNetwork$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ManualSelectNetwork$1;-><init>(Lcom/android/phone/ManualSelectNetwork;)V

    iput-object v0, p0, Lcom/android/phone/ManualSelectNetwork;->mHandler:Landroid/os/Handler;

    .line 184
    new-instance v0, Lcom/android/phone/ManualSelectNetwork$2;

    invoke-direct {v0, p0}, Lcom/android/phone/ManualSelectNetwork$2;-><init>(Lcom/android/phone/ManualSelectNetwork;)V

    iput-object v0, p0, Lcom/android/phone/ManualSelectNetwork;->mQMIHandler:Landroid/os/Handler;

    .line 245
    iput-object v1, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    .line 248
    new-instance v0, Lcom/android/phone/ManualSelectNetwork$3;

    invoke-direct {v0, p0}, Lcom/android/phone/ManualSelectNetwork$3;-><init>(Lcom/android/phone/ManualSelectNetwork;)V

    iput-object v0, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    .line 273
    new-instance v0, Lcom/android/phone/ManualSelectNetwork$4;

    invoke-direct {v0, p0}, Lcom/android/phone/ManualSelectNetwork$4;-><init>(Lcom/android/phone/ManualSelectNetwork;)V

    iput-object v0, p0, Lcom/android/phone/ManualSelectNetwork;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    .line 286
    new-instance v0, Lcom/android/phone/ManualSelectNetwork$5;

    invoke-direct {v0, p0}, Lcom/android/phone/ManualSelectNetwork$5;-><init>(Lcom/android/phone/ManualSelectNetwork;)V

    iput-object v0, p0, Lcom/android/phone/ManualSelectNetwork;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 851
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ManualSelectNetwork;Ljava/util/List;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/phone/ManualSelectNetwork;->operatorListLoaded(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ManualSelectNetwork;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/phone/ManualSelectNetwork;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/phone/ManualSelectNetwork;Lcom/android/internal/telephony/OperatorInfo;)Lcom/android/internal/telephony/OperatorInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/phone/ManualSelectNetwork;->mSelectedNetwork:Lcom/android/internal/telephony/OperatorInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/ManualSelectNetwork;Ljava/lang/Throwable;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/phone/ManualSelectNetwork;->isCommandExceptionGenericFailure(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/ManualSelectNetwork;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/phone/ManualSelectNetwork;->displayNetworkSelectionSucceeded()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/phone/ManualSelectNetwork;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/phone/ManualSelectNetwork;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/phone/ManualSelectNetwork;->mOperatorInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/ManualSelectNetwork;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/phone/ManualSelectNetwork;->loadNetworksList()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/ManualSelectNetwork;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/phone/ManualSelectNetwork;->setupNetworkList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/ManualSelectNetwork;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/phone/ManualSelectNetwork;->mHandlerProxy:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/ManualSelectNetwork;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/phone/ManualSelectNetwork;->updateNetworkList(Ljava/lang/String;)V

    return-void
.end method

.method private clearList()V
    .locals 3

    .prologue
    .line 810
    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreference;

    .line 811
    .local v1, p:Lcom/htc/preference/HtcPreference;
    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkList:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 813
    .end local v1           #p:Lcom/htc/preference/HtcPreference;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 814
    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork;->mOperatorInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 815
    return-void
.end method

.method private convertOperatorName(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .locals 4
    .parameter "ni"

    .prologue
    .line 404
    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork;->mOperatorStringLists:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 405
    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork;->mOperatorStringLists:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 430
    .local v0, opName:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 434
    :cond_0
    return-object v0

    .line 408
    .end local v0           #opName:Ljava/lang/String;
    :cond_1
    const-string v1, "50506"

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 409
    const-string v0, "3Telstra"

    .restart local v0       #opName:Ljava/lang/String;
    goto :goto_0

    .line 411
    .end local v0           #opName:Ljava/lang/String;
    :cond_2
    const-string v1, "334050"

    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 412
    sget-object v1, Lcom/android/phone/ManualSelectNetwork;->sIusacellShowNemericOpList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 413
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #opName:Ljava/lang/String;
    goto :goto_0

    .line 415
    .end local v0           #opName:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #opName:Ljava/lang/String;
    goto :goto_0

    .line 417
    .end local v0           #opName:Ljava/lang/String;
    :cond_4
    const-string v1, "334020"

    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork;->mSimNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 418
    sget-object v1, Lcom/android/phone/ManualSelectNetwork;->sTelcelShowNemericOpList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 419
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #opName:Ljava/lang/String;
    goto :goto_0

    .line 421
    .end local v0           #opName:Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #opName:Ljava/lang/String;
    goto :goto_0

    .line 425
    .end local v0           #opName:Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #opName:Ljava/lang/String;
    goto :goto_0
.end method

.method private displayEmptyNetworkList(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 629
    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkList:Lcom/htc/preference/HtcPreferenceCategory;

    if-eqz p1, :cond_1

    const v0, 0x7f0e02ca

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceCategory;->setTitle(I)V

    .line 630
    if-eqz p1, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/phone/ManualSelectNetwork;->mOperatorInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 633
    :cond_0
    return-void

    .line 629
    :cond_1
    const v0, 0x7f0e02c8

    goto :goto_0
.end method

.method private displayNetworkQueryFailed(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 644
    const/4 v0, 0x0

    .line 645
    .local v0, status:Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/android/phone/ManualSelectNetwork;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 655
    :goto_0
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 657
    return-void

    .line 651
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/ManualSelectNetwork;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "ex"

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/android/phone/ManualSelectNetwork;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/android/phone/ManualSelectNetwork;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e04ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 665
    :cond_0
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 667
    return-void
.end method

.method private displayNetworkSelectionSucceeded()V
    .locals 5

    .prologue
    .line 670
    invoke-virtual {p0}, Lcom/android/phone/ManualSelectNetwork;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 676
    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork;->mHandlerProxy:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/ManualSelectNetwork$6;

    invoke-direct {v2, p0}, Lcom/android/phone/ManualSelectNetwork$6;-><init>(Lcom/android/phone/ManualSelectNetwork;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 682
    return-void
.end method

.method private displayNetworkSeletionInProgress(Ljava/lang/String;)V
    .locals 4
    .parameter "networkStr"

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/android/phone/ManualSelectNetwork;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e02cd

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkSelectMsg:Ljava/lang/String;

    .line 638
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/ManualSelectNetwork;->showDialog(I)V

    .line 639
    return-void
.end method

.method private isCommandExceptionGenericFailure(Ljava/lang/Throwable;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 305
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadNetworksList()V
    .locals 2

    .prologue
    .line 686
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/ManualSelectNetwork;->showDialog(I)V

    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v0, v1}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/ManualSelectNetwork;->displayEmptyNetworkList(Z)V

    .line 696
    return-void

    .line 692
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 818
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ManualSelectNetworks] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return-void
.end method

.method private operatorListLoaded(Ljava/util/List;I)V
    .locals 2
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v1, 0x1

    .line 710
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/ManualSelectNetwork;->dismissDialog(I)V

    .line 711
    invoke-virtual {p0}, Lcom/android/phone/ManualSelectNetwork;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 712
    invoke-direct {p0}, Lcom/android/phone/ManualSelectNetwork;->clearList()V

    .line 714
    if-eqz p2, :cond_0

    .line 716
    invoke-direct {p0, p2}, Lcom/android/phone/ManualSelectNetwork;->displayNetworkQueryFailed(I)V

    .line 717
    invoke-direct {p0, v1}, Lcom/android/phone/ManualSelectNetwork;->displayEmptyNetworkList(Z)V

    .line 721
    :goto_0
    return-void

    .line 719
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/ManualSelectNetwork;->setupNetworkList(Ljava/util/List;)V

    goto :goto_0
.end method

.method private retrieveOperatorNameList()V
    .locals 6

    .prologue
    .line 371
    iget-object v3, p0, Lcom/android/phone/ManualSelectNetwork;->mHtcContext:Landroid/content/Context;

    if-eqz v3, :cond_5

    .line 372
    iget-object v3, p0, Lcom/android/phone/ManualSelectNetwork;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v3, p0, Lcom/android/phone/ManualSelectNetwork;->mLocale:Ljava/util/Locale;

    .line 373
    iget-object v3, p0, Lcom/android/phone/ManualSelectNetwork;->mLocale:Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/ManualSelectNetwork;->mLocale:Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/ManualSelectNetwork;->mLocale:Ljava/util/Locale;

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 376
    :cond_0
    iget-object v3, p0, Lcom/android/phone/ManualSelectNetwork;->mOperatorStringLists:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 377
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/phone/ManualSelectNetwork;->mOperatorStringLists:Ljava/util/HashMap;

    .line 379
    :cond_1
    iget-object v3, p0, Lcom/android/phone/ManualSelectNetwork;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x207000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, opStr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_4

    .line 381
    aget-object v3, v1, v0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, strArray:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 383
    iget-object v3, p0, Lcom/android/phone/ManualSelectNetwork;->mOperatorStringLists:Ljava/util/HashMap;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    .end local v0           #i:I
    .end local v1           #opStr:[Ljava/lang/String;
    .end local v2           #strArray:[Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/phone/ManualSelectNetwork;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v3, :cond_4

    .line 389
    iget-object v3, p0, Lcom/android/phone/ManualSelectNetwork;->mOperatorStringLists:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 390
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/ManualSelectNetwork;->mOperatorStringLists:Ljava/util/HashMap;

    .line 400
    :cond_4
    :goto_1
    return-void

    .line 394
    :cond_5
    iget-object v3, p0, Lcom/android/phone/ManualSelectNetwork;->mHtcContext:Landroid/content/Context;

    if-nez v3, :cond_6

    .line 395
    const-string v3, "phone"

    const-string v4, "No HTC Context was loaded!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 397
    :cond_6
    const-string v3, "phone"

    const-string v4, "Leave as what it was!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setupNetworkList(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 724
    if-eqz p1, :cond_b

    .line 725
    invoke-direct {p0, v8}, Lcom/android/phone/ManualSelectNetwork;->displayEmptyNetworkList(Z)V

    .line 727
    iget-object v5, p0, Lcom/android/phone/ManualSelectNetwork;->mOperatorInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 728
    iget-object v5, p0, Lcom/android/phone/ManualSelectNetwork;->mOperatorInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 729
    iget-object v5, p0, Lcom/android/phone/ManualSelectNetwork;->mOperatorInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 732
    :cond_0
    const-string v5, "gsm.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 736
    .local v4, operator:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/OperatorInfo;

    .line 737
    .local v3, ni:Lcom/android/internal/telephony/OperatorInfo;
    new-instance v0, Lcom/android/phone/ManualSelectNetwork$StarredPreference;

    invoke-direct {v0, p0}, Lcom/android/phone/ManualSelectNetwork$StarredPreference;-><init>(Landroid/content/Context;)V

    .line 740
    .local v0, carrier:Lcom/android/phone/ManualSelectNetwork$StarredPreference;
    iget-boolean v5, p0, Lcom/android/phone/ManualSelectNetwork;->mIsActEnabled:Z

    if-eqz v5, :cond_5

    .line 750
    const-string v5, "334050"

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 751
    const-string v5, "2"

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getAct()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 752
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v3}, Lcom/android/phone/ManualSelectNetwork;->convertOperatorName(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NextG"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/phone/ManualSelectNetwork$StarredPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 790
    :goto_1
    invoke-virtual {v0, v8}, Lcom/android/phone/ManualSelectNetwork$StarredPreference;->setPersistent(Z)V

    .line 792
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    if-ne v5, v6, :cond_1

    .line 794
    iput-object v3, p0, Lcom/android/phone/ManualSelectNetwork;->mSelectedNetwork:Lcom/android/internal/telephony/OperatorInfo;

    .line 795
    invoke-virtual {v0, v7}, Lcom/android/phone/ManualSelectNetwork$StarredPreference;->setChecked(Z)V

    .line 798
    :cond_1
    iget-object v5, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkList:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v5, v0}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 799
    iget-object v5, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 754
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v3}, Lcom/android/phone/ManualSelectNetwork;->convertOperatorName(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " GSM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/phone/ManualSelectNetwork$StarredPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 757
    :cond_3
    const-string v5, "2"

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getAct()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 758
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v3}, Lcom/android/phone/ManualSelectNetwork;->convertOperatorName(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (3G)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/phone/ManualSelectNetwork$StarredPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 760
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/phone/ManualSelectNetwork;->convertOperatorName(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/phone/ManualSelectNetwork$StarredPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 765
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/phone/ManualSelectNetwork;->convertOperatorName(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;

    move-result-object v2

    .line 766
    .local v2, name:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->STE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 767
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 768
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 769
    :cond_6
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getAct()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 770
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getAct()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 786
    :cond_7
    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/phone/ManualSelectNetwork$StarredPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 772
    :cond_8
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v5, v7, :cond_7

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 774
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 775
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 777
    :cond_9
    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getAct()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 778
    const-string v5, "2"

    invoke-virtual {v3}, Lcom/android/internal/telephony/OperatorInfo;->getAct()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 779
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (3G)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 781
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (GSM)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 805
    .end local v0           #carrier:Lcom/android/phone/ManualSelectNetwork$StarredPreference;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #ni:Lcom/android/internal/telephony/OperatorInfo;
    .end local v4           #operator:Ljava/lang/String;
    :cond_b
    invoke-direct {p0, v7}, Lcom/android/phone/ManualSelectNetwork;->displayEmptyNetworkList(Z)V

    .line 807
    :cond_c
    return-void
.end method

.method private updateNetworkList(Ljava/lang/String;)V
    .locals 7
    .parameter "selectedOperator"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 822
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Refresh preferences...."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/ManualSelectNetwork;->log(Ljava/lang/String;)V

    .line 823
    iget-object v3, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkList:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 825
    .local v0, i:I
    :cond_0
    :goto_0
    if-lez v0, :cond_4

    .line 826
    add-int/lit8 v0, v0, -0x1

    .line 827
    iget-object v3, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkList:Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {v3, v0}, Lcom/htc/preference/HtcPreferenceCategory;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 828
    .local v2, p:Lcom/htc/preference/HtcPreference;
    instance-of v3, v2, Lcom/android/phone/ManualSelectNetwork$StarredPreference;

    if-eqz v3, :cond_0

    .line 829
    iget-object v3, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/OperatorInfo;

    .line 830
    .local v1, ni:Lcom/android/internal/telephony/OperatorInfo;
    if-eqz v1, :cond_0

    .line 833
    iget-boolean v3, p0, Lcom/android/phone/ManualSelectNetwork;->mIsActEnabled:Z

    if-eqz v3, :cond_2

    .line 834
    invoke-virtual {v1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/ManualSelectNetwork;->mSelectedNetwork:Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 836
    check-cast v2, Lcom/android/phone/ManualSelectNetwork$StarredPreference;

    .end local v2           #p:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v6}, Lcom/android/phone/ManualSelectNetwork$StarredPreference;->setChecked(Z)V

    goto :goto_0

    .line 838
    .restart local v2       #p:Lcom/htc/preference/HtcPreference;
    :cond_1
    check-cast v2, Lcom/android/phone/ManualSelectNetwork$StarredPreference;

    .end local v2           #p:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v5}, Lcom/android/phone/ManualSelectNetwork$StarredPreference;->setChecked(Z)V

    goto :goto_0

    .line 841
    .restart local v2       #p:Lcom/htc/preference/HtcPreference;
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 842
    check-cast v2, Lcom/android/phone/ManualSelectNetwork$StarredPreference;

    .end local v2           #p:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v6}, Lcom/android/phone/ManualSelectNetwork$StarredPreference;->setChecked(Z)V

    goto :goto_0

    .line 844
    .restart local v2       #p:Lcom/htc/preference/HtcPreference;
    :cond_3
    check-cast v2, Lcom/android/phone/ManualSelectNetwork$StarredPreference;

    .end local v2           #p:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, v5}, Lcom/android/phone/ManualSelectNetwork$StarredPreference;->setChecked(Z)V

    goto :goto_0

    .line 849
    .end local v1           #ni:Lcom/android/internal/telephony/OperatorInfo;
    :cond_4
    return-void
.end method


# virtual methods
.method public getNormalizedCarrierName(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .locals 2
    .parameter "ni"

    .prologue
    .line 355
    if-eqz p1, :cond_0

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    invoke-virtual {p0}, Lcom/android/phone/ManualSelectNetwork;->finish()V

    .line 352
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 442
    new-instance v4, Lcom/htc/widget/HeaderBarMiddle;

    invoke-direct {v4, p0}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;)V

    .line 443
    .local v4, titlebar:Lcom/htc/widget/HeaderBarMiddle;
    new-instance v5, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v5, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    .line 444
    .local v5, titlebartext:Lcom/htc/widget/HeaderBarText;
    invoke-virtual {v4, v9}, Lcom/htc/widget/HeaderBarMiddle;->enableSecondBackground(Z)V

    .line 445
    invoke-virtual {p0}, Lcom/android/phone/ManualSelectNetwork;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v5, v8}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 447
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Lcom/htc/widget/HeaderBarText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Lcom/htc/widget/HeaderBarMiddle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    invoke-virtual {v4, v5}, Lcom/htc/widget/HeaderBarMiddle;->addLeftView(Landroid/view/View;)V

    .line 451
    const v7, 0x1020002

    invoke-virtual {p0, v7}, Lcom/android/phone/ManualSelectNetwork;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 452
    .local v3, preferLayout:Landroid/view/ViewGroup;
    invoke-virtual {v3, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 455
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 456
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/phone/ManualSelectNetwork;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/phone/ManualSelectNetwork;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 458
    iget-object v7, p0, Lcom/android/phone/ManualSelectNetwork;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v10, p0, Lcom/android/phone/ManualSelectNetwork;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v7, v10, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 460
    const v7, 0x7f050021

    invoke-virtual {p0, v7}, Lcom/android/phone/ManualSelectNetwork;->addPreferencesFromResource(I)V

    .line 462
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v7, p0, Lcom/android/phone/ManualSelectNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 464
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->needregisterForManualState()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/phone/ManualSelectNetwork;->mQMIHandler:Landroid/os/Handler;

    :goto_0
    iput-object v7, p0, Lcom/android/phone/ManualSelectNetwork;->mHandlerProxy:Landroid/os/Handler;

    .line 467
    :try_start_0
    iget-object v7, p0, Lcom/android/phone/ManualSelectNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/ManualSelectNetwork;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/ManualSelectNetwork;->retrieveOperatorNameList()V

    .line 473
    invoke-virtual {p0}, Lcom/android/phone/ManualSelectNetwork;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v7

    const-string v10, "manual_list_networks_key"

    invoke-virtual {v7, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v7

    check-cast v7, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v7, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkList:Lcom/htc/preference/HtcPreferenceCategory;

    .line 474
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkMap:Ljava/util/HashMap;

    .line 476
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 477
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->cancelTimer()V

    .line 481
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/phone/ManualSelectNetwork;->mOperatorInfoList:Ljava/util/ArrayList;

    .line 482
    if-eqz p1, :cond_0

    .line 483
    const-string v7, "network_list_key"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 484
    .local v6, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    iget-object v7, p0, Lcom/android/phone/ManualSelectNetwork;->mOperatorInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 485
    iget-object v7, p0, Lcom/android/phone/ManualSelectNetwork;->mOperatorInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 486
    iget-object v7, p0, Lcom/android/phone/ManualSelectNetwork;->mOperatorInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 495
    .end local v6           #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    :cond_0
    new-instance v7, Landroid/content/Intent;

    const-class v10, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v7, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v7}, Lcom/android/phone/ManualSelectNetwork;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 496
    new-instance v7, Landroid/content/Intent;

    const-class v10, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v7, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v10, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v7, v10, v9}, Lcom/android/phone/ManualSelectNetwork;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 499
    invoke-virtual {p0}, Lcom/android/phone/ManualSelectNetwork;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/ManualSelectNetwork;->mResolver:Landroid/content/ContentResolver;

    .line 507
    iput-boolean v8, p0, Lcom/android/phone/ManualSelectNetwork;->isSetManualError:Z

    .line 508
    iput-boolean v9, p0, Lcom/android/phone/ManualSelectNetwork;->isCancel:Z

    .line 510
    const-string v7, "ro.cid"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, cid:Ljava/lang/String;
    const-string v7, "0"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ro.ril.oem.show.act."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "0"

    const-string v10, "ro.ril.oem.show.act"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_1
    move v7, v9

    :goto_2
    iput-boolean v7, p0, Lcom/android/phone/ManualSelectNetwork;->mIsActEnabled:Z

    .line 513
    iput-object v1, p0, Lcom/android/phone/ManualSelectNetwork;->mCid:Ljava/lang/String;

    .line 514
    const-string v7, "gsm.sim.operator.numeric"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/ManualSelectNetwork;->mSimNumeric:Ljava/lang/String;

    .line 517
    return-void

    .line 464
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #cid:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/phone/ManualSelectNetwork;->mHandler:Landroid/os/Handler;

    goto/16 :goto_0

    .line 468
    :catch_0
    move-exception v2

    .line 469
    .local v2, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/phone/ManualSelectNetwork;->mHtcContext:Landroid/content/Context;

    goto/16 :goto_1

    .end local v2           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #cid:Ljava/lang/String;
    :cond_3
    move v7, v8

    .line 511
    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 588
    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_1

    .line 591
    :cond_0
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 593
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    packed-switch p1, :pswitch_data_0

    .line 608
    invoke-virtual {p0}, Lcom/android/phone/ManualSelectNetwork;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e02c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 609
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 610
    invoke-virtual {v0, p0}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 611
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 616
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :goto_0
    return-object v0

    .line 600
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 601
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 602
    invoke-virtual {v0, v4}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 603
    invoke-virtual {v0, v3}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 616
    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 593
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 538
    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/android/phone/ManualSelectNetwork;->unbindService(Landroid/content/ServiceConnection;)V

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/ManualSelectNetwork;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :cond_0
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 563
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 312
    const/4 v0, 0x0

    .line 314
    .local v0, handled:Z
    move-object v3, p2

    .line 316
    .local v3, selectedCarrier:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3}, Lcom/htc/preference/HtcPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, operatorStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->needregisterForManualState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 321
    iget-object v4, p0, Lcom/android/phone/ManualSelectNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/ManualSelectNetwork;->mHandlerProxy:Landroid/os/Handler;

    const/16 v6, 0x12c

    invoke-interface {v4, v5, v6, v1}, Lcom/android/internal/telephony/Phone;->registerForManualState(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 327
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->needregisterForManualState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 329
    .local v1, msg:Landroid/os/Message;
    :goto_0
    iget-object v5, p0, Lcom/android/phone/ManualSelectNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/OperatorInfo;

    invoke-interface {v5, v4, v1}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 332
    iget-object v4, p0, Lcom/android/phone/ManualSelectNetwork;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/OperatorInfo;

    iput-object v4, p0, Lcom/android/phone/ManualSelectNetwork;->mSelectedNetwork:Lcom/android/internal/telephony/OperatorInfo;

    .line 335
    invoke-direct {p0, v2}, Lcom/android/phone/ManualSelectNetwork;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    .line 337
    const/4 v0, 0x1

    .line 339
    return v0

    .line 327
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/ManualSelectNetwork;->mHandlerProxy:Landroid/os/Handler;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 621
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 624
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/ManualSelectNetwork;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->setEnabled(Z)V

    .line 626
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 522
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 525
    invoke-virtual {p0}, Lcom/android/phone/ManualSelectNetwork;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ManualSelectNetwork;->mResolver:Landroid/content/ContentResolver;

    .line 526
    iget-object v0, p0, Lcom/android/phone/ManualSelectNetwork;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "network_selection"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 528
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 366
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 367
    const-string v0, "network_list_key"

    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork;->mOperatorInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 368
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 568
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 570
    iget-object v1, p0, Lcom/android/phone/ManualSelectNetwork;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "network_selection"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 572
    iget-boolean v1, p0, Lcom/android/phone/ManualSelectNetwork;->isSetManualError:Z

    if-eqz v1, :cond_1

    .line 575
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 576
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->delayTime(I)V

    .line 583
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/ManualSelectNetwork;->isCancel:Z

    if-eqz v1, :cond_0

    .line 580
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 581
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->delayTime(I)V

    goto :goto_0
.end method
