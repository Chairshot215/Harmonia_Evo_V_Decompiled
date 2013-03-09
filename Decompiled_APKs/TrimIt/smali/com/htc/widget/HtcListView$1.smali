.class Lcom/htc/widget/HtcListView$1;
.super Ljava/lang/Object;
.source "HtcListView.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnDataSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcListView;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcListView;)V
    .locals 0
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOnDataSetChange()V
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mListTouchMode:I
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$000(Lcom/htc/widget/HtcListView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    #getter for: Lcom/htc/widget/HtcListView;->mListTouchMode:I
    invoke-static {v0}, Lcom/htc/widget/HtcListView;->access$000(Lcom/htc/widget/HtcListView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcListView$1;->this$0:Lcom/htc/widget/HtcListView;

    const/high16 v1, -0x8000

    iput v1, v0, Lcom/htc/widget/HtcListView;->mEmptyHeight:I

    goto :goto_0
.end method
