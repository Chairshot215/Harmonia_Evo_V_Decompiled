.class public Lcom/google/android/finsky/navigationmanager/NavigationManager;
.super Ljava/lang/Object;
.source "NavigationManager.java"


# instance fields
.field private mActivity:Lcom/google/android/finsky/activities/MainActivity;

.field private final mBackStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/finsky/navigationmanager/NavigationState;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/activities/MainActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/google/android/finsky/utils/MainThreadStack;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/MainThreadStack;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->init(Lcom/google/android/finsky/activities/MainActivity;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/navigationmanager/NavigationManager;)Lcom/google/android/finsky/activities/MainActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/navigationmanager/NavigationManager;)Landroid/support/v4/app/FragmentManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method private canNavigate()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private goToAggregatedHome()V
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 156
    return-void
.end method

.method private goToCorpusHome()V
    .locals 10

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 762
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    .line 767
    .local v4, dfeToc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v4, :cond_0

    .line 776
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v9

    .line 777
    .local v9, currentDocument:Lcom/google/android/finsky/api/model/Document;
    :goto_1
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 778
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 779
    .local v7, currTop:Lcom/google/android/finsky/navigationmanager/NavigationState;
    iget v8, v7, Lcom/google/android/finsky/navigationmanager/NavigationState;->pageType:I

    .line 780
    .local v8, currType:I
    if-ne v8, v1, :cond_2

    .line 781
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 783
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v1, v7, Lcom/google/android/finsky/navigationmanager/NavigationState;->backstackName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_0

    .line 787
    :cond_2
    const/4 v0, 0x2

    if-ne v8, v0, :cond_4

    .line 800
    .end local v7           #currTop:Lcom/google/android/finsky/navigationmanager/NavigationState;
    .end local v8           #currType:I
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 801
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    iget-object v0, v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->backstackName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_0

    .line 793
    .restart local v7       #currTop:Lcom/google/android/finsky/navigationmanager/NavigationState;
    .restart local v8       #currType:I
    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 804
    .end local v7           #currTop:Lcom/google/android/finsky/navigationmanager/NavigationState;
    .end local v8           #currType:I
    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v1

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 806
    if-eqz v9, :cond_6

    .line 807
    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    .line 808
    .local v3, backendId:I
    invoke-virtual {v4, v3}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v6

    .line 809
    .local v6, corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    if-eqz v6, :cond_6

    .line 810
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToCorpusHome(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    goto :goto_0

    .line 817
    .end local v3           #backendId:I
    .end local v6           #corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_6
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome()V

    goto/16 :goto_0
.end method

.method private goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter "doc"
    .parameter "originalUrl"
    .parameter "cookie"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "replaceTop"

    .prologue
    .line 272
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 274
    return-void
.end method

.method private goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .parameter "doc"
    .parameter "originalUrl"
    .parameter "cookie"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "returnAfterPurchase"
    .parameter "replaceTop"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x5

    .line 291
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v3

    if-nez v3, :cond_0

    .line 335
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    .line 296
    .local v2, type:I
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasAntennaInfo()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/finsky/activities/AntennaFragment;->newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/AntennaFragment;

    move-result-object v3

    invoke-direct {p0, v4, v3, p8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    if-ne v3, v5, :cond_2

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasDealOfTheDayInfo()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 300
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;

    move-result-object v3

    invoke-direct {p0, v4, v3, p8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    goto :goto_0

    .line 305
    :cond_2
    sparse-switch v2, :sswitch_data_0

    .line 323
    invoke-static/range {p1 .. p7}, Lcom/google/android/finsky/activities/DetailsFragment;->newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/DetailsFragment;

    move-result-object v0

    .line 331
    .local v0, detailsFragment:Lcom/google/android/finsky/activities/DetailsFragment;
    invoke-direct {p0, v4, v0, p8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    goto :goto_0

    .line 312
    .end local v0           #detailsFragment:Lcom/google/android/finsky/activities/DetailsFragment;
    :sswitch_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/CreatorDetailsFragment;

    move-result-object v3

    invoke-direct {p0, v4, v3, p8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    goto :goto_0

    .line 316
    :sswitch_1
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 317
    .local v1, resources:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f070102

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f070243

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    goto :goto_0

    .line 305
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method private showPage(ILandroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter "pageType"
    .parameter "fragment"

    .prologue
    .line 570
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    .line 571
    return-void
.end method

.method private showPage(ILandroid/support/v4/app/Fragment;Z)V
    .locals 3
    .parameter "pageType"
    .parameter "fragment"
    .parameter "replaceTop"

    .prologue
    .line 587
    invoke-static {}, Lcom/google/android/finsky/utils/FinskyLog;->startTiming()V

    .line 589
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 590
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f080037

    invoke-virtual {v0, v2, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 592
    if-eqz p3, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->popBackStack()V

    .line 595
    :cond_0
    new-instance v1, Lcom/google/android/finsky/navigationmanager/NavigationState;

    invoke-direct {v1, p1}, Lcom/google/android/finsky/navigationmanager/NavigationState;-><init>(I)V

    .line 597
    .local v1, state:Lcom/google/android/finsky/navigationmanager/NavigationState;
    iget-object v2, v1, Lcom/google/android/finsky/navigationmanager/NavigationState;->backstackName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 598
    const/16 v2, 0x1001

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 599
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 602
    return-void
.end method


# virtual methods
.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 822
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 823
    return-void
.end method

.method public buy(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "account"
    .parameter "doc"
    .parameter "offerType"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "continueUrl"

    .prologue
    .line 642
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->buy(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 643
    return-void
.end method

.method public buy(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .parameter "account"
    .parameter "doc"
    .parameter "offerType"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "returnAfterPurchase"

    .prologue
    .line 647
    invoke-virtual {p2, p3}, Lcom/google/android/finsky/api/model/Document;->needsConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object/from16 v3, p5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/utils/PurchaseInitiator;->makeFreePurchase(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :goto_0
    return-void

    .line 652
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v11

    .line 653
    .local v11, contentType:I
    packed-switch v11, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 664
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported backend for buy."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :pswitch_2
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getCookie()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p7

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToPurchase(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 653
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public canGoUp()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 732
    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 754
    :cond_0
    :goto_0
    return v4

    .line 736
    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 737
    .local v1, currentState:Lcom/google/android/finsky/navigationmanager/NavigationState;
    iget v5, v1, Lcom/google/android/finsky/navigationmanager/NavigationState;->pageType:I

    if-eq v5, v3, :cond_0

    .line 741
    iget v5, v1, Lcom/google/android/finsky/navigationmanager/NavigationState;->pageType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    move v4, v3

    .line 743
    goto :goto_0

    .line 746
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/fragments/PageFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v2

    .line 747
    .local v2, toc:Lcom/google/android/finsky/api/model/DfeToc;
    if-eqz v2, :cond_0

    .line 752
    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 754
    .local v0, corporaCount:I
    if-le v0, v3, :cond_3

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public canSearch()Z
    .locals 1

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 843
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 841
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 839
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 83
    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method public deserialize(Landroid/os/Bundle;)Z
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 446
    const-string v3, "nm_state"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 449
    .local v0, contents:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/navigationmanager/NavigationState;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v3

    if-nez v3, :cond_1

    .line 452
    :cond_0
    const/4 v3, 0x0

    .line 465
    :goto_0
    return v3

    .line 455
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 456
    .local v2, st:Lcom/google/android/finsky/navigationmanager/NavigationState;
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 463
    .end local v2           #st:Lcom/google/android/finsky/navigationmanager/NavigationState;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/fragments/PageFragment;->rebindActionBar()V

    .line 465
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public flush()Z
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    move-result v0

    return v0
.end method

.method public getActivePage()Lcom/google/android/finsky/fragments/PageFragment;
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f080037

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/fragments/PageFragment;

    return-object v0
.end method

.method public getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 8
    .parameter "account"
    .parameter "doc"
    .parameter "offerType"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "continueUrl"

    .prologue
    .line 615
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method public getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View$OnClickListener;
    .locals 9
    .parameter "account"
    .parameter "doc"
    .parameter "offerType"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "returnAfterPurchase"

    .prologue
    .line 622
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "doc"
    .parameter "currentPageUrl"

    .prologue
    .line 521
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasLinkAnnotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager$1;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    .line 548
    :goto_0
    return-object v0

    .line 534
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasContainerAnnotation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getContainerAnnotation()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 536
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    goto :goto_0

    .line 548
    :cond_1
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentDocument()Lcom/google/android/finsky/api/model/Document;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 690
    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    if-nez v2, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-object v1

    .line 693
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    .line 694
    .local v0, active:Lcom/google/android/finsky/fragments/PageFragment;
    if-eqz v0, :cond_0

    .line 697
    instance-of v2, v0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    if-eqz v2, :cond_0

    .line 698
    check-cast v0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    .end local v0           #active:Lcom/google/android/finsky/fragments/PageFragment;
    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentPageType()I
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    iget v0, v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->pageType:I

    goto :goto_0
.end method

.method public getOpenClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "doc"
    .parameter "account"

    .prologue
    .line 674
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    return-object v0
.end method

.method public goBack()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 417
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v4}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 441
    :cond_0
    :goto_0
    return v3

    .line 422
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/google/android/finsky/utils/FinskyLog;->startTiming()V

    .line 423
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 424
    .local v0, currentEntry:Lcom/google/android/finsky/navigationmanager/NavigationState;
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 426
    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/navigationmanager/NavigationState;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    .local v2, newStackEntry:Lcom/google/android/finsky/navigationmanager/NavigationState;
    const/4 v3, 0x1

    goto :goto_0

    .line 436
    .end local v0           #currentEntry:Lcom/google/android/finsky/navigationmanager/NavigationState;
    .end local v2           #newStackEntry:Lcom/google/android/finsky/navigationmanager/NavigationState;
    :catch_0
    move-exception v1

    .line 441
    .local v1, ex:Ljava/util/EmptyStackException;
    goto :goto_0
.end method

.method public goBrowse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 2
    .parameter "url"
    .parameter "title"
    .parameter "backendId"
    .parameter "referrerBrowseUrl"
    .parameter "dfeToc"

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x4

    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;)V

    .line 174
    :cond_0
    return-void
.end method

.method public goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 1
    .parameter "dfeToc"

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V
    .locals 7
    .parameter "dfeToc"
    .parameter "referrerUrl"

    .prologue
    const/4 v6, 0x1

    .line 112
    if-nez p1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    .line 118
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 120
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 121
    .local v0, corpusMetadata:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v5

    invoke-static {v3, v4, v5, p2, p1}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    move-result-object v1

    .line 124
    .local v1, fragment:Lcom/google/android/finsky/activities/TabbedBrowseFragment;
    const/4 v3, 0x2

    invoke-direct {p0, v3, v1, v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    goto :goto_0

    .line 127
    .end local v0           #corpusMetadata:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    .end local v1           #fragment:Lcom/google/android/finsky/activities/TabbedBrowseFragment;
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getHomeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 128
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getHomeUrl()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, landingUrl:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, p1, v2, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v2           #landingUrl:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLandingUrl()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #landingUrl:Ljava/lang/String;
    goto :goto_1

    .line 138
    .end local v2           #landingUrl:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/MainActivity;->restartOnResume()V

    goto :goto_0
.end method

.method public goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "dfeToc"
    .parameter "landingUrl"
    .parameter "referrerUrl"

    .prologue
    const/4 v1, 0x1

    .line 143
    invoke-static {p1, p2, p3}, Lcom/google/android/finsky/activities/CorporaHomeFragment;->newInstance(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/CorporaHomeFragment;

    move-result-object v0

    invoke-direct {p0, v1, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    .line 145
    return-void
.end method

.method public goToAllReviews(Lcom/google/android/finsky/api/model/Document;)V
    .locals 1
    .parameter "document"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v0, p1}, Lcom/google/android/finsky/activities/ReviewsActivity;->show(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_0
.end method

.method public goToCorpusHome(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V
    .locals 2
    .parameter "url"
    .parameter "title"
    .parameter "backendId"
    .parameter "dfeToc"
    .parameter "referrerUrl"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x2

    invoke-static {p1, p2, p3, p5, p4}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;)V

    .line 165
    :cond_0
    return-void
.end method

.method public goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "doc"
    .parameter "cookie"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "continueUrl"

    .prologue
    .line 256
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 258
    return-void
.end method

.method public goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "url"
    .parameter "cookie"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "continueUrl"

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x6

    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/finsky/utils/DetailsShimFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/utils/DetailsShimFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "url"
    .parameter "cookie"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "returnAfterPurchase"

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 245
    :cond_0
    const/4 v0, 0x6

    invoke-static/range {p1 .. p6}, Lcom/google/android/finsky/utils/DetailsShimFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/utils/DetailsShimFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public goToFlagContent(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v0, p1}, Lcom/google/android/finsky/activities/FlagItemDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    :cond_0
    return-void
.end method

.method public goToImagesLightbox(Lcom/google/android/finsky/api/model/Document;II)V
    .locals 1
    .parameter "doc"
    .parameter "initialIndex"
    .parameter "imageType"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->show(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;II)V

    goto :goto_0
.end method

.method public goToMyDownloads(Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 2
    .parameter "dfeToc"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x3

    invoke-static {p1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->newInstance(Lcom/google/android/finsky/api/model/DfeToc;)Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;)V

    .line 189
    :cond_0
    return-void
.end method

.method public goToMyWishlist()V
    .locals 2

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/16 v0, 0xa

    new-instance v1, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;)V

    .line 196
    :cond_0
    return-void
.end method

.method public goToPurchase(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .parameter "account"
    .parameter "url"
    .parameter "offerType"
    .parameter "referrerUrl"
    .parameter "listReferrerCookie"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "docIdToPurchase"
    .parameter "isSynchronous"

    .prologue
    .line 368
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToPurchase(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 370
    return-void
.end method

.method public goToPurchase(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .parameter "account"
    .parameter "url"
    .parameter "offerType"
    .parameter "referrerUrl"
    .parameter "listReferrerCookie"
    .parameter "isDirectLinkPurchase"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "docIdToPurchase"
    .parameter "isSynchronous"

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    if-eqz p10, :cond_1

    .line 381
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/16 v9, 0x21

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    invoke-static/range {v0 .. v9}, Lcom/google/android/finsky/activities/SynchronousPurchaseActivity;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-static/range {v0 .. v8}, Lcom/google/android/finsky/activities/PurchaseDialog;->show(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public goToScreenshots(Lcom/google/android/finsky/api/model/Document;I)V
    .locals 1
    .parameter "doc"
    .parameter "initialIndex"

    .prologue
    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToImagesLightbox(Lcom/google/android/finsky/api/model/Document;II)V

    .line 344
    return-void
.end method

.method public goToSearch(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "query"
    .parameter "backend"
    .parameter "referrerUrl"

    .prologue
    .line 199
    invoke-static {p1, p2}, Lcom/google/android/finsky/api/DfeUtils;->formSearchUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public goToSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "query"
    .parameter "searchUrl"
    .parameter "referrerUrl"

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x7

    invoke-static {p1, p2, p3}, Lcom/google/android/finsky/activities/SearchFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/SearchFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    .line 206
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    return-void
.end method

.method public goUp()V
    .locals 2

    .prologue
    .line 704
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    .line 709
    .local v0, currentState:Lcom/google/android/finsky/navigationmanager/NavigationState;
    iget v1, v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->pageType:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 722
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome()V

    goto :goto_0

    .line 716
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToCorpusHome()V

    goto :goto_0

    .line 719
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBack()Z

    goto :goto_0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public handleDeepLink(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 104
    const/16 v0, 0x9

    invoke-static {p1}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->newInstance(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;)V

    .line 105
    return-void
.end method

.method public init(Lcom/google/android/finsky/activities/MainActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    .line 94
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 95
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 6
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    const/4 v2, 0x0

    .line 504
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 505
    const-string v0, "dialog_details_url"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, detailsUrl:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 507
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .end local v1           #detailsUrl:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public openItem(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V
    .locals 3
    .parameter "account"
    .parameter "doc"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->openItem(Landroid/content/Context;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManager;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    .line 514
    return-void
.end method

.method public popBackStack()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 610
    return-void
.end method

.method public refreshPage()V
    .locals 3

    .prologue
    .line 476
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    :goto_0
    return-void

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    .line 481
    .local v0, active:Lcom/google/android/finsky/fragments/PageFragment;
    if-eqz v0, :cond_1

    .line 485
    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    .line 486
    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->onDataChanged()V

    goto :goto_0

    .line 488
    :cond_1
    const-string v1, "Called refresh but there was no active page"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 826
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 827
    return-void
.end method

.method public replaceDetailsShimWithDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter "doc"
    .parameter "originalUrl"
    .parameter "cookie"
    .parameter "referrerUrl"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "returnAfterPurchase"

    .prologue
    .line 266
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 268
    return-void
.end method

.method public searchFromSuggestion(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "query"
    .parameter "backend"
    .parameter "referrerUrl"

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x7

    invoke-static {p1, p2}, Lcom/google/android/finsky/api/DfeUtils;->formSearchUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p3}, Lcom/google/android/finsky/activities/SearchFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/SearchFragment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    .line 215
    :cond_0
    return-void
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 409
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 413
    .local v0, asList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/navigationmanager/NavigationState;>;"
    const-string v1, "nm_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public showAppNeededDialog(I)V
    .locals 3
    .parameter "docBackend"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->showAppNeededDialog(Landroid/content/Context;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManager;I)V

    .line 498
    return-void
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    .line 401
    return-void
.end method
