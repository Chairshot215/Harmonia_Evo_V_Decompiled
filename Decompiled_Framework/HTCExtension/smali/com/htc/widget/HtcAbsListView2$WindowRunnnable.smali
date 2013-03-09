.class Lcom/htc/widget/HtcAbsListView2$WindowRunnnable;
.super Ljava/lang/Object;
.source "HtcAbsListView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAbsListView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/htc/widget/HtcAbsListView2;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcAbsListView2;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcAbsListView2$WindowRunnnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcAbsListView2;Lcom/htc/widget/HtcAbsListView2$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView2$WindowRunnnable;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$WindowRunnnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    #calls: Lcom/htc/widget/HtcAbsListView2;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/htc/widget/HtcAbsListView2;->access$200(Lcom/htc/widget/HtcAbsListView2;)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcAbsListView2$WindowRunnnable;->mOriginalAttachCount:I

    return-void
.end method

.method public sameWindow()Z
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$WindowRunnnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView2$WindowRunnnable;->this$0:Lcom/htc/widget/HtcAbsListView2;

    #calls: Lcom/htc/widget/HtcAbsListView2;->getWindowAttachCount()I
    invoke-static {v0}, Lcom/htc/widget/HtcAbsListView2;->access$300(Lcom/htc/widget/HtcAbsListView2;)I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcAbsListView2$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
