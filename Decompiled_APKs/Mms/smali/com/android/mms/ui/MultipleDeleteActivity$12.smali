.class Lcom/android/mms/ui/MultipleDeleteActivity$12;
.super Landroid/os/Handler;
.source "MultipleDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultipleDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultipleDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultipleDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1952
    iput-object p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$12;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1955
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1961
    :cond_0
    :goto_0
    return-void

    .line 1957
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$12;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mAdapter:Lcom/android/mms/ui/MultipleDeleteListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$300(Lcom/android/mms/ui/MultipleDeleteActivity;)Lcom/android/mms/ui/MultipleDeleteListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1958
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$12;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mAdapter:Lcom/android/mms/ui/MultipleDeleteListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$300(Lcom/android/mms/ui/MultipleDeleteActivity;)Lcom/android/mms/ui/MultipleDeleteListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MultipleDeleteListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1955
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
