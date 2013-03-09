.class Lcom/htc/view/table/AbstractTableView$WindowRunnnable;
.super Ljava/lang/Object;
.source "AbstractTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/table/AbstractTableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/htc/view/table/AbstractTableView;


# direct methods
.method private constructor <init>(Lcom/htc/view/table/AbstractTableView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/view/table/AbstractTableView$WindowRunnnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/view/table/AbstractTableView;Lcom/htc/view/table/AbstractTableView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/view/table/AbstractTableView$WindowRunnnable;-><init>(Lcom/htc/view/table/AbstractTableView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$WindowRunnnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    #calls: Lcom/htc/view/table/AbstractTableView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/htc/view/table/AbstractTableView;->access$200(Lcom/htc/view/table/AbstractTableView;)I

    move-result v0

    iput v0, p0, Lcom/htc/view/table/AbstractTableView$WindowRunnnable;->mOriginalAttachCount:I

    return-void
.end method

.method public sameWindow()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$WindowRunnnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    invoke-virtual {v0}, Lcom/htc/view/table/AbstractTableView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/view/table/AbstractTableView$WindowRunnnable;->this$0:Lcom/htc/view/table/AbstractTableView;

    #calls: Lcom/htc/view/table/AbstractTableView;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/htc/view/table/AbstractTableView;->access$300(Lcom/htc/view/table/AbstractTableView;)I

    move-result v0

    iget v1, p0, Lcom/htc/view/table/AbstractTableView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
