.class public Lcom/htc/music/widget/GroupListConnector$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "GroupListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/GroupListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/GroupListConnector;


# direct methods
.method protected constructor <init>(Lcom/htc/music/widget/GroupListConnector;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/widget/GroupListConnector$MyDataSetObserver;->this$0:Lcom/htc/music/widget/GroupListConnector;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector$MyDataSetObserver;->this$0:Lcom/htc/music/widget/GroupListConnector;

    const/4 v1, 0x1

    #calls: Lcom/htc/music/widget/GroupListConnector;->refreshExpGroupMetadataList(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/widget/GroupListConnector;->access$000(Lcom/htc/music/widget/GroupListConnector;Z)V

    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector$MyDataSetObserver;->this$0:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v0}, Lcom/htc/music/widget/GroupListConnector;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector$MyDataSetObserver;->this$0:Lcom/htc/music/widget/GroupListConnector;

    const/4 v1, 0x1

    #calls: Lcom/htc/music/widget/GroupListConnector;->refreshExpGroupMetadataList(Z)V
    invoke-static {v0, v1}, Lcom/htc/music/widget/GroupListConnector;->access$000(Lcom/htc/music/widget/GroupListConnector;Z)V

    iget-object v0, p0, Lcom/htc/music/widget/GroupListConnector$MyDataSetObserver;->this$0:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v0}, Lcom/htc/music/widget/GroupListConnector;->notifyDataSetInvalidated()V

    return-void
.end method
