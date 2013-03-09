.class public final Lcom/coremobility/app/customui/c;
.super Landroid/app/AlertDialog;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coremobility/app/customui/c;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/coremobility/app/customui/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030005

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b001a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/coremobility/app/customui/c;->b:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/coremobility/app/customui/c;->setView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/customui/c;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/customui/c;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/customui/c;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/customui/c;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/customui/c;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
