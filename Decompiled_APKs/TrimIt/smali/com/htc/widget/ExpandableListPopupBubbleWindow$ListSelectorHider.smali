.class Lcom/htc/widget/ExpandableListPopupBubbleWindow$ListSelectorHider;
.super Ljava/lang/Object;
.source "ExpandableListPopupBubbleWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ExpandableListPopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListSelectorHider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;


# direct methods
.method private constructor <init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 1491
    iput-object p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$ListSelectorHider;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;Lcom/htc/widget/ExpandableListPopupBubbleWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1491
    invoke-direct {p0, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$ListSelectorHider;-><init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$ListSelectorHider;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->clearListSelection()V

    .line 1494
    return-void
.end method
