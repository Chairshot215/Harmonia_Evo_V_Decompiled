.class public Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;
.super Ljava/lang/Object;
.source "SIPDialog.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/SIPDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReInviteSender"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xe2571ebeadfbf2bL


# instance fields
.field ctx:Ljavax/sip/ClientTransaction;

.field final synthetic this$0:Lgov/nist/javax/sip/stack/SIPDialog;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/SIPDialog;Ljavax/sip/ClientTransaction;)V
    .locals 0

    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x0

    const-wide/16 v6, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->takeAckSem()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Could not send re-INVITE time out ClientTransaction"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    :cond_0
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    check-cast v8, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->fireTimeoutTimer()V

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;
    invoke-static {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$100(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;
    invoke-static {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$100(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v8

    instance-of v8, v8, Lgov/nist/javax/sip/SipListenerExt;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    const/4 v9, 0x3

    #calls: Lgov/nist/javax/sip/stack/SIPDialog;->raiseErrorEvent(I)V
    invoke-static {v8, v9}, Lgov/nist/javax/sip/stack/SIPDialog;->access$200(Lgov/nist/javax/sip/stack/SIPDialog;I)V

    :cond_1
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v8

    sget-object v9, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-eq v8, v9, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    sub-long v6, v8, v4

    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_3

    :try_start_1
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->reInviteWaitTime:I
    invoke-static {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$300(Lgov/nist/javax/sip/stack/SIPDialog;)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :try_start_2
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v8

    sget-object v9, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-eq v8, v9, :cond_4

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    iget-object v9, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lgov/nist/javax/sip/stack/SIPDialog;->sendRequest(Ljavax/sip/ClientTransaction;Z)V

    :cond_4
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "re-INVITE successfully sent"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_0
    iput-object v11, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    return-void

    :cond_6
    :try_start_3
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    const-string v9, "BYE"

    invoke-virtual {v8, v9}, Lgov/nist/javax/sip/stack/SIPDialog;->createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;

    move-result-object v1

    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-static {}, Lgov/nist/javax/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax/sip/header/UserAgentHeader;

    move-result-object v8

    invoke-interface {v1, v8}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    :cond_7
    new-instance v3, Lgov/nist/javax/sip/header/Reason;

    invoke-direct {v3}, Lgov/nist/javax/sip/header/Reason;-><init>()V

    const/16 v8, 0x400

    invoke-interface {v3, v8}, Ljavax/sip/header/ReasonHeader;->setCause(I)V

    const-string v8, "Timed out waiting to re-INVITE"

    invoke-interface {v3, v8}, Ljavax/sip/header/ReasonHeader;->setText(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljavax/sip/message/Request;->addHeader(Ljavax/sip/header/Header;)V

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v8

    invoke-virtual {v8, v1}, Lgov/nist/javax/sip/SipProviderImpl;->getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;

    move-result-object v0

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v8, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->sendRequest(Ljavax/sip/ClientTransaction;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Error sending re-INVITE"

    invoke-interface {v8, v9, v2}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    iput-object v11, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    throw v8

    :catch_1
    move-exception v2

    :try_start_5
    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v8

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v8

    const-string v9, "Interrupted sleep"

    invoke-interface {v8, v9}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method

.method public terminate()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->ctx:Ljavax/sip/ClientTransaction;

    invoke-interface {v1}, Ljavax/sip/ClientTransaction;->terminate()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljavax/sip/ObjectInUseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPDialog$ReInviteSender;->this$0:Lgov/nist/javax/sip/stack/SIPDialog;

    #getter for: Lgov/nist/javax/sip/stack/SIPDialog;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;
    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->access$000(Lgov/nist/javax/sip/stack/SIPDialog;)Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "unexpected error"

    invoke-interface {v1, v2, v0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
