.class Lcom/android/mms/ui/ComposeMessageActivity$14$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$14;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$14;)V
    .locals 0
    .parameter

    .prologue
    .line 5434
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$14$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$14;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5436
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$14;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5437
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$14$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$14;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$14;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 5438
    :cond_0
    return-void
.end method
