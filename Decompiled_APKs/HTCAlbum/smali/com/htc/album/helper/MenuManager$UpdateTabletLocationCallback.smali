.class Lcom/htc/album/helper/MenuManager$UpdateTabletLocationCallback;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/htc/album/AlbumUtility/ReverseGeocoderTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateTabletLocationCallback"
.end annotation


# instance fields
.field mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field mDetailsContainer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4270
    .local p1, context:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    .local p2, detailsContainer:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/ViewGroup;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4271
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$UpdateTabletLocationCallback;->mContext:Ljava/lang/ref/WeakReference;

    .line 4272
    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$UpdateTabletLocationCallback;->mDetailsContainer:Ljava/lang/ref/WeakReference;

    .line 4273
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 4
    .parameter "location"

    .prologue
    .line 4277
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$UpdateTabletLocationCallback;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 4278
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$UpdateTabletLocationCallback;->mDetailsContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 4280
    .local v1, detailsContainer:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 4287
    :cond_0
    :goto_0
    return-void

    .line 4282
    :cond_1
    const-string v2, ""

    if-eq p1, v2, :cond_0

    .line 4284
    const v2, 0x7f0b0082

    const/4 v3, 0x1

    #calls: Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z
    invoke-static {v0, v1, v2, p1, v3}, Lcom/htc/album/helper/MenuManager;->access$800(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    goto :goto_0
.end method
