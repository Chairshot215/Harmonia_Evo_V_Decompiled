.class Lcom/android/mms/ui/DraftList$5;
.super Landroid/os/Handler;
.source "DraftList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DraftList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DraftList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DraftList;)V
    .locals 0
    .parameter

    .prologue
    .line 668
    iput-object p1, p0, Lcom/android/mms/ui/DraftList$5;->this$0:Lcom/android/mms/ui/DraftList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 671
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 673
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$5;->this$0:Lcom/android/mms/ui/DraftList;

    #getter for: Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/DraftList;->access$400(Lcom/android/mms/ui/DraftList;)Lcom/android/mms/ui/DraftMessagesListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$5;->this$0:Lcom/android/mms/ui/DraftList;

    #getter for: Lcom/android/mms/ui/DraftList;->mAdapter:Lcom/android/mms/ui/DraftMessagesListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/DraftList;->access$400(Lcom/android/mms/ui/DraftList;)Lcom/android/mms/ui/DraftMessagesListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftMessagesListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 671
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
