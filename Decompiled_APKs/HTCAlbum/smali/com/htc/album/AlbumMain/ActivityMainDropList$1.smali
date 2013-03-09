.class Lcom/htc/album/AlbumMain/ActivityMainDropList$1;
.super Ljava/lang/Object;
.source "ActivityMainDropList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/AlbumMain/ActivityMainDropList;->SyncAlbumTabPlugins()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;


# direct methods
.method constructor <init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;)V
    .locals 0
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$1;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$1;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/album/AlbumCommon/AlbumLauncher;->gotoCamera(Landroid/app/Activity;Z)V

    .line 532
    return-void
.end method
