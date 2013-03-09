.class public Lcom/htc/widget/HtcExpandableListConnector$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "HtcExpandableListConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcExpandableListConnector;


# direct methods
.method protected constructor <init>(Lcom/htc/widget/HtcExpandableListConnector;)V
    .locals 0
    .parameter

    .prologue
    .line 935
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListConnector$MyDataSetObserver;->this$0:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 938
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector$MyDataSetObserver;->this$0:Lcom/htc/widget/HtcExpandableListConnector;

    #calls: Lcom/htc/widget/HtcExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/htc/widget/HtcExpandableListConnector;->access$000(Lcom/htc/widget/HtcExpandableListConnector;ZZ)V

    .line 940
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector$MyDataSetObserver;->this$0:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListConnector;->notifyDataSetChanged()V

    .line 941
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 945
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector$MyDataSetObserver;->this$0:Lcom/htc/widget/HtcExpandableListConnector;

    #calls: Lcom/htc/widget/HtcExpandableListConnector;->refreshExpGroupMetadataList(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/htc/widget/HtcExpandableListConnector;->access$000(Lcom/htc/widget/HtcExpandableListConnector;ZZ)V

    .line 947
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListConnector$MyDataSetObserver;->this$0:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListConnector;->notifyDataSetInvalidated()V

    .line 948
    return-void
.end method
