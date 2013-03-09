.class public Lcom/coremobility/app/customui/CM_RecipientEditor;
.super Landroid/widget/MultiAutoCompleteTextView;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private a:Lcom/coremobility/app/customui/i;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/coremobility/app/customui/i;

    invoke-direct {v0, p0, p0}, Lcom/coremobility/app/customui/i;-><init>(Lcom/coremobility/app/customui/CM_RecipientEditor;Landroid/widget/MultiAutoCompleteTextView;)V

    iput-object v0, p0, Lcom/coremobility/app/customui/CM_RecipientEditor;->a:Lcom/coremobility/app/customui/i;

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_RecipientEditor;->a:Lcom/coremobility/app/customui/i;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    invoke-virtual {p0, p0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Lcom/coremobility/app/customui/h;

    invoke-direct {v0, p0}, Lcom/coremobility/app/customui/h;-><init>(Lcom/coremobility/app/customui/CM_RecipientEditor;)V

    invoke-virtual {p0, v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic a(Lcom/coremobility/app/customui/CM_RecipientEditor;)Lcom/coremobility/app/customui/i;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_RecipientEditor;->a:Lcom/coremobility/app/customui/i;

    return-object v0
.end method

.method static synthetic a(Lcom/coremobility/app/customui/CM_RecipientEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coremobility/app/customui/CM_RecipientEditor;->b:Z

    return p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_RecipientEditor;->a:Lcom/coremobility/app/customui/i;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/i;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_RecipientEditor;->a:Lcom/coremobility/app/customui/i;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/i;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/customui/CM_RecipientEditor;->a:Lcom/coremobility/app/customui/i;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/i;->a()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/app/customui/CM_RecipientEditor;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 4

    const v3, 0x186a0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->d()Lcom/coremobility/app/vnotes/hp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hp;->c()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x7f0c0129

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->cancelLongPress()V

    invoke-interface {p1, v3, v2}, Landroid/view/ContextMenu;->performIdentifierAction(II)Z

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->removeItem(I)V

    invoke-interface {p1}, Landroid/view/ContextMenu;->close()V

    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
