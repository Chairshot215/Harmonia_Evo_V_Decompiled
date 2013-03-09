.class Landroid/widget/TextView$HtcPastePositionListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcPastePositionListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$HtcPastePositionListener;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView$HtcPastePositionListener;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public updatePosition(IIZZ)V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView$HtcPastePositionListener;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->useHtcTextSelection()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$HtcPastePositionListener;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->canReplaceActionMode()Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$HtcPastePositionListener;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v1, p0, Landroid/widget/TextView$HtcPastePositionListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/htc/textselection/HtcTextSelectionManager;->canUpdateQuickAction(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$HtcPastePositionListener;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->showQuickAction()V
    invoke-static {v0}, Landroid/widget/TextView;->access$3100(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method
