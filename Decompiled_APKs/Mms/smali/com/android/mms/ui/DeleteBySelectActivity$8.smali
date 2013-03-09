.class Lcom/android/mms/ui/DeleteBySelectActivity$8;
.super Landroid/os/Handler;
.source "DeleteBySelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeleteBySelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeleteBySelectActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DeleteBySelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/android/mms/ui/DeleteBySelectActivity$8;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1364
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1370
    :cond_0
    :goto_0
    return-void

    .line 1366
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$8;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mAdapter:Lcom/android/mms/ui/DeleteBySelectListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$400(Lcom/android/mms/ui/DeleteBySelectActivity;)Lcom/android/mms/ui/DeleteBySelectListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$8;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    #getter for: Lcom/android/mms/ui/DeleteBySelectActivity;->mAdapter:Lcom/android/mms/ui/DeleteBySelectListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->access$400(Lcom/android/mms/ui/DeleteBySelectActivity;)Lcom/android/mms/ui/DeleteBySelectListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/DeleteBySelectListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1364
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
