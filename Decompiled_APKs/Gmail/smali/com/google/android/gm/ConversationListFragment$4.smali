.class Lcom/google/android/gm/ConversationListFragment$4;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/google/android/gm/AccountHelper$CredentialsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/ConversationListFragment;->setCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gm/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/google/android/gm/ConversationListFragment$4;->this$0:Lcom/google/android/gm/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCredentialsAcquired()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFragment$4;->this$0:Lcom/google/android/gm/ConversationListFragment;

    #calls: Lcom/google/android/gm/ConversationListFragment;->getCursor()Lcom/google/android/gm/provider/Gmail$ConversationCursor;
    invoke-static {v0}, Lcom/google/android/gm/ConversationListFragment;->access$400(Lcom/google/android/gm/ConversationListFragment;)Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->retry()V

    .line 423
    return-void
.end method
