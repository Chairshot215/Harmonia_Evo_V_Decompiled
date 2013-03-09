.class Lcom/android/htccontacts/PeopleApp$1;
.super Ljava/lang/Object;
.source "PeopleApp.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/PeopleApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/PeopleApp;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/PeopleApp;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/htccontacts/PeopleApp$1;->this$0:Lcom/android/htccontacts/PeopleApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 8

    .prologue
    const v7, 0x1001111

    const/4 v6, 0x0

    .line 253
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/htccontacts/PeopleApp$1;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mIsTerminating:Z
    invoke-static {v3}, Lcom/android/htccontacts/PeopleApp;->access$300(Lcom/android/htccontacts/PeopleApp;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v6

    .line 256
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/PeopleApp$1;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mAllPeopleCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/htccontacts/PeopleApp;->access$400(Lcom/android/htccontacts/PeopleApp;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/android/htccontacts/PeopleApp$1;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mAllPeopleCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/htccontacts/PeopleApp;->access$400(Lcom/android/htccontacts/PeopleApp;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    new-instance v1, Lcom/android/htccontacts/PeopleApp$1$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/PeopleApp$1$1;-><init>(Lcom/android/htccontacts/PeopleApp$1;)V

    .line 278
    .local v1, requeryRun:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/htccontacts/PeopleApp$1;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mQueryHandler:Lcom/android/htccontacts/PeopleApp$QueryHandler;
    invoke-static {v2}, Lcom/android/htccontacts/PeopleApp;->access$500(Lcom/android/htccontacts/PeopleApp;)Lcom/android/htccontacts/PeopleApp$QueryHandler;

    move-result-object v2

    if-nez v2, :cond_2

    .line 279
    iget-object v2, p0, Lcom/android/htccontacts/PeopleApp$1;->this$0:Lcom/android/htccontacts/PeopleApp;

    new-instance v3, Lcom/android/htccontacts/PeopleApp$QueryHandler;

    iget-object v4, p0, Lcom/android/htccontacts/PeopleApp$1;->this$0:Lcom/android/htccontacts/PeopleApp;

    iget-object v5, p0, Lcom/android/htccontacts/PeopleApp$1;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/htccontacts/PeopleApp;->access$600(Lcom/android/htccontacts/PeopleApp;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/htccontacts/PeopleApp$QueryHandler;-><init>(Lcom/android/htccontacts/PeopleApp;Landroid/content/ContentResolver;)V

    #setter for: Lcom/android/htccontacts/PeopleApp;->mQueryHandler:Lcom/android/htccontacts/PeopleApp$QueryHandler;
    invoke-static {v2, v3}, Lcom/android/htccontacts/PeopleApp;->access$502(Lcom/android/htccontacts/PeopleApp;Lcom/android/htccontacts/PeopleApp$QueryHandler;)Lcom/android/htccontacts/PeopleApp$QueryHandler;

    .line 282
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/PeopleApp$1;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mQueryHandler:Lcom/android/htccontacts/PeopleApp$QueryHandler;
    invoke-static {v2}, Lcom/android/htccontacts/PeopleApp;->access$500(Lcom/android/htccontacts/PeopleApp;)Lcom/android/htccontacts/PeopleApp$QueryHandler;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 283
    .local v0, msg:Landroid/os/Message;
    iput v7, v0, Landroid/os/Message;->what:I

    .line 285
    iget-object v2, p0, Lcom/android/htccontacts/PeopleApp$1;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mQueryHandler:Lcom/android/htccontacts/PeopleApp$QueryHandler;
    invoke-static {v2}, Lcom/android/htccontacts/PeopleApp;->access$500(Lcom/android/htccontacts/PeopleApp;)Lcom/android/htccontacts/PeopleApp$QueryHandler;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/htccontacts/PeopleApp$QueryHandler;->removeMessages(I)V

    .line 286
    iget-object v2, p0, Lcom/android/htccontacts/PeopleApp$1;->this$0:Lcom/android/htccontacts/PeopleApp;

    #getter for: Lcom/android/htccontacts/PeopleApp;->mQueryHandler:Lcom/android/htccontacts/PeopleApp$QueryHandler;
    invoke-static {v2}, Lcom/android/htccontacts/PeopleApp;->access$500(Lcom/android/htccontacts/PeopleApp;)Lcom/android/htccontacts/PeopleApp$QueryHandler;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/htccontacts/PeopleApp$QueryHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
