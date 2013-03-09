.class Lcom/htc/widget/HtcAbsListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "HtcAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcAbsListView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView$WindowRunnnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcAbsListView;Lcom/htc/widget/HtcAbsListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView$WindowRunnnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$WindowRunnnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #calls: Lcom/htc/widget/HtcAbsListView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/htc/widget/HtcAbsListView;->access$200(Lcom/htc/widget/HtcAbsListView;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView$WindowRunnnable;->mOriginalAttachCount:I

    return-void
.end method

.method public sameWindow()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$WindowRunnnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView$WindowRunnnable;->this$0:Lcom/htc/widget/HtcAbsListView;

    #calls: Lcom/htc/widget/HtcAbsListView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/htc/widget/HtcAbsListView;->access$300(Lcom/htc/widget/HtcAbsListView;)I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcAbsListView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
