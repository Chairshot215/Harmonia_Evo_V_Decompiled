.class Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;
.super Landroid/widget/BaseAdapter;
.source "CityListPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/widget/CityListPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CitylistAdapter"
.end annotation


# instance fields
.field cityName:Landroid/widget/TextView;

.field condition:Landroid/widget/TextView;

.field conditionIcon:Landroid/widget/ImageView;

.field currentTmp:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field tempH:Landroid/widget/TextView;

.field tempL:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/htc/Weather/widget/CityListPanel;


# direct methods
.method public constructor <init>(Lcom/htc/Weather/widget/CityListPanel;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->this$0:Lcom/htc/Weather/widget/CityListPanel;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 106
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 107
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->this$0:Lcom/htc/Weather/widget/CityListPanel;

    #getter for: Lcom/htc/Weather/widget/CityListPanel;->mData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/Weather/widget/CityListPanel;->access$000(Lcom/htc/Weather/widget/CityListPanel;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 118
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent2"

    .prologue
    const v7, 0x7f070030

    const v6, 0x7f07001f

    const/4 v5, -0x1

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, view:Landroid/view/View;
    if-nez p2, :cond_0

    .line 124
    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030005

    iget-object v3, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->this$0:Lcom/htc/Weather/widget/CityListPanel;

    #getter for: Lcom/htc/Weather/widget/CityListPanel;->mCityListView:Lcom/htc/widget/HtcListView;
    invoke-static {v3}, Lcom/htc/Weather/widget/CityListPanel;->access$100(Lcom/htc/Weather/widget/CityListPanel;)Lcom/htc/widget/HtcListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 128
    :goto_0
    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->cityName:Landroid/widget/TextView;

    .line 129
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->condition:Landroid/widget/TextView;

    .line 130
    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->currentTmp:Landroid/widget/TextView;

    .line 131
    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->tempH:Landroid/widget/TextView;

    .line 132
    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->tempL:Landroid/widget/TextView;

    .line 133
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->conditionIcon:Landroid/widget/ImageView;

    .line 135
    iget-object v2, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->cityName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->this$0:Lcom/htc/Weather/widget/CityListPanel;

    #getter for: Lcom/htc/Weather/widget/CityListPanel;->mData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/Weather/widget/CityListPanel;->access$000(Lcom/htc/Weather/widget/CityListPanel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;

    iget-object v1, v1, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;->cityname:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v2, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->condition:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->this$0:Lcom/htc/Weather/widget/CityListPanel;

    #getter for: Lcom/htc/Weather/widget/CityListPanel;->mData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/Weather/widget/CityListPanel;->access$000(Lcom/htc/Weather/widget/CityListPanel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;

    iget-object v1, v1, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;->condition:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v2, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->currentTmp:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->this$0:Lcom/htc/Weather/widget/CityListPanel;

    #getter for: Lcom/htc/Weather/widget/CityListPanel;->mData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/Weather/widget/CityListPanel;->access$000(Lcom/htc/Weather/widget/CityListPanel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;

    iget-object v1, v1, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;->currtemp:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u00b0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->tempH:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->this$0:Lcom/htc/Weather/widget/CityListPanel;

    #getter for: Lcom/htc/Weather/widget/CityListPanel;->mData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/Weather/widget/CityListPanel;->access$000(Lcom/htc/Weather/widget/CityListPanel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;

    iget-object v1, v1, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;->tempH:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u00b0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v2, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->tempL:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->this$0:Lcom/htc/Weather/widget/CityListPanel;

    #getter for: Lcom/htc/Weather/widget/CityListPanel;->mData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/Weather/widget/CityListPanel;->access$000(Lcom/htc/Weather/widget/CityListPanel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;

    iget-object v1, v1, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;->tempL:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u00b0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v2, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->conditionIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->this$0:Lcom/htc/Weather/widget/CityListPanel;

    #getter for: Lcom/htc/Weather/widget/CityListPanel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/Weather/widget/CityListPanel;->access$200(Lcom/htc/Weather/widget/CityListPanel;)Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->this$0:Lcom/htc/Weather/widget/CityListPanel;

    #getter for: Lcom/htc/Weather/widget/CityListPanel;->mData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/Weather/widget/CityListPanel;->access$000(Lcom/htc/Weather/widget/CityListPanel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;

    iget v1, v1, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;->conditionIcon:I

    invoke-static {v3, v1}, Lcom/htc/Weather/widget/IconPicker;->getForecastLargeIconId(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->this$0:Lcom/htc/Weather/widget/CityListPanel;

    #getter for: Lcom/htc/Weather/widget/CityListPanel;->mSelectedCity:I
    invoke-static {v1}, Lcom/htc/Weather/widget/CityListPanel;->access$300(Lcom/htc/Weather/widget/CityListPanel;)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->cityName:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->condition:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->currentTmp:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->tempH:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->tempL:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    return-object v0

    .line 126
    :cond_0
    move-object v0, p2

    goto/16 :goto_0

    .line 151
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->cityName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->this$0:Lcom/htc/Weather/widget/CityListPanel;

    #getter for: Lcom/htc/Weather/widget/CityListPanel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/Weather/widget/CityListPanel;->access$200(Lcom/htc/Weather/widget/CityListPanel;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20a0043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->condition:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->this$0:Lcom/htc/Weather/widget/CityListPanel;

    #getter for: Lcom/htc/Weather/widget/CityListPanel;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/Weather/widget/CityListPanel;->access$200(Lcom/htc/Weather/widget/CityListPanel;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20a0044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->currentTmp:Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->tempH:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->tempL:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
