.class Lcom/android/htccontacts/link/DisplaySuggestionActivity$4;
.super Landroid/os/Handler;
.source "DisplaySuggestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/DisplaySuggestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 931
    iput-object p1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$4;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 934
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 937
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$4;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->finish()V

    goto :goto_0

    .line 943
    :pswitch_1
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$4;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    iget-object v1, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$4;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    iget-object v1, v1, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 944
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$4;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    iget-object v0, v0, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mWrapperAdapter:Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/DisplaySuggestListWrapperAdapter;->notifyDataSetChanged()V

    .line 945
    invoke-static {}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$4;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #getter for: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;
    invoke-static {v0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$1200(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    goto :goto_0

    .line 953
    :pswitch_2
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$4;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #calls: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->processIntent()V
    invoke-static {v0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$1300(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V

    .line 954
    iget-object v0, p0, Lcom/android/htccontacts/link/DisplaySuggestionActivity$4;->this$0:Lcom/android/htccontacts/link/DisplaySuggestionActivity;

    #calls: Lcom/android/htccontacts/link/DisplaySuggestionActivity;->initUIAfterIdReady()V
    invoke-static {v0}, Lcom/android/htccontacts/link/DisplaySuggestionActivity;->access$1400(Lcom/android/htccontacts/link/DisplaySuggestionActivity;)V

    goto :goto_0

    .line 934
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
