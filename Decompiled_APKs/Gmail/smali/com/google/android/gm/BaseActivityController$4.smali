.class Lcom/google/android/gm/BaseActivityController$4;
.super Ljava/lang/Object;
.source "BaseActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/BaseActivityController;->handleConversationLoadError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/BaseActivityController;


# direct methods
.method constructor <init>(Lcom/google/android/gm/BaseActivityController;)V
    .locals 0
    .parameter

    .prologue
    .line 766
    iput-object p1, p0, Lcom/google/android/gm/BaseActivityController$4;->this$0:Lcom/google/android/gm/BaseActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$4;->this$0:Lcom/google/android/gm/BaseActivityController;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController$4;->this$0:Lcom/google/android/gm/BaseActivityController;

    invoke-virtual {v1}, Lcom/google/android/gm/BaseActivityController;->getConversationListContext()Lcom/google/android/gm/ConversationListContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/BaseActivityController;->showConversationList(Lcom/google/android/gm/ConversationListContext;)V

    .line 770
    return-void
.end method
