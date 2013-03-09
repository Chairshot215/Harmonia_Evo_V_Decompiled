.class Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "StatusHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/providers/uploads/uploadUI/StatusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionItemAdapter"
.end annotation


# instance fields
.field ItemList:[Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;


# direct methods
.method public constructor <init>(Lcom/htc/providers/uploads/uploadUI/StatusHelper;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "list"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemAdapter;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 266
    iput-object p2, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemAdapter;->ItemList:[Ljava/lang/String;

    .line 267
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemAdapter;->ItemList:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemAdapter;->ItemList:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 278
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 282
    if-nez p2, :cond_0

    .line 285
    iget-object v1, p0, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemAdapter;->this$0:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget-object v1, v1, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x2090007

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 290
    :cond_0
    const v1, 0x2020010

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 292
    .local v0, textview:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/htc/providers/uploads/uploadUI/StatusHelper$OptionItemAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    return-object p2
.end method
