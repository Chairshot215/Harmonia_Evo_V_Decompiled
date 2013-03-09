.class Lcom/htc/widget/HtcBlinkingTextView$1;
.super Landroid/os/Handler;
.source "HtcBlinkingTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcBlinkingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcBlinkingTextView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcBlinkingTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcBlinkingTextView$1;->this$0:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/htc/widget/HtcBlinkingTextView$1;->this$0:Lcom/htc/widget/HtcBlinkingTextView;

    #getter for: Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I
    invoke-static {v3}, Lcom/htc/widget/HtcBlinkingTextView;->access$000(Lcom/htc/widget/HtcBlinkingTextView;)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcBlinkingTextView$1;->this$0:Lcom/htc/widget/HtcBlinkingTextView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcBlinkingTextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x4

    :goto_1
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/htc/widget/HtcBlinkingTextView$1;->this$0:Lcom/htc/widget/HtcBlinkingTextView;

    #getter for: Lcom/htc/widget/HtcBlinkingTextView;->mTextBlinkingOnMsec:I
    invoke-static {v2}, Lcom/htc/widget/HtcBlinkingTextView;->access$100(Lcom/htc/widget/HtcBlinkingTextView;)I

    move-result v0

    :goto_2
    iget-object v2, p0, Lcom/htc/widget/HtcBlinkingTextView$1;->this$0:Lcom/htc/widget/HtcBlinkingTextView;

    #calls: Lcom/htc/widget/HtcBlinkingTextView;->triggerTimer(I)V
    invoke-static {v2, v0}, Lcom/htc/widget/HtcBlinkingTextView;->access$300(Lcom/htc/widget/HtcBlinkingTextView;I)V

    iget-object v2, p0, Lcom/htc/widget/HtcBlinkingTextView$1;->this$0:Lcom/htc/widget/HtcBlinkingTextView;

    #calls: Lcom/htc/widget/HtcBlinkingTextView;->internalSetVisibility(I)V
    invoke-static {v2, v1}, Lcom/htc/widget/HtcBlinkingTextView;->access$400(Lcom/htc/widget/HtcBlinkingTextView;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/htc/widget/HtcBlinkingTextView$1;->this$0:Lcom/htc/widget/HtcBlinkingTextView;

    #getter for: Lcom/htc/widget/HtcBlinkingTextView;->mTextBlinkingOffMsec:I
    invoke-static {v2}, Lcom/htc/widget/HtcBlinkingTextView;->access$200(Lcom/htc/widget/HtcBlinkingTextView;)I

    move-result v0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
