.class Lcom/htc/android/mail/MailList$RequestHandler$4;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList$RequestHandler;->onMarkStarComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Lcom/htc/android/mail/MailMessage;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList$RequestHandler;

.field final synthetic val$flag:Ljava/lang/Integer;

.field final synthetic val$message:Lcom/htc/android/mail/MailMessage;

.field final synthetic val$target:Lcom/htc/android/mail/MailList;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList$RequestHandler;Ljava/lang/Integer;Lcom/htc/android/mail/MailList;Lcom/htc/android/mail/MailMessage;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5461
    iput-object p1, p0, Lcom/htc/android/mail/MailList$RequestHandler$4;->this$0:Lcom/htc/android/mail/MailList$RequestHandler;

    iput-object p2, p0, Lcom/htc/android/mail/MailList$RequestHandler$4;->val$flag:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/htc/android/mail/MailList$RequestHandler$4;->val$target:Lcom/htc/android/mail/MailList;

    iput-object p4, p0, Lcom/htc/android/mail/MailList$RequestHandler$4;->val$message:Lcom/htc/android/mail/MailMessage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5463
    iget-object v1, p0, Lcom/htc/android/mail/MailList$RequestHandler$4;->val$flag:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 5472
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/MailList$RequestHandler$4;->this$0:Lcom/htc/android/mail/MailList$RequestHandler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5473
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5474
    return-void

    .line 5465
    .end local v0           #message:Landroid/os/Message;
    :pswitch_0
    iget-object v1, p0, Lcom/htc/android/mail/MailList$RequestHandler$4;->val$target:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/MailList$RequestHandler$4;->val$target:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    if-eqz v1, :cond_0

    .line 5466
    iget-object v1, p0, Lcom/htc/android/mail/MailList$RequestHandler$4;->val$target:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    check-cast v1, Lcom/htc/android/mail/database/MailCursor;

    iget-object v2, p0, Lcom/htc/android/mail/MailList$RequestHandler$4;->val$message:Lcom/htc/android/mail/MailMessage;

    iget-wide v2, v2, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/database/MailCursor;->delete(J)V

    .line 5467
    iget-object v1, p0, Lcom/htc/android/mail/MailList$RequestHandler$4;->this$0:Lcom/htc/android/mail/MailList$RequestHandler;

    iget-object v2, p0, Lcom/htc/android/mail/MailList$RequestHandler$4;->val$message:Lcom/htc/android/mail/MailMessage;

    const/4 v3, 0x1

    #calls: Lcom/htc/android/mail/MailList$RequestHandler;->deselectMailMessage(Lcom/htc/android/mail/MailMessage;Z)V
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/MailList$RequestHandler;->access$7300(Lcom/htc/android/mail/MailList$RequestHandler;Lcom/htc/android/mail/MailMessage;Z)V

    goto :goto_0

    .line 5463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
