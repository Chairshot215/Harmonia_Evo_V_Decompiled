.class Lcom/android/mms/ui/ConversationList$8;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList;->onDraftChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter

    .prologue
    .line 2373
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$8;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2375
    const-string v0, "ConversationList"

    const-string v1, "onDraftChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$8;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->onContentChanged()V

    .line 2379
    return-void
.end method
