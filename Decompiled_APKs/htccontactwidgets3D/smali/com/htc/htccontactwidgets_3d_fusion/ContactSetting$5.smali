.class Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;
.super Landroid/os/Handler;
.source "ContactSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;


# direct methods
.method constructor <init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 705
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 709
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 713
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    .line 715
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    invoke-virtual {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 717
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    invoke-virtual {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->onBeforeHandleSearchResult()V

    .line 719
    if-eqz v0, :cond_3

    .line 721
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mCursorAdapter:Landroid/widget/CursorAdapter;

    if-nez v1, :cond_4

    .line 723
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    invoke-virtual {v2, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->newListAdapter(Landroid/database/Cursor;)Landroid/widget/CursorAdapter;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mCursorAdapter:Landroid/widget/CursorAdapter;

    .line 724
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mCursorAdapter:Landroid/widget/CursorAdapter;

    if-nez v1, :cond_1

    .line 726
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 731
    :cond_1
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupList:Lcom/htc/widget/HtcListView;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$000(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Lcom/htc/widget/HtcListView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget-object v2, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 732
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mGroupList:Lcom/htc/widget/HtcListView;
    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->access$000(Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;)Lcom/htc/widget/HtcListView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget-object v2, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->listener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 739
    :goto_1
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 740
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 742
    :cond_2
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iput-object v0, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mCursor:Landroid/database/Cursor;

    .line 745
    :cond_3
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    invoke-virtual {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->onAfterHandleSearchResult()V

    goto :goto_0

    .line 736
    :cond_4
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting$5;->this$0:Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;

    iget-object v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactSetting;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 749
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
