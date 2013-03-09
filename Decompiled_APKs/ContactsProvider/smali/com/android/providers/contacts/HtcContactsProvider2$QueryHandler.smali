.class Lcom/android/providers/contacts/HtcContactsProvider2$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/HtcContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 16104
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QueryHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    .line 16105
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 16106
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 16110
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 16128
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler;->handleMessage(Landroid/os/Message;)V

    .line 16130
    :goto_0
    return-void

    .line 16112
    :pswitch_0
    const-string v0, "HtcContactsProvider2"

    const-string v1, "MESSAGE_REQUERY_SIM_CONTACTS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16113
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QueryHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->querySimLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$500(Lcom/android/providers/contacts/HtcContactsProvider2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 16114
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QueryHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->queryThread:Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;
    invoke-static {v0}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$600(Lcom/android/providers/contacts/HtcContactsProvider2;)Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 16115
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QueryHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    new-instance v2, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;

    iget-object v3, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QueryHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-direct {v2, v3}, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;-><init>(Lcom/android/providers/contacts/HtcContactsProvider2;)V

    #setter for: Lcom/android/providers/contacts/HtcContactsProvider2;->queryThread:Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;
    invoke-static {v0, v2}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$602(Lcom/android/providers/contacts/HtcContactsProvider2;Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;)Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;

    .line 16116
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QueryHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->queryThread:Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;
    invoke-static {v0}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$600(Lcom/android/providers/contacts/HtcContactsProvider2;)Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->start()V

    .line 16123
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 16118
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QueryHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->queryThread:Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;
    invoke-static {v0}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$600(Lcom/android/providers/contacts/HtcContactsProvider2;)Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->decreaseTryCount()V

    .line 16119
    const-string v0, "HtcContactsProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a query sim thread is running, decrease the try count to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QueryHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    #getter for: Lcom/android/providers/contacts/HtcContactsProvider2;->queryThread:Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;
    invoke-static {v3}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$600(Lcom/android/providers/contacts/HtcContactsProvider2;)Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/providers/contacts/HtcContactsProvider2$QuerySIMDataThread;->getTryCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 16110
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 16137
    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$QueryHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/HtcContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 16138
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 16139
    .local v1, updateCount:I
    const/16 v2, 0x64

    if-ne v2, p1, :cond_0

    .line 16140
    check-cast p2, Landroid/accounts/Account;

    .end local p2
    invoke-static {p2, v0, p3}, Lcom/android/providers/contacts/HtcUtils/ImportSimUtils;->importAllSim(Landroid/accounts/Account;Landroid/content/ContentResolver;Landroid/database/Cursor;)I

    move-result v1

    .line 16143
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 16144
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 16148
    :cond_0
    if-lez v1, :cond_1

    .line 16149
    sget-object v2, Lcom/htc/provider/HtcContactsContract$SIMContacts;->CONTENT_IMPORT_ALL_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 16153
    :cond_1
    return-void
.end method
