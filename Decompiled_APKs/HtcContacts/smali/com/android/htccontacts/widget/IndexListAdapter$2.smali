.class Lcom/android/htccontacts/widget/IndexListAdapter$2;
.super Landroid/os/Handler;
.source "IndexListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/IndexListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/IndexListAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/IndexListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/htccontacts/widget/IndexListAdapter$2;->this$0:Lcom/android/htccontacts/widget/IndexListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/IndexListAdapter$2;->this$0:Lcom/android/htccontacts/widget/IndexListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/IndexListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
