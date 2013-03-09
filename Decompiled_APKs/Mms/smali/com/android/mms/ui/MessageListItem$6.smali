.class Lcom/android/mms/ui/MessageListItem$6;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->setErrorIndicatorClickListener(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;ILcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput p2, p0, Lcom/android/mms/ui/MessageListItem$6;->val$what:I

    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem$6;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 735
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MessageListItem$6;->val$what:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 737
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$6;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 738
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 740
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
