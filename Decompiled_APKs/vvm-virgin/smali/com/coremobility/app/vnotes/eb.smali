.class public final Lcom/coremobility/app/vnotes/eb;
.super Landroid/app/AlertDialog;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/Button;

.field private e:Landroid/content/Context;

.field private f:Lcom/coremobility/app/vnotes/ed;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coremobility/app/vnotes/ed;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coremobility/app/vnotes/eb;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/eb;->f:Lcom/coremobility/app/vnotes/ed;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/eb;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/eb;->c:Landroid/view/View;

    const v1, 0x7f0b006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/eb;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/eb;->a:Landroid/widget/EditText;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEms(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/eb;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/coremobility/app/vnotes/ec;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/ec;-><init>(Lcom/coremobility/app/vnotes/eb;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/eb;->c:Landroid/view/View;

    const v1, 0x7f0b006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/eb;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/eb;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/eb;->setView(Landroid/view/View;)V

    const v0, 0x7f0c0158

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/eb;->setTitle(I)V

    const/4 v0, -0x1

    const v1, 0x7f0c00f2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/coremobility/app/vnotes/eb;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x2

    const v1, 0x7f0c00f3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/coremobility/app/vnotes/eb;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/coremobility/app/vnotes/eb;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_from_name"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/coremobility/app/vnotes/eb;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/eb;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/coremobility/app/vnotes/eb;->a:Landroid/widget/EditText;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/eb;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/eb;->d:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/eb;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/eb;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/eb;->f:Lcom/coremobility/app/vnotes/ed;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/eb;->f:Lcom/coremobility/app/vnotes/ed;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/coremobility/app/vnotes/ed;->c(I)V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/eb;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v3, Lcom/coremobility/k/av;

    invoke-direct {v3, v2}, Lcom/coremobility/k/av;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v1, p0, Lcom/coremobility/app/vnotes/eb;->e:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "preference_from_name"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "preference_from_name"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cf;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/coremobility/app/vnotes/eb;->f:Lcom/coremobility/app/vnotes/ed;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coremobility/app/vnotes/eb;->f:Lcom/coremobility/app/vnotes/ed;

    invoke-interface {v1, v0}, Lcom/coremobility/app/vnotes/ed;->c(I)V

    :cond_2
    :goto_1
    new-instance v1, Lcom/coremobility/k/ca;

    invoke-direct {v1, v0}, Lcom/coremobility/k/ca;-><init>(I)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/eb;->f:Lcom/coremobility/app/vnotes/ed;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/eb;->f:Lcom/coremobility/app/vnotes/ed;

    invoke-interface {v0, v1}, Lcom/coremobility/app/vnotes/ed;->c(I)V

    :cond_4
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/eb;->f:Lcom/coremobility/app/vnotes/ed;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/eb;->f:Lcom/coremobility/app/vnotes/ed;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/coremobility/app/vnotes/ed;->c(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/eb;->f:Lcom/coremobility/app/vnotes/ed;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/eb;->f:Lcom/coremobility/app/vnotes/ed;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/coremobility/app/vnotes/ed;->c(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/eb;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/eb;->d:Landroid/widget/Button;

    return-void
.end method
