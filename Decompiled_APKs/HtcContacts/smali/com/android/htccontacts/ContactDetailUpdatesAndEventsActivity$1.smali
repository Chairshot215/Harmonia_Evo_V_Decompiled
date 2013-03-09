.class Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$1;
.super Landroid/os/Handler;
.source "ContactDetailUpdatesAndEventsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->startUiHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x32

    .line 1183
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1200
    :cond_0
    :goto_0
    return-void

    .line 1186
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->exteriorAdapterLoadingTaskProcessing:Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->access$200(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1187
    new-instance v0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    iget-object v2, v2, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    invoke-virtual {v2}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->getItemAccountMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;-><init>(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;Ljava/util/HashMap;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1189
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->access$900(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->access$900(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1192
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$1;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    #getter for: Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->access$900(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1183
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch
.end method
