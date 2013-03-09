.class Lcom/htc/home/personalize/opensense/FullScreenView$ViewDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "FullScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/opensense/FullScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/opensense/FullScreenView;


# direct methods
.method private constructor <init>(Lcom/htc/home/personalize/opensense/FullScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 3751
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ViewDataSetObserver;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/home/personalize/opensense/FullScreenView;Lcom/htc/home/personalize/opensense/FullScreenView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3751
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$ViewDataSetObserver;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 3759
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ViewDataSetObserver;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    const/4 v1, 0x1

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->updateViews(Z)V
    invoke-static {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$5700(Lcom/htc/home/personalize/opensense/FullScreenView;Z)V

    .line 3760
    return-void
.end method
