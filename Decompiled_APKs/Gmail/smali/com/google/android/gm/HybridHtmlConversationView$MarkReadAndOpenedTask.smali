.class Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;
.super Ljava/lang/Object;
.source "HybridHtmlConversationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HybridHtmlConversationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkReadAndOpenedTask"
.end annotation


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mMarkConversationOpened:Z

.field private volatile mMarkConversationRead:Z

.field final synthetic this$0:Lcom/google/android/gm/HybridHtmlConversationView;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/HybridHtmlConversationView;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter
    .parameter "account"
    .parameter "markRead"
    .parameter "markOpened"

    .prologue
    .line 2190
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2191
    iput-object p2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;->mAccount:Ljava/lang/String;

    .line 2192
    iput-boolean p3, p0, Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;->mMarkConversationRead:Z

    .line 2193
    iput-boolean p4, p0, Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;->mMarkConversationOpened:Z

    .line 2194
    return-void
.end method

.method static synthetic access$2502(Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2182
    iput-boolean p1, p0, Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;->mMarkConversationRead:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2199
    new-instance v1, Lcom/google/android/gm/LabelOperations;

    invoke-direct {v1}, Lcom/google/android/gm/LabelOperations;-><init>()V

    .line 2200
    .local v1, operations:Lcom/google/android/gm/LabelOperations;
    iget-boolean v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;->mMarkConversationRead:Z

    if-eqz v2, :cond_0

    .line 2201
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2000(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;->mAccount:Ljava/lang/String;

    const-string v4, "^u"

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    .line 2202
    .local v0, label:Lcom/google/android/gm/provider/Label;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gm/LabelOperations;->add(Lcom/google/android/gm/provider/Label;Z)V

    .line 2205
    .end local v0           #label:Lcom/google/android/gm/provider/Label;
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;->mMarkConversationOpened:Z

    if-eqz v2, :cond_1

    .line 2206
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2000(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;->mAccount:Ljava/lang/String;

    const-string v4, "^o"

    invoke-static {v2, v3, v4}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    .line 2207
    .restart local v0       #label:Lcom/google/android/gm/provider/Label;
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gm/LabelOperations;->add(Lcom/google/android/gm/provider/Label;Z)V

    .line 2210
    .end local v0           #label:Lcom/google/android/gm/provider/Label;
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gm/LabelOperations;->count()I

    move-result v2

    if-lez v2, :cond_2

    .line 2211
    iget-object v2, p0, Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v2, v2, Lcom/google/android/gm/HybridHtmlConversationView;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v3, p0, Lcom/google/android/gm/HybridHtmlConversationView$MarkReadAndOpenedTask;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    iget-object v3, v3, Lcom/google/android/gm/HybridHtmlConversationView;->mConversationInfo:Lcom/google/android/gm/ConversationInfo;

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabelBackground(Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;)V

    .line 2214
    :cond_2
    return-void
.end method
