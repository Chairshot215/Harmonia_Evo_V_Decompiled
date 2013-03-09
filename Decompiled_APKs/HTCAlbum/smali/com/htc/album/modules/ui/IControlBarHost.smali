.class public interface abstract Lcom/htc/album/modules/ui/IControlBarHost;
.super Ljava/lang/Object;
.source "IControlBarHost.java"

# interfaces
.implements Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;


# virtual methods
.method public abstract getHeaderSubtitle()Ljava/lang/String;
.end method

.method public abstract getHeaderTitle()Ljava/lang/String;
.end method

.method public abstract getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;
.end method

.method public abstract onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
.end method

.method public abstract onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
.end method

.method public abstract onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
.end method

.method public abstract onRefreshHeaderBar(Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;)V
.end method

.method public abstract requestFooterBar()Z
.end method

.method public abstract requestHeaderBar()Z
.end method
