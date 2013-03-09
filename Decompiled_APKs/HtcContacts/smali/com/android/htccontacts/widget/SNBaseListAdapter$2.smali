.class Lcom/android/htccontacts/widget/SNBaseListAdapter$2;
.super Landroid/os/Handler;
.source "SNBaseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/SNBaseListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/SNBaseListAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/SNBaseListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter$2;->this$0:Lcom/android/htccontacts/widget/SNBaseListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 113
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter$2;->this$0:Lcom/android/htccontacts/widget/SNBaseListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/SNBaseListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
