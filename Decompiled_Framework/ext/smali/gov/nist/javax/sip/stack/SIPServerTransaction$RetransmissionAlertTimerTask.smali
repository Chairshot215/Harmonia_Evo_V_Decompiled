.class Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPServerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPServerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RetransmissionAlertTimerTask"
.end annotation


# instance fields
.field dialogId:Ljava/lang/String;

.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

.field ticks:I

.field ticksLeft:I


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticks:I

    iget v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticks:I

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticksLeft:I

    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 3

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticksLeft:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticksLeft:I

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticksLeft:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->fireRetransmissionTimer()V

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticks:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$RetransmissionAlertTimerTask;->ticksLeft:I

    :cond_0
    return-void
.end method
