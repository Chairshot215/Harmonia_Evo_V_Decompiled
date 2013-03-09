.class Lcom/google/android/gm/HybridHtmlConversationView$UpdatePresenceTask;
.super Landroid/os/AsyncTask;
.source "HybridHtmlConversationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HybridHtmlConversationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdatePresenceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/common/collect/ImmutableMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/gm/SenderInfoLoader$ContactInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mInfoLoader:Lcom/google/android/gm/SenderInfoLoader;

.field final synthetic this$0:Lcom/google/android/gm/HybridHtmlConversationView;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/HybridHtmlConversationView;Ljava/util/Set;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1830
    .local p2, emailAddresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationView$UpdatePresenceTask;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1831
    new-instance v0, Lcom/google/android/gm/SenderInfoLoader;

    #getter for: Lcom/google/android/gm/HybridHtmlConversationView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2000(Lcom/google/android/gm/HybridHtmlConversationView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/android/gm/SenderInfoLoader;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$UpdatePresenceTask;->mInfoLoader:Lcom/google/android/gm/SenderInfoLoader;

    .line 1832
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/SenderInfoLoader$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$UpdatePresenceTask;->mInfoLoader:Lcom/google/android/gm/SenderInfoLoader;

    invoke-virtual {v0}, Lcom/google/android/gm/SenderInfoLoader;->load()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1826
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationView$UpdatePresenceTask;->doInBackground([Ljava/lang/Void;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/common/collect/ImmutableMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/SenderInfoLoader$ContactInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1843
    .local p1, results:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Lcom/google/android/gm/SenderInfoLoader$ContactInfo;>;"
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationView$UpdatePresenceTask;->this$0:Lcom/google/android/gm/HybridHtmlConversationView;

    #calls: Lcom/google/android/gm/HybridHtmlConversationView;->updateVisibleHeaders(Lcom/google/common/collect/ImmutableMap;)V
    invoke-static {v0, p1}, Lcom/google/android/gm/HybridHtmlConversationView;->access$2400(Lcom/google/android/gm/HybridHtmlConversationView;Lcom/google/common/collect/ImmutableMap;)V

    .line 1844
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1826
    check-cast p1, Lcom/google/common/collect/ImmutableMap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationView$UpdatePresenceTask;->onPostExecute(Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method
