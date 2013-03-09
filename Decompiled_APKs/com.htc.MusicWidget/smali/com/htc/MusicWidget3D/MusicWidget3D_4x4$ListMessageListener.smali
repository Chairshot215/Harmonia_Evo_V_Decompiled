.class Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MusicWidget3D_4x4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListMessageListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;


# direct methods
.method private constructor <init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 503
    iget-object v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxListItem;->getIndex()I

    move-result v0

    .line 504
    .local v0, pos:I
    const-string v2, "[MusicWidget3D]"

    const-string v3, "received message"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    if-nez v2, :cond_1

    .line 506
    const-string v2, "[MusicWidget3D]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list item create. Pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    iget-object v3, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    const/4 v4, 0x0

    #calls: Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->setRecentAlbumEnalbe(Lcom/htc/fusion/fx/controls/FxListItem;Z)V
    invoke-static {v2, v3, v4}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->access$500(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;Lcom/htc/fusion/fx/controls/FxListItem;Z)V

    .line 508
    new-instance v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    invoke-direct {v1, v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)V

    .line 509
    .local v1, recentAlbumItem:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;
    iget-object v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    iput-object v2, v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;->mListItem:Lcom/htc/fusion/fx/controls/FxListItem;

    .line 510
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    #getter for: Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->access$600(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 533
    .end local v1           #recentAlbumItem:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 512
    const-string v2, "[MusicWidget3D]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list item click. Pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    #getter for: Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->access$600(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    #getter for: Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->access$600(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 514
    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    #getter for: Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->access$600(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;

    iget v2, v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;->mAttachAlbumId:I

    #calls: Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->startAlbumLibrary(I)V
    invoke-static {v3, v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->access$700(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;I)V

    goto :goto_0

    .line 516
    :cond_2
    iget v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    if-ne v2, v5, :cond_3

    .line 517
    const-string v2, "[MusicWidget3D]"

    const-string v3, "list item destroy"

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    #getter for: Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->access$600(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    #getter for: Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->access$600(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 519
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    #getter for: Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->access$600(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 520
    :cond_3
    iget v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_4

    .line 521
    const-string v2, "[MusicWidget3D]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list item ANIMATE_REFRESH_UPDATE. Pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    #getter for: Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->access$800(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 523
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    iget-object v3, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    #calls: Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->setRecentAlbumEnalbe(Lcom/htc/fusion/fx/controls/FxListItem;Z)V
    invoke-static {v2, v3, v5}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->access$500(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;Lcom/htc/fusion/fx/controls/FxListItem;Z)V

    .line 524
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    iget-object v3, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v2, v0, v3}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->refreshRecentAlbum(ILcom/htc/fusion/fx/controls/FxListItem;)V

    .line 525
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    #getter for: Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->access$600(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    #getter for: Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->access$600(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 526
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    #getter for: Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumItems:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->access$600(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;

    iget-object v3, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    #getter for: Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->mRecentAlbumInfos:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;->access$800(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;

    #getter for: Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->mRecentAlbumId:I
    invoke-static {v3}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;->access$900(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumInfo;)I

    move-result v3

    iput v3, v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;->mAttachAlbumId:I

    goto/16 :goto_0

    .line 530
    :cond_4
    iget v2, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_0

    .line 531
    const-string v2, "[MusicWidget3D]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list item ANIMATE_REFRESH_COMPLETE. Pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/MusicWidget3D/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 499
    check-cast p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$ListMessageListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V

    return-void
.end method
