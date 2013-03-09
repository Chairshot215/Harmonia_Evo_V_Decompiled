.class public Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;
.super Landroid/widget/BaseAdapter;
.source "TimeZoneAdapter.java"


# instance fields
.field private final KEY_CITY:Ljava/lang/String;

.field private final KEY_NAME:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFilterIndexArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private showAll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->showAll:Z

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mIndexArray:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mFilterIndexArray:Ljava/util/ArrayList;

    .line 36
    const-string v0, "name"

    iput-object v0, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->KEY_NAME:Ljava/lang/String;

    .line 37
    const-string v0, "second_city"

    iput-object v0, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->KEY_CITY:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mContext:Landroid/content/Context;

    .line 42
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    iput-object p2, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mDataList:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->showAll:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mIndexArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getCurrentFirstLetter(I)C
    .locals 4
    .parameter "firstVisibleItem"

    .prologue
    .line 107
    iget-boolean v3, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->showAll:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mIndexArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 108
    iget-object v3, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mIndexArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 111
    .local v0, index:I
    :goto_0
    iget-object v3, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 112
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 113
    const/16 v3, 0x20

    .line 117
    :goto_1
    return v3

    .line 109
    .end local v0           #index:I
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move v0, p1

    .restart local v0       #index:I
    goto :goto_0

    .line 115
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v3, "name"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    .local v2, name:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->showAll:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mIndexArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mDataList:Ljava/util/List;

    iget-object v0, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mIndexArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->showAll:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mIndexArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mIndexArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 92
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, -0x1

    .line 55
    if-nez p2, :cond_2

    .line 56
    iget-object v4, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x2090007

    const/4 v7, 0x0

    invoke-virtual {v4, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 65
    .local v2, v:Landroid/view/View;
    :goto_0
    const v4, 0x2020010

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 67
    .local v3, vCity:Landroid/widget/TextView;
    iget-boolean v4, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->showAll:Z

    if-eqz v4, :cond_3

    move v0, p1

    .line 69
    .local v0, index:I
    :goto_1
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->hasSeparateLine2()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    if-nez v0, :cond_5

    .line 71
    new-instance v4, Lcom/htc/clock3dwidget/setting/HtcCitySeparable;

    invoke-direct {v4}, Lcom/htc/clock3dwidget/setting/HtcCitySeparable;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    :cond_0
    :goto_2
    if-eq v0, v5, :cond_1

    .line 78
    iget-object v4, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 80
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 81
    const-string v4, "name"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-object v2

    .line 58
    .end local v0           #index:I
    .end local v2           #v:Landroid/view/View;
    .end local v3           #vCity:Landroid/widget/TextView;
    :cond_2
    move-object v2, p2

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0

    .line 67
    .restart local v3       #vCity:Landroid/widget/TextView;
    :cond_3
    iget-object v4, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mIndexArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mIndexArray:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v5

    goto :goto_1

    .line 74
    .restart local v0       #index:I
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mDataList:Ljava/util/List;

    .line 49
    invoke-virtual {p0}, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->notifyDataSetChanged()V

    .line 50
    return-void
.end method

.method public updateList(Ljava/lang/String;)I
    .locals 12
    .parameter "prefix"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 123
    .local v4, len:I
    if-nez v4, :cond_1

    .line 124
    iput-boolean v10, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->showAll:Z

    .line 125
    iget-object v7, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mIndexArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 126
    iget-object v7, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mFilterIndexArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 162
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mIndexArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    return v7

    .line 127
    :cond_1
    if-ne v4, v10, :cond_7

    .line 128
    iget-boolean v7, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->showAll:Z

    if-eqz v7, :cond_6

    .line 129
    iput-boolean v11, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->showAll:Z

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 132
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 133
    iget-object v7, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 134
    .local v5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_3

    .line 132
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 136
    :cond_3
    const-string v7, "name"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 137
    .local v6, name:Ljava/lang/String;
    const-string v7, "second_city"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string v7, "second_city"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, city:Ljava/lang/String;
    :goto_3
    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 140
    :cond_4
    iget-object v7, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mFilterIndexArray:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0           #city:Ljava/lang/String;
    :cond_5
    move-object v0, v8

    .line 137
    goto :goto_3

    .line 143
    .end local v2           #i:I
    .end local v5           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #name:Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mFilterIndexArray:Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mIndexArray:Ljava/util/ArrayList;

    goto :goto_0

    .line 146
    :cond_7
    iget-object v7, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mIndexArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, firstCh:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 150
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget-object v7, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mFilterIndexArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 151
    iget-object v7, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mFilterIndexArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 152
    .local v3, index:I
    iget-object v7, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 153
    .restart local v5       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_9

    .line 150
    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 155
    :cond_9
    const-string v7, "name"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 156
    .restart local v6       #name:Ljava/lang/String;
    const-string v7, "second_city"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_b

    const-string v7, "second_city"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v0, v7

    .line 157
    .restart local v0       #city:Ljava/lang/String;
    :goto_6
    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 158
    :cond_a
    iget-object v7, p0, Lcom/htc/clock3dwidget/setting/TimeZoneAdapter;->mIndexArray:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .end local v0           #city:Ljava/lang/String;
    :cond_b
    move-object v0, v8

    .line 156
    goto :goto_6
.end method
