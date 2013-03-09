.class Lcom/android/mms/ui/DeletedItemsActivity$5;
.super Landroid/os/Handler;
.source "DeletedItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeletedItemsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeletedItemsActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DeletedItemsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lcom/android/mms/ui/DeletedItemsActivity$5;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 651
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 653
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity$5;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    #getter for: Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/DeletedItemsActivity;->access$600(Lcom/android/mms/ui/DeletedItemsActivity;)Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/mms/ui/DeletedItemsActivity$5;->this$0:Lcom/android/mms/ui/DeletedItemsActivity;

    #getter for: Lcom/android/mms/ui/DeletedItemsActivity;->mAdapter:Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/DeletedItemsActivity;->access$600(Lcom/android/mms/ui/DeletedItemsActivity;)Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/DeletedItemsActivity$DeletedItemsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 651
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
