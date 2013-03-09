.class Lcom/htc/opensense/widget/AlbumAbsListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "AlbumAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/AlbumAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/htc/opensense/widget/AlbumAbsListView;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/widget/AlbumAbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1608
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView$WindowRunnnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/widget/AlbumAbsListView;Lcom/htc/opensense/widget/AlbumAbsListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1608
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/AlbumAbsListView$WindowRunnnable;-><init>(Lcom/htc/opensense/widget/AlbumAbsListView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$WindowRunnnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    #calls: Lcom/htc/opensense/widget/AlbumAbsListView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->access$200(Lcom/htc/opensense/widget/AlbumAbsListView;)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$WindowRunnnable;->mOriginalAttachCount:I

    .line 1613
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$WindowRunnnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$WindowRunnnable;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    #calls: Lcom/htc/opensense/widget/AlbumAbsListView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->access$300(Lcom/htc/opensense/widget/AlbumAbsListView;)I

    move-result v0

    iget v1, p0, Lcom/htc/opensense/widget/AlbumAbsListView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
