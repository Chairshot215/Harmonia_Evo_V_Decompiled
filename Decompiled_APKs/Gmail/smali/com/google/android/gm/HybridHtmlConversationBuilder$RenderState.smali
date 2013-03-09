.class public Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;
.super Ljava/lang/Object;
.source "HybridHtmlConversationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HybridHtmlConversationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderState"
.end annotation


# instance fields
.field private mDefaultReplyAll:Z

.field private mSenders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSendersToShowImagesFor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mShowImages:Z

.field private mZoomValue:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->mSenders:Ljava/util/Set;

    .line 154
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->mSendersToShowImagesFor:Ljava/util/Map;

    .line 157
    iput-boolean v1, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->mShowImages:Z

    .line 159
    iput-boolean v1, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->mDefaultReplyAll:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->setZoomValue(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->setDefaultReplyAll(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->addSender(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->alsoShowImages(Z)V

    return-void
.end method

.method private addSender(Ljava/lang/String;)V
    .locals 1
    .parameter "sender"

    .prologue
    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->mSenders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_0
    return-void
.end method

.method private alsoShowImages(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->mShowImages:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->mShowImages:Z

    .line 186
    return-void

    .line 185
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDefaultReplyAll(Z)V
    .locals 0
    .parameter "replyAll"

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->mDefaultReplyAll:Z

    .line 218
    return-void
.end method

.method private setZoomValue(F)V
    .locals 0
    .parameter "zoom"

    .prologue
    .line 166
    iput p1, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->mZoomValue:F

    .line 167
    return-void
.end method


# virtual methods
.method public addToSenderMap(Ljava/lang/String;Z)V
    .locals 2
    .parameter "sender"
    .parameter "showPictures"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->mSendersToShowImagesFor:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public getSenders()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->mSenders:Ljava/util/Set;

    return-object v0
.end method

.method public getZoomValue()F
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->mZoomValue:F

    return v0
.end method

.method public isDefaultReplyAllValid(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->mDefaultReplyAll:Z

    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gm/persistence/Persistence;->getActionStripActionReplyAll(Landroid/content/Context;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowImages()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->mShowImages:Z

    return v0
.end method

.method public validForSenderWhitelist(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 200
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v3

    .line 201
    .local v3, persistence:Lcom/google/android/gm/persistence/Persistence;
    iget-object v4, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;->mSendersToShowImagesFor:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 202
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gm/persistence/Persistence;->getDisplayImagesFromSender(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 204
    .local v0, displayImagesForSender:Z
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v4, v0, :cond_0

    .line 205
    const/4 v4, 0x0

    .line 208
    .end local v0           #displayImagesForSender:Z
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method
