.class abstract Lcom/htc/android/mail/mailservice/DirectPushService$State;
.super Ljava/lang/Object;
.source "DirectPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/DirectPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "State"
.end annotation


# static fields
.field public static final POLL:I = 0x2

.field public static final STOP:I = 0x1


# instance fields
.field private mInstance:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;

.field protected type:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1370
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1374
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$State;->type:I

    .line 1376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$State;->mInstance:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1370
    invoke-direct {p0}, Lcom/htc/android/mail/mailservice/DirectPushService$State;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract enterAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
.end method

.method public abstract exitAction(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
.end method

.method public getInstance()Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$State;->mInstance:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;

    return-object v0
.end method

.method public abstract onChangeToIdle(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
.end method

.method public abstract onConnected(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
.end method

.method public abstract onDisconnected(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
.end method

.method public abstract onReceiveHuxSms(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
.end method

.method public abstract onStartDp(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
.end method

.method public abstract onStopDp(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
.end method

.method public setInstance(Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;)V
    .locals 0
    .parameter "instance"

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$State;->mInstance:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;

    .line 1385
    return-void
.end method
