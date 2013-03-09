.class Lcom/htc/opensense/widget/HtcGridView2$WindowRunnnable;
.super Ljava/lang/Object;
.source "HtcGridView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/HtcGridView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/htc/opensense/widget/HtcGridView2;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/widget/HtcGridView2;)V
    .locals 0
    .parameter

    .prologue
    .line 1706
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$WindowRunnnable;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.WindowRunnnable;"
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$WindowRunnnable;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/widget/HtcGridView2;Lcom/htc/opensense/widget/HtcGridView2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1706
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$WindowRunnnable;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.WindowRunnnable;"
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcGridView2$WindowRunnnable;-><init>(Lcom/htc/opensense/widget/HtcGridView2;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 1710
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$WindowRunnnable;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.WindowRunnnable;"
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$WindowRunnnable;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    #calls: Lcom/htc/opensense/widget/HtcGridView2;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcGridView2;->access$200(Lcom/htc/opensense/widget/HtcGridView2;)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/HtcGridView2$WindowRunnnable;->mOriginalAttachCount:I

    .line 1711
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 1714
    .local p0, this:Lcom/htc/opensense/widget/HtcGridView2$WindowRunnnable;,"Lcom/htc/opensense/widget/HtcGridView2<TT;>.WindowRunnnable;"
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$WindowRunnnable;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcGridView2$WindowRunnnable;->this$0:Lcom/htc/opensense/widget/HtcGridView2;

    #calls: Lcom/htc/opensense/widget/HtcGridView2;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/htc/opensense/widget/HtcGridView2;->access$300(Lcom/htc/opensense/widget/HtcGridView2;)I

    move-result v0

    iget v1, p0, Lcom/htc/opensense/widget/HtcGridView2$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
