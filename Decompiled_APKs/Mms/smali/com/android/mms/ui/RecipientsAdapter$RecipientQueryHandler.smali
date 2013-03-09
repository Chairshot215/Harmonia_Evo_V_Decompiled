.class Lcom/android/mms/ui/RecipientsAdapter$RecipientQueryHandler;
.super Landroid/os/Handler;
.source "RecipientsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RecipientsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/RecipientsAdapter;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1842
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsAdapter$RecipientQueryHandler;->this$0:Lcom/android/mms/ui/RecipientsAdapter;

    .line 1843
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1844
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 1848
    const/4 v0, 0x0

    .line 1850
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 1851
    .local v1, constraint:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1853
    .local v4, queryloop:I
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 1900
    :cond_0
    :goto_0
    return-void

    .line 1855
    :pswitch_0
    const/4 v4, 0x2

    .line 1858
    :pswitch_1
    if-nez v4, :cond_1

    .line 1859
    const/4 v4, 0x3

    .line 1862
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #constraint:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1864
    .restart local v1       #constraint:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/RecipientsAdapter$RecipientQueryHandler;->this$0:Lcom/android/mms/ui/RecipientsAdapter;

    #calls: Lcom/android/mms/ui/RecipientsAdapter;->isValidConstraint(Ljava/lang/String;)Z
    invoke-static {v5, v1}, Lcom/android/mms/ui/RecipientsAdapter;->access$100(Lcom/android/mms/ui/RecipientsAdapter;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1865
    invoke-static {}, Lcom/android/mms/MmsApp;->isEnableSendCallLog()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1867
    iget-object v6, p0, Lcom/android/mms/ui/RecipientsAdapter$RecipientQueryHandler;->this$0:Lcom/android/mms/ui/RecipientsAdapter;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5, v4}, Lcom/android/mms/ui/RecipientsAdapter;->doRunQueryOnBackgroundThreadFilterSense21(Ljava/lang/CharSequence;I)Landroid/database/Cursor;

    move-result-object v0

    .line 1869
    iget-object v5, p0, Lcom/android/mms/ui/RecipientsAdapter$RecipientQueryHandler;->this$0:Lcom/android/mms/ui/RecipientsAdapter;

    #calls: Lcom/android/mms/ui/RecipientsAdapter;->isValidConstraint(Ljava/lang/String;)Z
    invoke-static {v5, v1}, Lcom/android/mms/ui/RecipientsAdapter;->access$100(Lcom/android/mms/ui/RecipientsAdapter;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1870
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1871
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1872
    const/4 v0, 0x0

    goto :goto_0

    .line 1879
    :cond_2
    move-object v3, v0

    .line 1882
    .local v3, oricursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/RecipientsAdapter$RecipientQueryHandler;->this$0:Lcom/android/mms/ui/RecipientsAdapter;

    #calls: Lcom/android/mms/ui/RecipientsAdapter;->buildCatch(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v5, v0}, Lcom/android/mms/ui/RecipientsAdapter;->access$200(Lcom/android/mms/ui/RecipientsAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1886
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1887
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1888
    const/4 v3, 0x0

    .line 1895
    .end local v3           #oricursor:Landroid/database/Cursor;
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/RecipientsAdapter$RecipientQueryHandler;->this$0:Lcom/android/mms/ui/RecipientsAdapter;

    #getter for: Lcom/android/mms/ui/RecipientsAdapter;->mResultHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/mms/ui/RecipientsAdapter;->access$300(Lcom/android/mms/ui/RecipientsAdapter;)Landroid/os/Handler;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1896
    .local v2, message:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1897
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1886
    .end local v2           #message:Landroid/os/Message;
    .restart local v3       #oricursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1887
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1888
    const/4 v3, 0x0

    :cond_4
    throw v5

    .line 1894
    .end local v3           #oricursor:Landroid/database/Cursor;
    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/RecipientsAdapter$RecipientQueryHandler;->this$0:Lcom/android/mms/ui/RecipientsAdapter;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x2

    invoke-virtual {v6, v5, v7}, Lcom/android/mms/ui/RecipientsAdapter;->doRunQueryOnBackgroundThreadFilter(Ljava/lang/CharSequence;I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 1853
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
