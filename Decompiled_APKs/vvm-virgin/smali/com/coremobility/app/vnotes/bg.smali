.class public final Lcom/coremobility/app/vnotes/bg;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:[I

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput p2, p0, Lcom/coremobility/app/vnotes/bg;->d:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/bg;->a:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/bg;->b:[Ljava/lang/String;

    iput-object p1, p0, Lcom/coremobility/app/vnotes/bg;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bg;->a:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/bg;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coremobility/app/vnotes/bg;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/coremobility/app/vnotes/bg;->d:I

    iget-object v2, p0, Lcom/coremobility/app/vnotes/bg;->a:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    iput v0, p0, Lcom/coremobility/app/vnotes/bg;->e:I

    move v1, p3

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/coremobility/app/vnotes/bg;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coremobility/app/vnotes/bg;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/bg;->a:[I

    aget v2, v2, v0

    invoke-static {v1, v2}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a(II)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bg;->a:[I

    aget v0, v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bg;->c:[Ljava/lang/String;

    invoke-static {p2}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    :goto_0
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/bg;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bg;->c:[Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/bg;->e:I

    invoke-direct {p0, v0, p1}, Lcom/coremobility/app/vnotes/bg;->a(II)V

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bg;->a:[I

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bg;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bg;->a:[I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    const v0, 0x7f030006

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bg;->f:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b001e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget v2, p0, Lcom/coremobility/app/vnotes/bg;->e:I

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    const v0, 0x7f0b001c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/bg;->b:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b001d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/app/vnotes/bg;->c:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method
