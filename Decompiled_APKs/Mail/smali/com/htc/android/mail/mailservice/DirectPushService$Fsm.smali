.class Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
.super Ljava/lang/Object;
.source "DirectPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/DirectPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Fsm"
.end annotation


# instance fields
.field private mAccountId:J

.field private mAdditionalSyncWhenErrorAlarmEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

.field public mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$StateFactory;)V
    .locals 1
    .parameter "context"
    .parameter "accountId"
    .parameter "stateFactory"

    .prologue
    .line 1247
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    .line 1245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mAdditionalSyncWhenErrorAlarmEnabled:Z

    .line 1248
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mContext:Landroid/content/Context;

    .line 1249
    iput-wide p2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mAccountId:J

    .line 1250
    iput-object p4, p0, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    .line 1251
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mStateFactory:Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;

    invoke-interface {v0}, Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;->getStopState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mCurrentState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    .line 1252
    return-void
.end method


# virtual methods
.method public changeState(Lcom/htc/android/mail/mailservice/DirectPushService$State;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1275
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DirectPushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    :cond_0
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mCurrentState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    .line 1277
    return-void
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 1267
    iget-wide v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mAccountId:J

    return-wide v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentState()Lcom/htc/android/mail/mailservice/DirectPushService$State;
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mCurrentState:Lcom/htc/android/mail/mailservice/DirectPushService$State;

    return-object v0
.end method

.method public isAdditionalSyncWhenErrorAlarmEnabled()Z
    .locals 1

    .prologue
    .line 1255
    iget-boolean v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mAdditionalSyncWhenErrorAlarmEnabled:Z

    return v0
.end method

.method public setAdditionalSyncWhenErrorAlarmEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1259
    iput-boolean p1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->mAdditionalSyncWhenErrorAlarmEnabled:Z

    .line 1260
    return-void
.end method
