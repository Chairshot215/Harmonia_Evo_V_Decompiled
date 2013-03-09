.class Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DmrListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/DmrListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DlnaListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRenderIcon:Landroid/widget/ImageView;

.field private mRenderIndex:I

.field private mRenderName:Landroid/widget/CheckedTextView;

.field final synthetic this$0:Lcom/htc/dmc/DmrListActivity;


# direct methods
.method public constructor <init>(Lcom/htc/dmc/DmrListActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 2115
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2116
    iput-object p2, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->mContext:Landroid/content/Context;

    .line 2117
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2121
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2129
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2136
    int-to-long v0, p1

    .line 2138
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2159
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v7}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->getItemType()I

    move-result v7

    if-nez v7, :cond_0

    .line 2161
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$3600(Lcom/htc/dmc/DmrListActivity;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x2090026

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2163
    const v7, 0x2020010

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2165
    .local v6, txtTitle:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    const v8, 0x7f08001b

    invoke-virtual {v7, v8}, Lcom/htc/dmc/DmrListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2166
    .local v4, szDeviceName:Ljava/lang/String;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p2

    .line 2273
    .end local v4           #szDeviceName:Ljava/lang/String;
    .end local v6           #txtTitle:Landroid/widget/TextView;
    .end local p2
    .local v0, convertView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 2170
    .end local v0           #convertView:Landroid/view/View;
    .restart local p2
    :cond_0
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v7}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->getItemType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 2172
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$3600(Lcom/htc/dmc/DmrListActivity;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x2090021

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2174
    const v7, 0x2020010

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2175
    .restart local v6       #txtTitle:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    const v8, 0x7f08001c

    invoke-virtual {v7, v8}, Lcom/htc/dmc/DmrListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p2

    .line 2177
    .end local p2
    .restart local v0       #convertView:Landroid/view/View;
    goto :goto_0

    .line 2180
    .end local v0           #convertView:Landroid/view/View;
    .end local v6           #txtTitle:Landroid/widget/TextView;
    .restart local p2
    :cond_1
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v7}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->getItemType()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 2182
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$3600(Lcom/htc/dmc/DmrListActivity;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x2090021

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2184
    const v7, 0x2020010

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2185
    .restart local v6       #txtTitle:Landroid/widget/TextView;
    const v7, 0x7f08001d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    move-object v0, p2

    .line 2187
    .end local p2
    .restart local v0       #convertView:Landroid/view/View;
    goto :goto_0

    .line 2190
    .end local v0           #convertView:Landroid/view/View;
    .end local v6           #txtTitle:Landroid/widget/TextView;
    .restart local p2
    :cond_2
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v7}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->getItemType()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_5

    .line 2192
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$3600(Lcom/htc/dmc/DmrListActivity;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x2090007

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2195
    const v7, 0x2020010

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2197
    .restart local v6       #txtTitle:Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 2198
    .local v2, nChildHeight:I
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$3700(Lcom/htc/dmc/DmrListActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$3700(Lcom/htc/dmc/DmrListActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 2200
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$3700(Lcom/htc/dmc/DmrListActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 2201
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$3700(Lcom/htc/dmc/DmrListActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v2, v7

    .line 2200
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2210
    .end local v1           #i:I
    :cond_3
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$3700(Lcom/htc/dmc/DmrListActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHeight(I)V

    .line 2211
    const/16 v7, 0x23

    const/4 v8, 0x0

    const/16 v9, 0x23

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2212
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 2213
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2215
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2217
    const/4 v5, 0x0

    .line 2218
    .local v5, szWLInfo:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mCookie:I
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$1800(Lcom/htc/dmc/DmrListActivity;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 2219
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    const v8, 0x7f080023

    invoke-virtual {v7, v8}, Lcom/htc/dmc/DmrListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2223
    :goto_2
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p2

    .line 2225
    .end local p2
    .restart local v0       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 2221
    .end local v0           #convertView:Landroid/view/View;
    .restart local p2
    :cond_4
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    const v8, 0x7f080024

    invoke-virtual {v7, v8}, Lcom/htc/dmc/DmrListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 2229
    .end local v2           #nChildHeight:I
    .end local v5           #szWLInfo:Ljava/lang/String;
    .end local v6           #txtTitle:Landroid/widget/TextView;
    :cond_5
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$3600(Lcom/htc/dmc/DmrListActivity;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030005

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2230
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x205004d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setMinimumHeight(I)V

    .line 2233
    const/4 v7, 0x1

    if-eq p1, v7, :cond_6

    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget v7, v7, Lcom/htc/dmc/DmrListActivity;->mWifiDMRCount:I

    add-int/lit8 v7, v7, 0x2

    if-ne p1, v7, :cond_8

    :cond_6
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq p1, v7, :cond_8

    .line 2235
    const/4 v7, 0x1

    if-ne p1, v7, :cond_7

    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget-boolean v7, v7, Lcom/htc/dmc/DmrListActivity;->mIsDMREmpty:Z

    if-nez v7, :cond_8

    .line 2236
    :cond_7
    new-instance v7, Lcom/htc/widget/HtcListItemSeparableType;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2241
    :cond_8
    move v3, p1

    .line 2243
    .local v3, position:I
    const v7, 0x1020014

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckedTextView;

    iput-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->mRenderName:Landroid/widget/CheckedTextView;

    .line 2245
    const v7, 0x7f050030

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->mRenderIcon:Landroid/widget/ImageView;

    .line 2247
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v7}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->getIconType()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 2261
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->mRenderIcon:Landroid/widget/ImageView;

    const v8, 0x7f020009

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2266
    :goto_3
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v3, :cond_9

    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 2268
    iget-object v8, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->mRenderName:Landroid/widget/CheckedTextView;

    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v7}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->GetName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2269
    iget-object v8, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->mRenderName:Landroid/widget/CheckedTextView;

    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v7}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->GetChecked()Z

    move-result v7

    invoke-virtual {v8, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_9
    move-object v0, p2

    .line 2273
    .end local p2
    .restart local v0       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 2249
    .end local v0           #convertView:Landroid/view/View;
    .restart local p2
    :sswitch_0
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->mRenderIcon:Landroid/widget/ImageView;

    const v8, 0x7f020007

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 2252
    :sswitch_1
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->mRenderIcon:Landroid/widget/ImageView;

    const v8, 0x7f02000a

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 2255
    :sswitch_2
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->mRenderIcon:Landroid/widget/ImageView;

    const v8, 0x7f020008

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 2258
    :sswitch_3
    iget-object v7, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->mRenderIcon:Landroid/widget/ImageView;

    const v8, 0x7f020006

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 2247
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x3e9 -> :sswitch_3
    .end sparse-switch
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "nPos"

    .prologue
    .line 2148
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v1}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->getItemType()I

    move-result v0

    .line 2149
    .local v0, nItemType:I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 2153
    :cond_0
    const/4 v1, 0x0

    .line 2155
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v1

    goto :goto_0
.end method
