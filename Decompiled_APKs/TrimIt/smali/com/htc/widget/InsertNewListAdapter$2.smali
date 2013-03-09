.class Lcom/htc/widget/InsertNewListAdapter$2;
.super Landroid/os/Handler;
.source "InsertNewListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/InsertNewListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/InsertNewListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/widget/InsertNewListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/htc/widget/InsertNewListAdapter$2;->this$0:Lcom/htc/widget/InsertNewListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter$2;->this$0:Lcom/htc/widget/InsertNewListAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/InsertNewListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/InsertNewListAdapter$2;->this$0:Lcom/htc/widget/InsertNewListAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/InsertNewListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
