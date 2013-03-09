.class public Lcom/android/providers/downloads/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadInfo$1;,
        Lcom/android/providers/downloads/DownloadInfo$Reader;
    }
.end annotation


# static fields
.field public static final EXTRA_IS_WIFI_REQUIRED:Ljava/lang/String; = "isWifiRequired"

.field public static final NETWORK_BLOCKED:I = 0x7

.field public static final NETWORK_CANNOT_USE_ROAMING:I = 0x5

.field public static final NETWORK_NO_CONNECTION:I = 0x2

.field public static final NETWORK_OK:I = 0x1

.field public static final NETWORK_RECOMMENDED_UNUSABLE_DUE_TO_SIZE:I = 0x4

.field public static final NETWORK_TYPE_DISALLOWED_BY_REQUESTOR:I = 0x6

.field public static final NETWORK_UNUSABLE_DUE_TO_SIZE:I = 0x3


# instance fields
.field public mAPNType:I

.field public mAllowRoaming:Z

.field public mAllowedNetworkTypes:I

.field public mAuthHeaderName:Ljava/lang/String;

.field public mAuthHeaderValue:Ljava/lang/String;

.field public mBypassRecommendedSizeLimit:I

.field public mClass:Ljava/lang/String;

.field public mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

.field private mContext:Landroid/content/Context;

.field public mControl:I

.field public mCookies:Ljava/lang/String;

.field public mCurrentBytes:J

.field public mDeleted:Z

.field public mDescription:Ljava/lang/String;

.field public mDestination:I

.field public mETag:Ljava/lang/String;

.field public mExtras:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mFuzz:I

.field public mHandler:Landroid/os/Handler;

.field public mHasAPNResult:Z

.field public mHint:Ljava/lang/String;

.field public mId:J

.field public mIgnoreSpecificAPN:Z

.field public mIsOTAUpdate:Z

.field public mIsPublicApi:Z

.field public mLastMod:J

.field public mMediaProviderUri:Ljava/lang/String;

.field public mMediaScanned:I

.field public mMimeType:Ljava/lang/String;

.field public mNoIntegrity:Z

.field public mNumFailed:I

.field public mPackage:Ljava/lang/String;

.field public mReferer:Ljava/lang/String;

.field private mRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mRestriction:I

.field public mRetryAfter:I

.field public mStatus:I

.field public mStorageInsufficient:Z

.field private mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

.field public mTitle:Ljava/lang/String;

.field public mTotalBytes:J

.field public mUid:I

.field public mUri:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;

.field public mVisibility:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)V
    .locals 4
    .parameter "context"
    .parameter "systemFacade"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 286
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    .line 287
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    .line 288
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 289
    sget-object v0, Lcom/android/providers/downloads/Helpers;->sRandom:Ljava/util/Random;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mFuzz:I

    .line 293
    iput-object v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

    .line 294
    iput-boolean v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mIgnoreSpecificAPN:Z

    .line 295
    iput-boolean v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mHasAPNResult:Z

    .line 296
    iput-object v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mHandler:Landroid/os/Handler;

    .line 298
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/DownloadInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadInfo;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/DownloadInfo;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    return-object v0
.end method

.method private checkIsNetworkTypeAllowed(I)I
    .locals 6
    .parameter "networkType"

    .prologue
    const/16 v5, 0x12

    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v1, 0x6

    .line 549
    iget-boolean v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    if-eqz v2, :cond_1

    .line 550
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadInfo;->translateNetworkTypeToApiFlag(I)I

    move-result v0

    .line 551
    .local v0, flag:I
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mAllowedNetworkTypes:I

    and-int/2addr v2, v0

    if-nez v2, :cond_2

    .line 581
    .end local v0           #flag:I
    :cond_0
    :goto_0
    return v1

    .line 558
    :cond_1
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mRestriction:I

    invoke-static {v2, v3}, Lcom/android/providers/downloads/Helpers;->existRestriction(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 559
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mRestriction:I

    invoke-static {v2, v4}, Lcom/android/providers/downloads/Helpers;->existRestriction(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 560
    if-eq p1, v3, :cond_2

    if-ne p1, v5, :cond_0

    .line 581
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadInfo;->checkSizeAllowedForNetwork(I)I

    move-result v1

    goto :goto_0

    .line 564
    :cond_3
    if-eq p1, v3, :cond_2

    goto :goto_0

    .line 568
    :cond_4
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mRestriction:I

    invoke-static {v2, v4}, Lcom/android/providers/downloads/Helpers;->existRestriction(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 569
    if-eq p1, v5, :cond_2

    goto :goto_0

    .line 572
    :cond_5
    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mRestriction:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/providers/downloads/Helpers;->existRestriction(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 573
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v1}, Lcom/android/providers/downloads/SystemFacade;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 574
    const/4 v1, 0x5

    goto :goto_0
.end method

.method private checkSizeAllowedForNetwork(I)I
    .locals 7
    .parameter "networkType"

    .prologue
    const/4 v2, 0x1

    .line 606
    iget-wide v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 623
    :cond_0
    :goto_0
    return v2

    .line 609
    :cond_1
    if-eq p1, v2, :cond_0

    .line 612
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v3}, Lcom/android/providers/downloads/SystemFacade;->getMaxBytesOverMobile()Ljava/lang/Long;

    move-result-object v0

    .line 613
    .local v0, maxBytesOverMobile:Ljava/lang/Long;
    if-eqz v0, :cond_2

    iget-wide v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 614
    const/4 v2, 0x3

    goto :goto_0

    .line 616
    :cond_2
    iget v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mBypassRecommendedSizeLimit:I

    if-nez v3, :cond_0

    .line 617
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v3}, Lcom/android/providers/downloads/SystemFacade;->getRecommendedMaxBytesOverMobile()Ljava/lang/Long;

    move-result-object v1

    .line 618
    .local v1, recommendedMaxBytesOverMobile:Ljava/lang/Long;
    if-eqz v1, :cond_0

    iget-wide v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 620
    const/4 v2, 0x4

    goto :goto_0
.end method

.method private isReadyToStart(JZ)Z
    .locals 5
    .parameter "now"
    .parameter "isInsertDownload"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 385
    invoke-static {}, Lcom/android/providers/downloads/DownloadHandler;->getInstance()Lcom/android/providers/downloads/DownloadHandler;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/downloads/DownloadHandler;->hasDownloadInQueue(J)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 471
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 389
    :cond_1
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mControl:I

    if-ne v2, v0, :cond_2

    move v0, v1

    .line 391
    goto :goto_0

    .line 393
    :cond_2
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 471
    goto :goto_0

    .line 398
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->canStartSpecificAPN()Z

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    .line 399
    goto :goto_0

    .line 410
    :sswitch_2
    if-nez p3, :cond_0

    move v0, v1

    .line 413
    goto :goto_0

    .line 421
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->canStartSpecificAPN()Z

    move-result v2

    if-ne v2, v0, :cond_4

    .line 422
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

    invoke-virtual {v2}, Landroid/net/HtcNetworkConnectivityHelper;->getState()Landroid/net/HtcNetworkConnectivityHelper$State;

    move-result-object v2

    sget-object v3, Landroid/net/HtcNetworkConnectivityHelper$State;->CONNECTED:Landroid/net/HtcNetworkConnectivityHelper$State;

    if-eq v2, v3, :cond_0

    .line 424
    :cond_3
    iget-boolean v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mIgnoreSpecificAPN:Z

    if-nez v2, :cond_0

    move v0, v1

    .line 427
    goto :goto_0

    .line 430
    :cond_4
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    if-eqz v2, :cond_0

    .line 435
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/downloads/DownloadInfo;->restartTime(J)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    move v0, v1

    .line 439
    goto :goto_0

    .line 444
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->checkCanUseNetwork()I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 448
    :sswitch_5
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/downloads/DownloadInfo;->restartTime(J)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 451
    :sswitch_6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 459
    :sswitch_7
    if-nez p3, :cond_0

    move v0, v1

    .line 462
    goto :goto_0

    .line 393
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xbe -> :sswitch_1
        0xc0 -> :sswitch_2
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_5
        0xc3 -> :sswitch_4
        0xc4 -> :sswitch_4
        0xc5 -> :sswitch_3
        0x1e1 -> :sswitch_7
        0x1f3 -> :sswitch_6
    .end sparse-switch
.end method

.method private isRoamingAllowed()Z
    .locals 2

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    if-eqz v0, :cond_0

    .line 508
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mAllowRoaming:Z

    .line 510
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private translateNetworkTypeToApiFlag(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 589
    packed-switch p1, :pswitch_data_0

    .line 597
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 591
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 594
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public canStartSpecificAPN()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 361
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/providers/downloads/Helpers;->getNetworkAvailableType(Landroid/content/Context;)I

    move-result v0

    .line 363
    .local v0, networkType:I
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v3, 0xc5

    if-gt v2, v3, :cond_0

    if-eq v0, v1, :cond_0

    const/16 v2, 0x12

    if-eq v0, v2, :cond_0

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mRestriction:I

    invoke-static {v2, v1}, Lcom/android/providers/downloads/Helpers;->existRestriction(II)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mRestriction:I

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/android/providers/downloads/Helpers;->existRestriction(II)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mAPNType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 371
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkCanUseNetwork()I
    .locals 3

    .prologue
    .line 493
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-interface {v1, v2}, Lcom/android/providers/downloads/SystemFacade;->getActiveNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 494
    .local v0, info:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 495
    const/4 v1, 0x2

    .line 503
    :goto_0
    return v1

    .line 497
    :cond_0
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    const/4 v1, 0x7

    goto :goto_0

    .line 500
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadInfo;->isRoamingAllowed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v1}, Lcom/android/providers/downloads/SystemFacade;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 501
    const/4 v1, 0x5

    goto :goto_0

    .line 503
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo;->checkIsNetworkTypeAllowed(I)I

    move-result v1

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "writer"

    .prologue
    .line 668
    const-string v0, "DownloadInfo:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    const-string v0, "  mId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 671
    const-string v0, " mLastMod="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 672
    const-string v0, " mPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 673
    const-string v0, " mUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 675
    const-string v0, "  mUri="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 676
    const-string v0, " mMimeType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 677
    const-string v0, " mCookies="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mCookies:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 678
    const-string v0, " mReferer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mReferer:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "yes"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    const-string v0, "  mUserAgent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    const-string v0, "  mFileName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    const-string v0, "  mStatus="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 685
    const-string v0, " mCurrentBytes="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 686
    const-string v0, " mTotalBytes="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 688
    const-string v0, "  mNumFailed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 689
    const-string v0, " mRetryAfter="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRetryAfter:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 690
    return-void

    .line 677
    :cond_0
    const-string v0, "no"

    goto :goto_0

    .line 678
    :cond_1
    const-string v0, "no"

    goto :goto_1
.end method

.method public getAllDownloadsUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 664
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLogMessageForNetworkError(I)Ljava/lang/String;
    .locals 1
    .parameter "networkError"

    .prologue
    .line 519
    packed-switch p1, :pswitch_data_0

    .line 539
    const-string v0, "unknown error with network connectivity"

    :goto_0
    return-object v0

    .line 521
    :pswitch_0
    const-string v0, "download size exceeds recommended limit for mobile network"

    goto :goto_0

    .line 524
    :pswitch_1
    const-string v0, "download size exceeds limit for mobile network"

    goto :goto_0

    .line 527
    :pswitch_2
    const-string v0, "no network connection available"

    goto :goto_0

    .line 530
    :pswitch_3
    const-string v0, "download cannot use the current network connection because it is roaming"

    goto :goto_0

    .line 533
    :pswitch_4
    const-string v0, "download was requested to not use the current network type"

    goto :goto_0

    .line 536
    :pswitch_5
    const-string v0, "network is blocked for requesting application"

    goto :goto_0

    .line 519
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getMyDownloadsUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 660
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hasCompletionNotification()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 479
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v2}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 485
    :cond_0
    :goto_0
    return v0

    .line 482
    :cond_1
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 483
    goto :goto_0
.end method

.method public isOnCache()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 653
    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nextAction(J)J
    .locals 6
    .parameter "now"

    .prologue
    const-wide/16 v2, 0x0

    .line 702
    iget v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v4}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v5, 0xc3

    if-ne v4, v5, :cond_2

    .line 704
    :cond_0
    const-wide/16 v2, -0x1

    .line 717
    :cond_1
    :goto_0
    return-wide v2

    .line 709
    :cond_2
    iget v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v5, 0xc2

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v5, 0xc5

    if-ne v4, v5, :cond_1

    .line 713
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/downloads/DownloadInfo;->restartTime(J)J

    move-result-wide v0

    .line 714
    .local v0, when:J
    cmp-long v4, v0, p1

    if-lez v4, :cond_1

    .line 717
    sub-long v2, v0, p1

    goto :goto_0
.end method

.method notifyPauseDueToSize(Z)V
    .locals 3
    .parameter "isWifiRequired"

    .prologue
    .line 752
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 753
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 754
    const-class v1, Lcom/android/providers/downloads/SizeLimitActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/providers/downloads/SizeLimitActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 757
    const-string v1, "isWifiRequired"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 758
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 759
    return-void
.end method

.method public restartTime(J)J
    .locals 5
    .parameter "now"

    .prologue
    .line 341
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    if-nez v0, :cond_0

    .line 347
    .end local p1
    :goto_0
    return-wide p1

    .line 344
    .restart local p1
    :cond_0
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRetryAfter:I

    if-lez v0, :cond_1

    .line 345
    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mRetryAfter:I

    int-to-long v2, v2

    add-long p1, v0, v2

    goto :goto_0

    .line 347
    :cond_1
    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mFuzz:I

    add-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x1e

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    add-int/lit8 v4, v4, -0x1

    shl-int/2addr v3, v4

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long p1, v0, v2

    goto :goto_0
.end method

.method public sendIntentIfRequested()V
    .locals 4

    .prologue
    .line 305
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-boolean v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    if-eqz v1, :cond_2

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const-string v1, "extra_download_id"

    iget-wide v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 334
    :goto_1
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v1, v0}, Lcom/android/providers/downloads/SystemFacade;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 315
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mExtras:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 321
    const-string v1, "notificationextras"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mExtras:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    :cond_3
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->getMyDownloadsUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method

.method shouldScanFile()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 726
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x58

    if-eq v1, v2, :cond_1

    .line 727
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 728
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    const-string v2, "content://drm/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mMediaScanned:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    invoke-static {v1}, Lcom/android/providers/downloads/Helpers;->isExternalStorage(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    :cond_2
    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v1}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "application/vnd.oma.drm.content"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/vnd.oma.drm.rights+wbxml"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/vnd.oma.drm.rights+xml"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/vnd.oma.drm.message"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method startDownloadThread()V
    .locals 4

    .prologue
    .line 762
    new-instance v0, Lcom/android/providers/downloads/DownloadThread;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/providers/downloads/StorageManager;->getInstance(Landroid/content/Context;)Lcom/android/providers/downloads/StorageManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/providers/downloads/DownloadThread;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/DownloadInfo;Lcom/android/providers/downloads/StorageManager;)V

    .line 764
    .local v0, downloader:Lcom/android/providers/downloads/DownloadThread;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v1, v0}, Lcom/android/providers/downloads/SystemFacade;->startThread(Ljava/lang/Thread;)V

    .line 765
    return-void
.end method

.method startIfReady(JZLcom/android/providers/downloads/StorageManager;)V
    .locals 7
    .parameter "now"
    .parameter "isInsertDownload"
    .parameter "storageManager"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xc0

    .line 631
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/DownloadInfo;->isReadyToStart(JZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 650
    :goto_0
    return-void

    .line 636
    :cond_0
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_1

    .line 637
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service spawning thread to handle download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 642
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "scanned"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 643
    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    if-eq v1, v5, :cond_2

    .line 644
    iput v5, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    .line 645
    const-string v1, "status"

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 649
    invoke-static {}, Lcom/android/providers/downloads/DownloadHandler;->getInstance()Lcom/android/providers/downloads/DownloadHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/providers/downloads/DownloadHandler;->enqueueDownload(Lcom/android/providers/downloads/DownloadInfo;)V

    goto :goto_0
.end method
