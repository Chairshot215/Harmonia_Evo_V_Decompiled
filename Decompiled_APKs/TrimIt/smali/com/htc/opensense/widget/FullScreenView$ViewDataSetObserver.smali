.class Lcom/htc/opensense/widget/FullScreenView$ViewDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "FullScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/FullScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/FullScreenView;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/widget/FullScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 4178
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$ViewDataSetObserver;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/widget/FullScreenView;Lcom/htc/opensense/widget/FullScreenView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4178
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ViewDataSetObserver;-><init>(Lcom/htc/opensense/widget/FullScreenView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 4186
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ViewDataSetObserver;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v1, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->updateViews(Z)V
    invoke-static {v0, v1}, Lcom/htc/opensense/widget/FullScreenView;->access$6200(Lcom/htc/opensense/widget/FullScreenView;Z)V

    .line 4187
    return-void
.end method
