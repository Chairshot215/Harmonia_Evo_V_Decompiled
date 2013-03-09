.class Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;
.super Lcom/futuredial/ui/CSingleSelectHandle;
.source "ViewSelectOldPhoneMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/ui/ViewSelectOldPhoneMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CMakerSelectHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuredial/ui/ViewSelectOldPhoneMaker;


# direct methods
.method constructor <init>(Lcom/futuredial/ui/ViewSelectOldPhoneMaker;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;->this$0:Lcom/futuredial/ui/ViewSelectOldPhoneMaker;

    invoke-direct {p0}, Lcom/futuredial/ui/CSingleSelectHandle;-><init>()V

    return-void
.end method


# virtual methods
.method additional_op()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;->this$0:Lcom/futuredial/ui/ViewSelectOldPhoneMaker;

    iget-object v0, v0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 47
    return-void
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    invoke-virtual {p0}, Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;->additional_op()V

    .line 51
    iget v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;->m_pos:I

    if-eq p3, v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;->this$0:Lcom/futuredial/ui/ViewSelectOldPhoneMaker;

    const-string v1, "phoneModelSelector"

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/ViewSelectOldPhoneMaker;->del_mem(Ljava/lang/String;)Z

    .line 53
    :cond_0
    iput p3, p0, Lcom/futuredial/ui/ViewSelectOldPhoneMaker$CMakerSelectHandle;->m_pos:I

    .line 54
    return-void
.end method
