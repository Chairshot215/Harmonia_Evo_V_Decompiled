.class public final Lcom/coremobility/app/vnotes/hs;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Vector;IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object p1, p0, Lcom/coremobility/app/vnotes/hs;->a:Landroid/content/Context;

    iput p3, p0, Lcom/coremobility/app/vnotes/hs;->c:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/hs;->b:Landroid/view/LayoutInflater;

    iput-boolean p4, p0, Lcom/coremobility/app/vnotes/hs;->d:Z

    iput-boolean p5, p0, Lcom/coremobility/app/vnotes/hs;->e:Z

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/coremobility/app/vnotes/hs;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hr;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->e()I

    move-result v6

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->a()Ljava/lang/String;

    move-result-object v7

    if-eqz p2, :cond_2

    move-object v2, p2

    :goto_0
    const v1, 0x7f0b003b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b003d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v5}, Lcom/coremobility/j/s;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v5}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move v3, v4

    :cond_0
    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b007b

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/coremobility/app/vnotes/hs;->d:Z

    invoke-static {v6, v5, v3}, Lcom/coremobility/app/vnotes/cq;->a(IZZ)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f0b0039

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/coremobility/app/vnotes/hs;->a:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "preference_show_contact_pictures"

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/coremobility/app/vnotes/hs;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->f()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_3
    move-object v0, v2

    :goto_4
    return-object v0

    :cond_2
    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/hs;->e:Z

    if-eqz v1, :cond_3

    new-instance v2, Lcom/coremobility/app/customui/a;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/hs;->a:Landroid/content/Context;

    iget v8, p0, Lcom/coremobility/app/vnotes/hs;->c:I

    invoke-direct {v2, v1, v8}, Lcom/coremobility/app/customui/a;-><init>(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to display recipient, Reason["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_4

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/coremobility/app/vnotes/hs;->b:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/coremobility/app/vnotes/hs;->c:I

    const/4 v8, 0x0

    invoke-virtual {v1, v2, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    invoke-static {v5}, Lcom/coremobility/j/s;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    move v3, v4

    goto/16 :goto_1

    :cond_5
    const v0, 0x7f020086

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_6
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
