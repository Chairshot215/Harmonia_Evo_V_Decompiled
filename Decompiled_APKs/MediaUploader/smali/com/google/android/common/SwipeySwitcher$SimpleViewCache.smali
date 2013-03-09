.class Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;
.super Ljava/lang/Object;
.source "SwipeySwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/SwipeySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleViewCache"
.end annotation


# instance fields
.field private mAvailable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/common/SwipeySwitcher$IViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mInUse:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/common/SwipeySwitcher$IViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mMaker:Lcom/google/android/common/SwipeySwitcher$IMakeView;

.field final synthetic this$0:Lcom/google/android/common/SwipeySwitcher;


# direct methods
.method constructor <init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/SwipeySwitcher$IMakeView;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->this$0:Lcom/google/android/common/SwipeySwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mAvailable:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mInUse:Ljava/util/ArrayList;

    .line 114
    iput-object p2, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mMaker:Lcom/google/android/common/SwipeySwitcher$IMakeView;

    .line 115
    return-void
.end method


# virtual methods
.method get(Landroid/content/Intent;)Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    .locals 6
    .parameter

    .prologue
    .line 118
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mAvailable:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mAvailable:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/common/SwipeySwitcher$ViewHolder;

    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mMaker:Lcom/google/android/common/SwipeySwitcher$IMakeView;

    invoke-interface {v3}, Lcom/google/android/common/SwipeySwitcher$IMakeView;->makeView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mAvailable:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mInUse:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/common/SwipeySwitcher$ViewHolder;-><init>(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mAvailable:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mAvailable:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    .line 122
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mInUse:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    move-object v0, v1

    check-cast v0, Lcom/google/android/common/SwipeySwitcher$ViewHolder;

    move-object v2, v0

    #setter for: Lcom/google/android/common/SwipeySwitcher$ViewHolder;->mIntent:Landroid/content/Intent;
    invoke-static {v2, p1}, Lcom/google/android/common/SwipeySwitcher$ViewHolder;->access$002(Lcom/google/android/common/SwipeySwitcher$ViewHolder;Landroid/content/Intent;)Landroid/content/Intent;

    .line 124
    return-object v1
.end method

.method memberOf(Lcom/google/android/common/SwipeySwitcher$IViewHolder;)Z
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mInUse:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->mAvailable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
