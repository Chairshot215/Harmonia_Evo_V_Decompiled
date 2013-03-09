.class Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;
.super Lgov/nist/javax/sip/stack/SIPStackTimerTask;
.source "SIPDialog.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogDeleteIfNoAckSentTask"
.end annotation


# instance fields
.field private seqno:J

.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPDialog;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPDialog;J)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPStackTimerTask;-><init>()V

    iput-wide p2, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->seqno:J

    return-void
.end method


# virtual methods
.method protected runTask()V
    .locals 9

    const/4 v8, 0x2

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->highestSequenceNumberAcknowledged:J
    invoke-static {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->access$900(Lgov/nist/javax/sip/stack/SIPDialog;)J

    move-result-wide v4

    iget-wide v6, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->seqno:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    const/4 v5, 0x0

    #setter for: Lgov/nist/javax/sip/stack/SIPDialog;->dialogDeleteIfNoAckSentTask:Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;
    invoke-static {v4, v5}, Lgov/nist/javax/sip/stack/SIPDialog;->access$1002(Lgov/nist/javax/sip/stack/SIPDialog;Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;)Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent:Z
    invoke-static {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->access$1100(Lgov/nist/javax/sip/stack/SIPDialog;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "ACK Was not sent. killing dialog"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;
    invoke-static {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->access$100(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v4

    instance-of v4, v4, Lgov/nist/javax/sip/SipListenerExt;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #calls: Lgov/nist/javax/sip/stack/SIPDialog;->raiseErrorEvent(I)V
    invoke-static {v4, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$200(Lgov/nist/javax/sip/stack/SIPDialog;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "ACK Was not sent. Sending BYE"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    :cond_4
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;
    invoke-static {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->access$100(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v4

    instance-of v4, v4, Lgov/nist/javax/sip/SipListenerExt;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #calls: Lgov/nist/javax/sip/stack/SIPDialog;->raiseErrorEvent(I)V
    invoke-static {v4, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$200(Lgov/nist/javax/sip/stack/SIPDialog;I)V

    goto :goto_0

    :cond_5
    :try_start_0
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    const-string v5, "BYE"

    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/stack/SIPDialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v1

    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v4

    invoke-interface {v1, v4}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    :cond_6
    new-instance v3, Lgov/nist/javax/sip/header/Reason;

    invoke-direct {v3}, Lgov/nist/javax/sip/header/Reason;-><init>()V

    const-string v4, "SIP"

    invoke-interface {v3, v4}, Ljavax/sip/header/ReasonHeader;->setProtocol(Ljava/lang/String;)V

    const/16 v4, 0x401

    invoke-interface {v3, v4}, Ljavax/sip/header/ReasonHeader;->setCause(I)V

    const-string v4, "Timed out waiting to send ACK"

    invoke-interface {v3, v4}, Ljavax/sip/header/ReasonHeader;->setText(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v4

    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/SipProviderImpl;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v4, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->sendRequest(Ljavax/sip/ClientTransaction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPDialog$DialogDeleteIfNoAckSentTask;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    goto :goto_0
.end method
