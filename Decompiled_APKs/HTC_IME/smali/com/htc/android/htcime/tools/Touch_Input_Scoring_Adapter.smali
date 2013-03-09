.class public Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;
.super Landroid/widget/BaseAdapter;
.source "Touch_Input_Scoring_Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;",
            ">;"
        }
    .end annotation
.end field


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
            "Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;->mList:Ljava/util/ArrayList;

    .line 17
    iput-object v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;->mList:Ljava/util/ArrayList;

    .line 21
    iput-object p1, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 27
    if-nez p2, :cond_0

    .line 28
    iget-object v3, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 29
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03004e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    move-object v2, p2

    .line 32
    check-cast v2, Landroid/widget/TextView;

    .line 33
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;

    .line 34
    .local v0, data:Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 35
    iget-object v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_1
    return-object p2
.end method
