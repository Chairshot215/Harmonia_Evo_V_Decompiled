.class Lcom/futuredial/ui/CSingleSelectHandle;
.super Ljava/lang/Object;
.source "CSingleSelectHandle.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# instance fields
.field public m_pos:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/ui/CSingleSelectHandle;->m_pos:I

    return-void
.end method


# virtual methods
.method additional_op()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 19
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    invoke-virtual {p0}, Lcom/futuredial/ui/CSingleSelectHandle;->additional_op()V

    .line 20
    iput p3, p0, Lcom/futuredial/ui/CSingleSelectHandle;->m_pos:I

    .line 22
    return-void
.end method
