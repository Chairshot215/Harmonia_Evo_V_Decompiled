.class Lcom/google/android/gm/ConversationPagerFragment$1$1;
.super Ljava/lang/Object;
.source "ConversationPagerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/ConversationPagerFragment$1;->onLabelResult(Lcom/google/android/gm/provider/Label;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gm/ConversationPagerFragment$1;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ConversationPagerFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/google/android/gm/ConversationPagerFragment$1$1;->this$1:Lcom/google/android/gm/ConversationPagerFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/gm/ConversationPagerFragment$1$1;->this$1:Lcom/google/android/gm/ConversationPagerFragment$1;

    iget-object v0, v0, Lcom/google/android/gm/ConversationPagerFragment$1;->this$0:Lcom/google/android/gm/ConversationPagerFragment;

    #calls: Lcom/google/android/gm/ConversationPagerFragment;->updatePositionBar()V
    invoke-static {v0}, Lcom/google/android/gm/ConversationPagerFragment;->access$200(Lcom/google/android/gm/ConversationPagerFragment;)V

    .line 383
    return-void
.end method
