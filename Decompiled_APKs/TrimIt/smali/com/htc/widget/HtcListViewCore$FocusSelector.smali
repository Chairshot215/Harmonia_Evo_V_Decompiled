.class Lcom/htc/widget/HtcListViewCore$FocusSelector;
.super Ljava/lang/Object;
.source "HtcListViewCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcListViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusSelector"
.end annotation


# instance fields
.field private mPosition:I

.field private mPositionTop:I

.field final synthetic this$0:Lcom/htc/widget/HtcListViewCore;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcListViewCore;)V
    .locals 0
    .parameter

    .prologue
    .line 1615
    iput-object p1, p0, Lcom/htc/widget/HtcListViewCore$FocusSelector;->this$0:Lcom/htc/widget/HtcListViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcListViewCore;Lcom/htc/widget/HtcListViewCore$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1615
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore$FocusSelector;-><init>(Lcom/htc/widget/HtcListViewCore;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/htc/widget/HtcListViewCore$FocusSelector;->this$0:Lcom/htc/widget/HtcListViewCore;

    iget v1, p0, Lcom/htc/widget/HtcListViewCore$FocusSelector;->mPosition:I

    iget v2, p0, Lcom/htc/widget/HtcListViewCore$FocusSelector;->mPositionTop:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListViewCore;->setSelectionFromTop(II)V

    .line 1627
    return-void
.end method

.method public setup(II)Lcom/htc/widget/HtcListViewCore$FocusSelector;
    .locals 0
    .parameter "position"
    .parameter "top"

    .prologue
    .line 1620
    iput p1, p0, Lcom/htc/widget/HtcListViewCore$FocusSelector;->mPosition:I

    .line 1621
    iput p2, p0, Lcom/htc/widget/HtcListViewCore$FocusSelector;->mPositionTop:I

    .line 1622
    return-object p0
.end method
