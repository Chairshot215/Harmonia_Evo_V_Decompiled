.class final Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;
.super Lcom/android/mms/util/MmsAsyncQueryHandler;
.source "MessageViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageBoxQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageViewActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageViewActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    .line 2028
    invoke-direct {p0, p2}, Lcom/android/mms/util/MmsAsyncQueryHandler;-><init>(Landroid/content/Context;)V

    .line 2029
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 2108
    packed-switch p1, :pswitch_data_0

    .line 2128
    :goto_0
    return-void

    .line 2111
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #calls: Lcom/android/mms/ui/MessageViewActivity;->updateStatusNotification()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity;->access$1100(Lcom/android/mms/ui/MessageViewActivity;)V

    .line 2112
    const-string v0, "MessageViewActivity"

    const-string v1, "[onDeleteComplete] DELETE_TOKEN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-eqz v0, :cond_0

    .line 2115
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->removeMessages(I)V

    .line 2117
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/MessageViewActivity$DeleteProgressDialog;

    if-eqz v0, :cond_1

    .line 2119
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/MessageViewActivity$DeleteProgressDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageViewActivity$DeleteProgressDialog;->dismiss()V

    .line 2120
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/mms/ui/MessageViewActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/MessageViewActivity$DeleteProgressDialog;

    .line 2123
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #calls: Lcom/android/mms/ui/MessageViewActivity;->goToRootActivity()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity;->access$1300(Lcom/android/mms/ui/MessageViewActivity;)V

    goto :goto_0

    .line 2108
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 2035
    packed-switch p1, :pswitch_data_0

    .line 2065
    :goto_0
    return-void

    .line 2039
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageViewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2041
    invoke-static {p3}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    goto :goto_0

    .line 2045
    :cond_0
    if-eqz p3, :cond_2

    .line 2047
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    const v1, 0x7f0e002b

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2048
    const-string v0, "MessageViewActivity"

    const-string v1, "[onQueryComplete]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-eqz v0, :cond_1

    .line 2051
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->removeMessages(I)V

    .line 2053
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #calls: Lcom/android/mms/ui/MessageViewActivity;->showSmsMms(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/mms/ui/MessageViewActivity;->access$1000(Lcom/android/mms/ui/MessageViewActivity;Landroid/database/Cursor;)V

    goto :goto_0

    .line 2057
    :cond_2
    const-string v0, "MessageViewActivity"

    const-string v1, "Cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    invoke-static {p3}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    .line 2059
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageViewActivity;->finish()V

    goto :goto_0

    .line 2035
    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_0
    .end packed-switch
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 2071
    packed-switch p1, :pswitch_data_0

    .line 2102
    :cond_0
    :goto_0
    return-void

    .line 2074
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #calls: Lcom/android/mms/ui/MessageViewActivity;->updateStatusNotification()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity;->access$1100(Lcom/android/mms/ui/MessageViewActivity;)V

    .line 2075
    const-string v0, "MessageViewActivity"

    const-string v1, "[onUpdateComplete] UPDATE_READ_TOKEN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-eqz v0, :cond_1

    .line 2078
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->removeMessages(I)V

    .line 2080
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #calls: Lcom/android/mms/ui/MessageViewActivity;->isMmsMessage()Z
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity;->access$700(Lcom/android/mms/ui/MessageViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #calls: Lcom/android/mms/ui/MessageViewActivity;->isReadReportRequired()Z
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity;->access$1200(Lcom/android/mms/ui/MessageViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2082
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageViewActivity;->handleReadReport()V

    goto :goto_0

    .line 2086
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #calls: Lcom/android/mms/ui/MessageViewActivity;->updateStatusNotification()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity;->access$1100(Lcom/android/mms/ui/MessageViewActivity;)V

    .line 2087
    const-string v0, "MessageViewActivity"

    const-string v1, "[onUpdateComplete] UPDATE_LIST_TOKEN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-eqz v0, :cond_2

    .line 2090
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    iget-object v0, v0, Lcom/android/mms/ui/MessageViewActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->removeMessages(I)V

    .line 2092
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #calls: Lcom/android/mms/ui/MessageViewActivity;->isMmsMessage()Z
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity;->access$700(Lcom/android/mms/ui/MessageViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #calls: Lcom/android/mms/ui/MessageViewActivity;->isReadReportRequired()Z
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity;->access$1200(Lcom/android/mms/ui/MessageViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2094
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageViewActivity;->handleReadReport()V

    .line 2097
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$MessageBoxQueryHandler;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #calls: Lcom/android/mms/ui/MessageViewActivity;->goToRootActivity()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity;->access$1300(Lcom/android/mms/ui/MessageViewActivity;)V

    goto :goto_0

    .line 2071
    nop

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
