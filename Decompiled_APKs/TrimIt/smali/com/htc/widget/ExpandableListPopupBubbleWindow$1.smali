.class Lcom/htc/widget/ExpandableListPopupBubbleWindow$1;
.super Ljava/lang/Object;
.source "ExpandableListPopupBubbleWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/ExpandableListPopupBubbleWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;


# direct methods
.method constructor <init>(Lcom/htc/widget/ExpandableListPopupBubbleWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$1;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1059
    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$1;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 1060
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$1;->this$0:Lcom/htc/widget/ExpandableListPopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow;->show()V

    .line 1063
    :cond_0
    return-void
.end method
