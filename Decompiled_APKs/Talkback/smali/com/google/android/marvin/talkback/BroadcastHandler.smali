.class public abstract Lcom/google/android/marvin/talkback/BroadcastHandler;
.super Lcom/google/android/marvin/utils/WeakReferenceHandler;
.source "BroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/marvin/utils/WeakReferenceHandler",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final MSG_BROADCAST_RECEIVED:I = 0x1


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lcom/google/android/marvin/talkback/BroadcastHandler;,"Lcom/google/android/marvin/talkback/BroadcastHandler<TT;>;"
    .local p1, parent:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1}, Lcom/google/android/marvin/utils/WeakReferenceHandler;-><init>(Ljava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .parameter "msg"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, this:Lcom/google/android/marvin/talkback/BroadcastHandler;,"Lcom/google/android/marvin/talkback/BroadcastHandler<TT;>;"
    .local p2, parent:Ljava/lang/Object;,"TT;"
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 41
    :goto_0
    return-void

    .line 38
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0, p2}, Lcom/google/android/marvin/talkback/BroadcastHandler;->handleOnReceive(Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract handleOnReceive(Landroid/content/Intent;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "TT;)V"
        }
    .end annotation
.end method

.method public onReceive(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 44
    .local p0, this:Lcom/google/android/marvin/talkback/BroadcastHandler;,"Lcom/google/android/marvin/talkback/BroadcastHandler<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/marvin/talkback/BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 45
    return-void
.end method
