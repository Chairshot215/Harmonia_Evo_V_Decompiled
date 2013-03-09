.class Lcom/htc/launcher/Launcher$FavoritesChangeObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoritesChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 1
    .parameter

    .prologue
    .line 6400
    iput-object p1, p0, Lcom/htc/launcher/Launcher$FavoritesChangeObserver;->this$0:Lcom/htc/launcher/Launcher;

    .line 6401
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6402
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 6406
    iget-object v0, p0, Lcom/htc/launcher/Launcher$FavoritesChangeObserver;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->onFavoritesChanged()V

    .line 6407
    return-void
.end method
