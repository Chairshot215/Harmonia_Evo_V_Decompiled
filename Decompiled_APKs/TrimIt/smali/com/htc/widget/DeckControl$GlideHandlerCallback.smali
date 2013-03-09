.class Lcom/htc/widget/DeckControl$GlideHandlerCallback;
.super Ljava/lang/Object;
.source "DeckControl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DeckControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlideHandlerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/DeckControl;


# direct methods
.method private constructor <init>(Lcom/htc/widget/DeckControl;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/widget/DeckControl$GlideHandlerCallback;->this$0:Lcom/htc/widget/DeckControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/DeckControl;Lcom/htc/widget/DeckControl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/htc/widget/DeckControl$GlideHandlerCallback;-><init>(Lcom/htc/widget/DeckControl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 144
    :pswitch_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    .line 116
    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/DeckControl$GlideHandlerCallback;->this$0:Lcom/htc/widget/DeckControl;

    iget-object v0, v0, Lcom/htc/widget/DeckControl;->mClickListener:Lcom/htc/widget/DeckControl$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/htc/widget/DeckControl$GlideHandlerCallback;->this$0:Lcom/htc/widget/DeckControl;

    iget-object v0, v0, Lcom/htc/widget/DeckControl;->mClickListener:Lcom/htc/widget/DeckControl$OnItemClickListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/htc/widget/DeckControl$OnItemClickListener;->onItemClick(I)V

    .line 146
    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    :pswitch_2
    iget-object v0, p0, Lcom/htc/widget/DeckControl$GlideHandlerCallback;->this$0:Lcom/htc/widget/DeckControl;

    iget-object v0, v0, Lcom/htc/widget/DeckControl;->mSelectedListener:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/htc/widget/DeckControl$GlideHandlerCallback;->this$0:Lcom/htc/widget/DeckControl;

    iget-object v0, v0, Lcom/htc/widget/DeckControl;->mSelectedListener:Lcom/htc/widget/DeckControl$OnItemSelectedListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/htc/widget/DeckControl$OnItemSelectedListener;->onItemSelected(I)V

    goto :goto_1

    .line 124
    :pswitch_3
    iget-object v0, p0, Lcom/htc/widget/DeckControl$GlideHandlerCallback;->this$0:Lcom/htc/widget/DeckControl;

    iget-object v0, v0, Lcom/htc/widget/DeckControl;->mMoveListener:Lcom/htc/widget/DeckControl$OnMovementListener;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/htc/widget/DeckControl$GlideHandlerCallback;->this$0:Lcom/htc/widget/DeckControl;

    iget-object v0, v0, Lcom/htc/widget/DeckControl;->mMoveListener:Lcom/htc/widget/DeckControl$OnMovementListener;

    invoke-interface {v0}, Lcom/htc/widget/DeckControl$OnMovementListener;->onFlingStart()V

    goto :goto_1

    .line 128
    :pswitch_4
    iget-object v0, p0, Lcom/htc/widget/DeckControl$GlideHandlerCallback;->this$0:Lcom/htc/widget/DeckControl;

    iget-object v0, v0, Lcom/htc/widget/DeckControl;->mMoveListener:Lcom/htc/widget/DeckControl$OnMovementListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/htc/widget/DeckControl$GlideHandlerCallback;->this$0:Lcom/htc/widget/DeckControl;

    iget-object v0, v0, Lcom/htc/widget/DeckControl;->mMoveListener:Lcom/htc/widget/DeckControl$OnMovementListener;

    invoke-interface {v0}, Lcom/htc/widget/DeckControl$OnMovementListener;->onFlingEnd()V

    goto :goto_1

    .line 132
    :pswitch_5
    iget-object v0, p0, Lcom/htc/widget/DeckControl$GlideHandlerCallback;->this$0:Lcom/htc/widget/DeckControl;

    iget-object v0, v0, Lcom/htc/widget/DeckControl;->mMoveListener:Lcom/htc/widget/DeckControl$OnMovementListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/htc/widget/DeckControl$GlideHandlerCallback;->this$0:Lcom/htc/widget/DeckControl;

    iget-object v0, v0, Lcom/htc/widget/DeckControl;->mMoveListener:Lcom/htc/widget/DeckControl$OnMovementListener;

    invoke-interface {v0}, Lcom/htc/widget/DeckControl$OnMovementListener;->onScrollStart()V

    goto :goto_1

    .line 136
    :pswitch_6
    iget-object v0, p0, Lcom/htc/widget/DeckControl$GlideHandlerCallback;->this$0:Lcom/htc/widget/DeckControl;

    iget-object v0, v0, Lcom/htc/widget/DeckControl;->mMoveListener:Lcom/htc/widget/DeckControl$OnMovementListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/htc/widget/DeckControl$GlideHandlerCallback;->this$0:Lcom/htc/widget/DeckControl;

    iget-object v0, v0, Lcom/htc/widget/DeckControl;->mMoveListener:Lcom/htc/widget/DeckControl$OnMovementListener;

    invoke-interface {v0}, Lcom/htc/widget/DeckControl$OnMovementListener;->onScrollEnd()V

    goto :goto_1

    .line 140
    :pswitch_7
    iget-object v0, p0, Lcom/htc/widget/DeckControl$GlideHandlerCallback;->this$0:Lcom/htc/widget/DeckControl;

    iget-object v0, v0, Lcom/htc/widget/DeckControl;->mFinMoveListener:Lcom/htc/widget/DeckControl$OnFinishedMovementListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/htc/widget/DeckControl$GlideHandlerCallback;->this$0:Lcom/htc/widget/DeckControl;

    iget-object v0, v0, Lcom/htc/widget/DeckControl;->mFinMoveListener:Lcom/htc/widget/DeckControl$OnFinishedMovementListener;

    invoke-interface {v0}, Lcom/htc/widget/DeckControl$OnFinishedMovementListener;->OnFinishedMovement()V

    goto :goto_1

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
