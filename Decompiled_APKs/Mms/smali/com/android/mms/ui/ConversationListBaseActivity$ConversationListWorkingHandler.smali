.class public Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;
.super Landroid/os/Handler;
.source "ConversationListBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ConversationListWorkingHandler"
.end annotation


# instance fields
.field protected final mAct:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Lcom/android/mms/ui/ConversationListBaseActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/mms/ui/ConversationListBaseActivity;)V
    .locals 1
    .parameter "looper"
    .parameter "act"

    .prologue
    .line 2830
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2831
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;->mAct:Ljava/lang/ref/WeakReference;

    .line 2832
    return-void
.end method


# virtual methods
.method public childHandleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 2835
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2839
    const-string v0, "ConversationListBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;->mAct:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListBaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2847
    :goto_0
    return-void

    .line 2842
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2844
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity$ConversationListWorkingHandler;->childHandleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
