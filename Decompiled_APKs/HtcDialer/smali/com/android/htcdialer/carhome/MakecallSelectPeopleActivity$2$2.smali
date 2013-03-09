.class Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$2;
.super Ljava/lang/Object;
.source "MakecallSelectPeopleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 2310
    iput-object p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$2;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/16 v6, 0x1a0e

    const/4 v5, 0x0

    .line 2313
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2314
    iget-object v2, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$2;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;

    iget-object v2, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2317
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$2;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;

    iget-object v2, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2319
    iget-object v2, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$2;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;

    iget-object v2, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    .line 2320
    .local v1, item:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    if-nez v1, :cond_1

    .line 2317
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2322
    :cond_1
    iget-object v2, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$2;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;

    iget-object v2, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mDisplayModeFlag:Ljava/lang/Long;
    invoke-static {v2}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1500(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v7

    if-eqz v2, :cond_4

    .line 2336
    .end local v1           #item:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    :cond_2
    iget-object v2, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$2;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;

    iget-object v2, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mIsShown:Z
    invoke-static {v2}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$2;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;

    iget-object v2, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;
    invoke-static {v2}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2337
    iget-object v2, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$2;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;

    iget-object v2, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$2;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;

    iget-object v3, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$2;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;

    iget-object v4, v4, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2339
    .end local v0           #i:I
    :cond_3
    return-void

    .line 2325
    .restart local v0       #i:I
    .restart local v1       #item:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    :cond_4
    iget-object v2, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->strPrimaryNum:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-wide v2, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->number_type:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_5

    .line 2328
    iget-object v2, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$2;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;

    iget-object v2, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    iget-object v3, v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->action:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CheckDefaultAction(Ljava/lang/String;Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;Z)Z

    .line 2331
    :cond_5
    iget-object v2, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$2;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;

    iget-object v2, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mIsShown:Z
    invoke-static {v2}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$2;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;

    iget-object v2, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;
    invoke-static {v2}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    move-result-object v2

    if-eqz v2, :cond_0

    rem-int/lit8 v2, v0, 0xf

    if-nez v2, :cond_0

    .line 2333
    iget-object v2, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$2;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;

    iget-object v2, v2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$2;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;

    iget-object v3, v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2$2;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;

    iget-object v4, v4, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method
