.class Lcom/android/htccontacts/group/SendGroupMessageHint$1;
.super Landroid/os/Handler;
.source "SendGroupMessageHint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/group/SendGroupMessageHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/group/SendGroupMessageHint;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/group/SendGroupMessageHint;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/htccontacts/group/SendGroupMessageHint$1;->this$0:Lcom/android/htccontacts/group/SendGroupMessageHint;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    .line 56
    .local v0, event:I
    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 59
    .local v1, showstring:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/htccontacts/group/SendGroupMessageHint$1;->this$0:Lcom/android/htccontacts/group/SendGroupMessageHint;

    iget-object v2, v2, Lcom/android/htccontacts/group/SendGroupMessageHint;->mNameListView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method
