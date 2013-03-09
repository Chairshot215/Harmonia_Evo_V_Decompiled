.class Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$2;
.super Ljava/lang/Object;
.source "ActivityMainBaseHostPlugin.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$2;->this$0:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "nFirstIndex"
    .parameter "nVisibleItems"
    .parameter "nTotalItems"

    .prologue
    .line 225
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "nScrollState"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin$2;->this$0:Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/SocialNetworkManager/ActivityMainBaseHostPlugin;->onListScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V

    .line 231
    return-void
.end method
