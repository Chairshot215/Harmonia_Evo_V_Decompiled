.class Lcom/htc/android/mail/mailservice/DirectPushService$NormalStateFactory;
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
    name = "NormalStateFactory"
.end annotation


# static fields
.field private static mDpState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

.field private static mIdleState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

.field private static mPollState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

.field private static mStopState:Lcom/htc/android/mail/mailservice/DirectPushService$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1289
    sput-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$NormalStateFactory;->mStopState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    .line 1290
    sput-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$NormalStateFactory;->mDpState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    .line 1291
    sput-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$NormalStateFactory;->mPollState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    .line 1292
    sput-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$NormalStateFactory;->mIdleState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1288
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDpState()Lcom/htc/android/mail/mailservice/DirectPushService$State;
    .locals 2

    .prologue
    .line 1302
    sget-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$NormalStateFactory;->mDpState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    if-nez v0, :cond_0

    .line 1303
    new-instance v0, Lcom/htc/android/mail/mailservice/DirectPushService$DpState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/android/mail/mailservice/DirectPushService$DpState;-><init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V

    sput-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$NormalStateFactory;->mDpState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    .line 1305
    :cond_0
    sget-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$NormalStateFactory;->mDpState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    return-object v0
.end method

.method public getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;
    .locals 2

    .prologue
    .line 1316
    sget-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$NormalStateFactory;->mIdleState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    if-nez v0, :cond_0

    .line 1317
    new-instance v0, Lcom/htc/android/mail/mailservice/DirectPushService$IdleState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/android/mail/mailservice/DirectPushService$IdleState;-><init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V

    sput-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$NormalStateFactory;->mIdleState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    .line 1319
    :cond_0
    sget-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$NormalStateFactory;->mIdleState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    return-object v0
.end method

.method public getPollState()Lcom/htc/android/mail/mailservice/DirectPushService$State;
    .locals 1

    .prologue
    .line 1309
    sget-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$NormalStateFactory;->mPollState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    if-nez v0, :cond_0

    .line 1310
    new-instance v0, Lcom/htc/android/mail/mailservice/DirectPushService$PollState;

    invoke-direct {v0}, Lcom/htc/android/mail/mailservice/DirectPushService$PollState;-><init>()V

    sput-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$NormalStateFactory;->mPollState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    .line 1312
    :cond_0
    sget-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$NormalStateFactory;->mPollState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    return-object v0
.end method

.method public getShortDpState()Lcom/htc/android/mail/mailservice/DirectPushService$State;
    .locals 1

    .prologue
    .line 1323
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStopState()Lcom/htc/android/mail/mailservice/DirectPushService$State;
    .locals 1

    .prologue
    .line 1295
    sget-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$NormalStateFactory;->mStopState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    if-nez v0, :cond_0

    .line 1296
    new-instance v0, Lcom/htc/android/mail/mailservice/DirectPushService$StopState;

    invoke-direct {v0}, Lcom/htc/android/mail/mailservice/DirectPushService$StopState;-><init>()V

    sput-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$NormalStateFactory;->mStopState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    .line 1298
    :cond_0
    sget-object v0, Lcom/htc/android/mail/mailservice/DirectPushService$NormalStateFactory;->mStopState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    return-object v0
.end method
