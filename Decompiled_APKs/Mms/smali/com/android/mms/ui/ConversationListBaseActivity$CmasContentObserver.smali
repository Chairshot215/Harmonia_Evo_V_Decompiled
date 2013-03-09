.class Lcom/android/mms/ui/ConversationListBaseActivity$CmasContentObserver;
.super Landroid/database/ContentObserver;
.source "ConversationListBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmasContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 2852
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CmasContentObserver;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    .line 2853
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2854
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfUpdate"

    .prologue
    .line 2858
    const-string v0, "ConversationListBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMAS:onChange> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CmasContentObserver;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-boolean v2, v2, Lcom/android/mms/ui/ConversationListBaseActivity;->mIsForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CmasContentObserver;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ConversationListBaseActivity;->onCmasChange(Z)V

    .line 2865
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CmasContentObserver;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-boolean v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 2866
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CmasContentObserver;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListBaseActivity;->startAsnycQueryCMAS()V

    .line 2870
    :goto_0
    return-void

    .line 2868
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$CmasContentObserver;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListBaseActivity;->getListHeaderViewCache()Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/ConversationListBaseActivity$ListHeaderViewCache;->valid:Z

    goto :goto_0
.end method
