.class Lcom/htc/launcher/AddFavoriteReceiver$AddFavoritesThread;
.super Ljava/lang/Thread;
.source "AddFavoriteReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/AddFavoriteReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddFavoritesThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 324
    iput-object p1, p0, Lcom/htc/launcher/AddFavoriteReceiver$AddFavoritesThread;->mContext:Landroid/content/Context;

    .line 325
    iput-object p2, p0, Lcom/htc/launcher/AddFavoriteReceiver$AddFavoritesThread;->mIntent:Landroid/content/Intent;

    .line 326
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 330
    iget-object v0, p0, Lcom/htc/launcher/AddFavoriteReceiver$AddFavoritesThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/launcher/AddFavoriteReceiver$AddFavoritesThread;->mIntent:Landroid/content/Intent;

    #calls: Lcom/htc/launcher/AddFavoriteReceiver;->saveFavoritesIntoDB(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/htc/launcher/AddFavoriteReceiver;->access$000(Landroid/content/Context;Landroid/content/Intent;)V

    .line 331
    iput-object v2, p0, Lcom/htc/launcher/AddFavoriteReceiver$AddFavoritesThread;->mContext:Landroid/content/Context;

    .line 332
    iput-object v2, p0, Lcom/htc/launcher/AddFavoriteReceiver$AddFavoritesThread;->mIntent:Landroid/content/Intent;

    .line 333
    return-void
.end method
