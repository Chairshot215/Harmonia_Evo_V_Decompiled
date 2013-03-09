.class public Lcom/futuredial/ui/FuturedialTest;
.super Lcom/futuredial/ui/GeneralViewCtrl;
.source "FuturedialTest.java"


# instance fields
.field dialog:Landroid/app/ProgressDialog;

.field private handler:Landroid/os/Handler;

.field pbBK:Landroid/widget/Button;

.field pbBtn:Landroid/widget/Button;

.field pbCal:Landroid/widget/Button;

.field pbSms:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/futuredial/ui/GeneralViewCtrl;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/FuturedialTest;->handler:Landroid/os/Handler;

    .line 30
    const-string v0, "[DMI status]"

    iput-object v0, p0, Lcom/futuredial/ui/FuturedialTest;->ViewName:Ljava/lang/String;

    .line 31
    const v0, 0x7f030006

    iput v0, p0, Lcom/futuredial/ui/FuturedialTest;->m_layoutID:I

    .line 32
    return-void
.end method

.method private StartDelItem(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 36
    new-instance v0, Lcom/futuredial/ui/FuturedialTest$1;

    invoke-direct {v0, p0, p1}, Lcom/futuredial/ui/FuturedialTest$1;-><init>(Lcom/futuredial/ui/FuturedialTest;I)V

    invoke-virtual {v0}, Lcom/futuredial/ui/FuturedialTest$1;->start()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/futuredial/ui/FuturedialTest;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/futuredial/ui/FuturedialTest;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/futuredial/ui/FuturedialTest;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/futuredial/ui/FuturedialTest;->StartDelItem(I)V

    return-void
.end method


# virtual methods
.method on_back_key()V
    .locals 2

    .prologue
    .line 168
    new-instance v0, Lcom/futuredial/ui/CBtnListener;

    const-string v1, "com.futuredial.ui.ViewAppFinish"

    invoke-direct {v0, v1}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, simBtnPress:Lcom/futuredial/ui/CBtnListener;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/CBtnListener;->onClick(Landroid/view/View;)V

    .line 170
    return-void
.end method

.method public bridge synthetic setTitleText()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lcom/futuredial/ui/GeneralViewCtrl;->setTitleText()V

    return-void
.end method

.method set_in_arg([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .parameter "args"

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method set_view()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/futuredial/ui/FuturedialTest;->headerText:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f06020e

    invoke-virtual {p0, v1}, Lcom/futuredial/ui/FuturedialTest;->get_resource_string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/futuredial/ui/FuturedialTest;->m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/futuredial/ui/FuturedialTest;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    const-string v1, "GO"

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/futuredial/ui/FuturedialTest;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/futuredial/ui/CBtnListener;

    const-string v2, "com.futuredial.ui.ViewImportData"

    invoke-direct {v1, v2}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/futuredial/ui/FuturedialTest;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/futuredial/ui/FuturedialTest;->pbBtn:Landroid/widget/Button;

    .line 93
    iget-object v0, p0, Lcom/futuredial/ui/FuturedialTest;->pbBtn:Landroid/widget/Button;

    new-instance v1, Lcom/futuredial/ui/FuturedialTest$2;

    invoke-direct {v1, p0}, Lcom/futuredial/ui/FuturedialTest$2;-><init>(Lcom/futuredial/ui/FuturedialTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/futuredial/ui/FuturedialTest;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/futuredial/ui/FuturedialTest;->pbCal:Landroid/widget/Button;

    .line 100
    iget-object v0, p0, Lcom/futuredial/ui/FuturedialTest;->pbCal:Landroid/widget/Button;

    new-instance v1, Lcom/futuredial/ui/FuturedialTest$3;

    invoke-direct {v1, p0}, Lcom/futuredial/ui/FuturedialTest$3;-><init>(Lcom/futuredial/ui/FuturedialTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/futuredial/ui/FuturedialTest;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/futuredial/ui/FuturedialTest;->pbSms:Landroid/widget/Button;

    .line 107
    iget-object v0, p0, Lcom/futuredial/ui/FuturedialTest;->pbSms:Landroid/widget/Button;

    new-instance v1, Lcom/futuredial/ui/FuturedialTest$4;

    invoke-direct {v1, p0}, Lcom/futuredial/ui/FuturedialTest$4;-><init>(Lcom/futuredial/ui/FuturedialTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/futuredial/ui/FuturedialTest;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/DMIUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/futuredial/ui/FuturedialTest;->pbBK:Landroid/widget/Button;

    .line 114
    iget-object v0, p0, Lcom/futuredial/ui/FuturedialTest;->pbBK:Landroid/widget/Button;

    new-instance v1, Lcom/futuredial/ui/FuturedialTest$5;

    invoke-direct {v1, p0}, Lcom/futuredial/ui/FuturedialTest$5;-><init>(Lcom/futuredial/ui/FuturedialTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
