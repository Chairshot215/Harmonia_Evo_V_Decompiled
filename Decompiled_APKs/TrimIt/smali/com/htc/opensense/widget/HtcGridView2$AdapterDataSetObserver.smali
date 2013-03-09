.class Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "HtcGridView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/HtcGridView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/HtcGridView2;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/widget/HtcGridView2;)V
    .locals 0
    .parameter

    .prologue
    .line 1936
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/widget/HtcGridView2;Lcom/htc/opensense/widget/HtcGridView2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1936
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.AdapterDataSetObserver;"
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;-><init>(Lcom/htc/opensense/widget/HtcGridView2;)V

    return-void
.end method

.method private triggerDataUpdate()V
    .locals 2

    .prologue
    .line 1947
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/opensense/widget/HtcGridView2;->mEnableFakeFocusViewItem:Z

    .line 1951
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/opensense/widget/HtcGridView2;->mForceLayout:Z

    .line 1952
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2;->requestLayout()V

    .line 1953
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 1939
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.AdapterDataSetObserver;"
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;->triggerDataUpdate()V

    .line 1940
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 1943
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.AdapterDataSetObserver;"
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcGridView2$AdapterDataSetObserver;->triggerDataUpdate()V

    .line 1944
    return-void
.end method
