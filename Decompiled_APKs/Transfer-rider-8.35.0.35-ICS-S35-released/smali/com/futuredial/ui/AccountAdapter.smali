.class Lcom/futuredial/ui/AccountAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ViewSelectDataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/futuredial/ui/AccountData;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/ui/AccountData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1231
    .local p2, accountData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/ui/AccountData;>;"
    const v0, 0x20900ee

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1232
    iput-object p1, p0, Lcom/futuredial/ui/AccountAdapter;->mContext:Landroid/content/Context;

    .line 1233
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/AccountAdapter;->setDropDownViewResource(I)V

    .line 1234
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 1238
    if-nez p2, :cond_0

    .line 1239
    iget-object v6, p0, Lcom/futuredial/ui/AccountAdapter;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 1240
    .local v3, layoutInflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030001

    invoke-virtual {v3, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1242
    .end local v3           #layoutInflater:Landroid/view/LayoutInflater;
    :cond_0
    const v6, 0x7f090006

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1243
    .local v1, firstAccountLine:Landroid/widget/TextView;
    const v6, 0x7f090007

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1246
    .local v5, secondAccountLine:Landroid/widget/TextView;
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1247
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1249
    invoke-virtual {p0, p1}, Lcom/futuredial/ui/AccountAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/ui/AccountData;

    .line 1250
    .local v0, data:Lcom/futuredial/ui/AccountData;
    invoke-virtual {v0}, Lcom/futuredial/ui/AccountData;->getTypeLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1251
    .local v2, label:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/futuredial/ui/AccountData;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1252
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 1253
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1254
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1256
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1257
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1258
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1265
    :cond_2
    return-object p2
.end method
