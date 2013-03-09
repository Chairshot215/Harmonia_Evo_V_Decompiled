.class Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPServerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPServerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProvisionalResponseTask"
.end annotation


# instance fields
.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

.field ticks:I

.field ticksLeft:I


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    .locals 1

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticks:I

    iget v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticks:I

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 3

    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->cancel()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    #calls: Lgov/nist/javax/sip/stack/SIPServerTransaction;->fireReliableResponseRetransmissionTimer()V
    invoke-static {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->access$000(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticks:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    iput v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticks:I

    iget v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->ticksLeft:I

    const/16 v2, 0x40

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->cancel()Z

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    sget-object v2, Lgov/nist/javax/sip/stack/SIPTransaction;->TERMINATED_STATE:Ljavax/sip/TransactionState;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setState(Ljavax/sip/TransactionState;)V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPServerTransaction$ProvisionalResponseTask;->this$0:Lgov/nist/javax/sip/stack/SIPServerTransaction;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->fireTimeoutTimer()V

    goto :goto_0
.end method
