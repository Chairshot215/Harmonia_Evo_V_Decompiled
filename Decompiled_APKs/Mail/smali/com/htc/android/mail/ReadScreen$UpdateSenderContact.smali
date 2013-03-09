.class Lcom/htc/android/mail/ReadScreen$UpdateSenderContact;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSenderContact"
.end annotation


# instance fields
.field rAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/ReadScreen;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "addr"

    .prologue
    .line 1987
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$UpdateSenderContact;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1985
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/ReadScreen$UpdateSenderContact;->rAddress:Ljava/lang/String;

    .line 1988
    iput-object p2, p0, Lcom/htc/android/mail/ReadScreen$UpdateSenderContact;->rAddress:Ljava/lang/String;

    .line 1989
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1992
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$UpdateSenderContact;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v1}, Lcom/htc/android/mail/ReadScreen;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2004
    :cond_0
    :goto_0
    return-void

    .line 1999
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$UpdateSenderContact;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$UpdateSenderContact;->rAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/ReadScreen;->getContactInfo(Ljava/lang/String;)Lcom/htc/android/mail/ReceiverList;

    move-result-object v0

    .line 2000
    .local v0, info:Lcom/htc/android/mail/ReceiverList;
    if-eqz v0, :cond_0

    .line 2001
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$UpdateSenderContact;->this$0:Lcom/htc/android/mail/ReadScreen;

    #setter for: Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;
    invoke-static {v1, v0}, Lcom/htc/android/mail/ReadScreen;->access$2702(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/ReceiverList;)Lcom/htc/android/mail/ReceiverList;

    .line 2002
    iget-object v1, p0, Lcom/htc/android/mail/ReadScreen$UpdateSenderContact;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/mail/ReadScreen;->access$2800(Lcom/htc/android/mail/ReadScreen;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x15

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$UpdateSenderContact;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mSenderRecpt:Lcom/htc/android/mail/ReceiverList;
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$2700(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/ReceiverList;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
