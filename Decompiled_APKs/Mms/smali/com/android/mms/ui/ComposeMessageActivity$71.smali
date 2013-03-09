.class Lcom/android/mms/ui/ComposeMessageActivity$71;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/ComposeMessageActivity$OnCalculateTimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initMessageList(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 12728
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$71;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalculateTime()V
    .locals 3

    .prologue
    .line 12731
    const-string v0, "ComposeMessageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCalculateTime> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$71;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12733
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$71;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMegTimestampListAdapter:Lcom/android/mms/ui/MessageTimestampListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTimestampListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12734
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$71;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMegTimestampListAdapter:Lcom/android/mms/ui/MessageTimestampListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTimestampListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageTimestampListAdapter;->notifyDataSetChanged()V

    .line 12735
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$71;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$71;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$71;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v2, 0x7f0e002d

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListView;

    iput-object v0, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    .line 12736
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$71;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$71;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 12740
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$71;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v1, 0x7f0e002b

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12742
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$71;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 12745
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$71;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$71;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMovetoPos:I

    if-ltz v0, :cond_3

    .line 12746
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$71;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$71;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget v1, v1, Lcom/android/mms/ui/ComposeMessageActivity;->mMovetoPos:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    .line 12747
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$71;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mMovetoPos:I

    .line 12751
    :cond_3
    return-void
.end method
