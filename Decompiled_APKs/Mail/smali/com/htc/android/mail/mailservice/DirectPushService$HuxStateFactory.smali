.class Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;
.super Ljava/lang/Object;
.source "DirectPushService.java"

# interfaces
.implements Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/DirectPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HuxStateFactory"
.end annotation


# static fields
.field private static mDpState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

.field private static mIdleState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

.field private static mPollState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

.field private static mShortDpState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

.field private static mStopState:Lcom/htc/android/mail/mailservice/DirectPushService$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1328
    sput-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;->mStopState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    .line 1329
    sput-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;->mDpState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    .line 1330
    sput-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;->mPollState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    .line 1331
    sput-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;->mIdleState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    .line 1332
    sput-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;->mShortDpState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1327
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1327
    invoke-direct {p0}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getDpState()Lcom/htc/android/mail/mailservice/DirectPushService$State;
    .locals 2

    .prologue
    .line 1342
    sget-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;->mDpState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    if-nez v0, :cond_0

    .line 1343
    new-instance v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxDpState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxDpState;-><init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V

    sput-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;->mDpState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    .line 1345
    :cond_0
    sget-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;->mDpState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    return-object v0
.end method

.method public getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;
    .locals 2

    .prologue
    .line 1356
    sget-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;->mIdleState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    if-nez v0, :cond_0

    .line 1357
    new-instance v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxIdleState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxIdleState;-><init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V

    sput-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;->mIdleState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    .line 1359
    :cond_0
    sget-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;->mIdleState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    return-object v0
.end method

.method public getPollState()Lcom/htc/android/mail/mailservice/DirectPushService$State;
    .locals 1

    .prologue
    .line 1349
    sget-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;->mPollState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    if-nez v0, :cond_0

    .line 1350
    new-instance v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxPollState;

    invoke-direct {v0}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxPollState;-><init>()V

    sput-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;->mPollState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    .line 1352
    :cond_0
    sget-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;->mPollState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    return-object v0
.end method

.method public getShortDpState()Lcom/htc/android/mail/mailservice/DirectPushService$State;
    .locals 2

    .prologue
    .line 1363
    sget-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;->mShortDpState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    if-nez v0, :cond_0

    .line 1364
    new-instance v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxShortDpState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxShortDpState;-><init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V

    sput-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;->mShortDpState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    .line 1366
    :cond_0
    sget-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;->mShortDpState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    return-object v0
.end method

.method public getStopState()Lcom/htc/android/mail/mailservice/DirectPushService$State;
    .locals 1

    .prologue
    .line 1335
    sget-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;->mStopState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    if-nez v0, :cond_0

    .line 1336
    new-instance v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStopState;

    invoke-direct {v0}, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStopState;-><init>()V

    sput-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;->mStopState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    .line 1338
    :cond_0
    sget-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$HuxStateFactory;->mStopState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    return-object v0
.end method
