.class public Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;
.super Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;
.source "FlagItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/FlagItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppFlagType"
.end annotation


# instance fields
.field private final mRpcId:I


# direct methods
.method private constructor <init>(III)V
    .locals 0
    .parameter "rpcId"
    .parameter "stringId"
    .parameter "textEntryStringId"

    .prologue
    .line 395
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;-><init>(II)V

    .line 396
    iput p1, p0, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;->mRpcId:I

    .line 397
    return-void
.end method

.method public static getAppFlags(Z)Ljava/util/List;
    .locals 7
    .parameter "showOwnershipFlags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 369
    sget-object v2, Lcom/google/android/finsky/config/G;->vendingHideContentRating:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 370
    .local v0, hideContent:Z
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 371
    .local v1, output:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/activities/FlagItemFragment$FlagType;>;"
    new-instance v2, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;

    const/4 v3, 0x1

    const v4, 0x7f0701fc

    invoke-direct {v2, v3, v4, v6}, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v2, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;

    const/4 v3, 0x2

    const v4, 0x7f0701fd

    invoke-direct {v2, v3, v4, v6}, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v2, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;

    const/4 v3, 0x3

    const v4, 0x7f0701fe

    invoke-direct {v2, v3, v4, v6}, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    if-eqz p0, :cond_0

    .line 378
    new-instance v2, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;

    const/4 v3, 0x4

    const v4, 0x7f0701ff

    const v5, 0x7f070206

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_0
    if-nez v0, :cond_1

    .line 382
    new-instance v2, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;

    const/4 v3, 0x6

    const v4, 0x7f070200

    invoke-direct {v2, v3, v4, v6}, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_1
    new-instance v2, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;

    const/4 v3, 0x5

    const v4, 0x7f070201

    const v5, 0x7f070205

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    return-object v1
.end method


# virtual methods
.method public postFlag(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "doc"
    .parameter "flagMessage"

    .prologue
    .line 401
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getVendingApi()Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v0

    .line 402
    .local v0, vendingApi:Lcom/google/android/vending/remoting/api/VendingApi;
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/local/AssetUtils;->makeAssetId(Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;->mRpcId:I

    new-instance v4, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType$1;

    invoke-direct {v4, p0, p1}, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType$1;-><init>(Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType$2;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType$2;-><init>(Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;)V

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/vending/remoting/api/VendingApi;->flagAsset(Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 413
    return-void
.end method
