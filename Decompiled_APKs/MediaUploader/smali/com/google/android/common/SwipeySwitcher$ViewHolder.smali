.class public Lcom/google/android/common/SwipeySwitcher$ViewHolder;
.super Ljava/lang/Object;
.source "SwipeySwitcher.java"

# interfaces
.implements Lcom/google/android/common/SwipeySwitcher$IViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/SwipeySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field mAvailable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/common/SwipeySwitcher$IViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mInUse:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/common/SwipeySwitcher$IViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mIntent:Landroid/content/Intent;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher$ViewHolder;->mView:Landroid/view/View;

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/common/SwipeySwitcher$IViewHolder;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/common/SwipeySwitcher$IViewHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher$ViewHolder;->mView:Landroid/view/View;

    .line 224
    iput-object p2, p0, Lcom/google/android/common/SwipeySwitcher$ViewHolder;->mAvailable:Ljava/util/ArrayList;

    .line 225
    iput-object p3, p0, Lcom/google/android/common/SwipeySwitcher$ViewHolder;->mInUse:Ljava/util/ArrayList;

    .line 226
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/common/SwipeySwitcher$ViewHolder;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher$ViewHolder;->mIntent:Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method public clearScrollingCache()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public createScrollingCache()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public focus()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public get()Landroid/view/View;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$ViewHolder;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$ViewHolder;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    const-string v0, ""

    return-object v0
.end method

.method public run(Lcom/google/android/common/SwipeySwitcher$ViewRunnable;)Z
    .locals 1
    .parameter

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$ViewHolder;->mInUse:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$ViewHolder;->mInUse:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$ViewHolder;->mAvailable:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher$ViewHolder;->mAvailable:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_1
    return-void
.end method

.method public unfocus()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method
