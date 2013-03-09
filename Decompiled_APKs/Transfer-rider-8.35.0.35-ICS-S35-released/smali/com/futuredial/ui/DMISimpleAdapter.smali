.class Lcom/futuredial/ui/DMISimpleAdapter;
.super Landroid/widget/BaseAdapter;
.source "ViewSelectDataType.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/ui/DMISimpleAdapter$SimpleFilter;,
        Lcom/futuredial/ui/DMISimpleAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private VIEW_TYPE_COUNT:I

.field private VIEW_TYPE_IMPORT:I

.field private VIEW_TYPE_SPINNER:I

.field private VIEW_TYPE_TITLE:I

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mDropDownResource:I

.field private mFilter:Lcom/futuredial/ui/DMISimpleAdapter$SimpleFilter;

.field private mFrom:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPosition:I

.field private mResource:I

.field private mSelectionCal:I

.field private mSelectionPB:I

.field private mSelectionTask:I

.field private mTo:[I

.field private mUnfilteredData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mViewBinder:Lcom/futuredial/ui/DMISimpleAdapter$ViewBinder;

.field private m_context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "resource"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .local p2, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v0, 0x0

    .line 643
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 617
    iput v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mSelectionPB:I

    .line 618
    iput v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mSelectionCal:I

    .line 619
    iput v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mSelectionTask:I

    .line 620
    iput v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mPosition:I

    .line 622
    iput v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->VIEW_TYPE_IMPORT:I

    .line 623
    const/4 v0, 0x1

    iput v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->VIEW_TYPE_SPINNER:I

    .line 624
    const/4 v0, 0x2

    iput v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->VIEW_TYPE_TITLE:I

    .line 625
    const/4 v0, 0x3

    iput v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->VIEW_TYPE_COUNT:I

    .line 644
    iput-object p2, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mData:Ljava/util/List;

    .line 645
    iput p3, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mDropDownResource:I

    iput p3, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mResource:I

    .line 646
    iput-object p4, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mFrom:[Ljava/lang/String;

    .line 647
    iput-object p5, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mTo:[I

    .line 648
    iput-object p1, p0, Lcom/futuredial/ui/DMISimpleAdapter;->m_context:Landroid/content/Context;

    .line 649
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 650
    return-void
.end method

.method static synthetic access$002(Lcom/futuredial/ui/DMISimpleAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 603
    iput p1, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mSelectionPB:I

    return p1
.end method

.method static synthetic access$102(Lcom/futuredial/ui/DMISimpleAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 603
    iput p1, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mSelectionTask:I

    return p1
.end method

.method static synthetic access$202(Lcom/futuredial/ui/DMISimpleAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 603
    iput p1, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mSelectionCal:I

    return p1
.end method

.method static synthetic access$400(Lcom/futuredial/ui/DMISimpleAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/futuredial/ui/DMISimpleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 603
    iput-object p1, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/futuredial/ui/DMISimpleAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/futuredial/ui/DMISimpleAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 603
    iput-object p1, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/futuredial/ui/DMISimpleAdapter;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mTo:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/futuredial/ui/DMISimpleAdapter;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mFrom:[Ljava/lang/String;

    return-object v0
.end method

.method private bindView(ILandroid/view/View;)V
    .locals 13
    .parameter "position"
    .parameter "view"

    .prologue
    .line 906
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/ui/DMISimpleAdapter;->set_view(ILandroid/view/View;)V

    .line 907
    iget-object v10, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 908
    .local v4, dataSet:Ljava/util/Map;
    if-nez v4, :cond_1

    .line 965
    :cond_0
    return-void

    .line 912
    :cond_1
    iget-object v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mViewBinder:Lcom/futuredial/ui/DMISimpleAdapter$ViewBinder;

    .line 913
    .local v0, binder:Lcom/futuredial/ui/DMISimpleAdapter$ViewBinder;
    iget-object v5, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mFrom:[Ljava/lang/String;

    .line 914
    .local v5, from:[Ljava/lang/String;
    iget-object v8, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mTo:[I

    .line 915
    .local v8, to:[I
    array-length v2, v8

    .line 917
    .local v2, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 918
    aget v10, v8, v6

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 919
    .local v9, v:Landroid/view/View;
    if-eqz v9, :cond_5

    .line 920
    aget-object v10, v5, v6

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 921
    .local v3, data:Ljava/lang/Object;
    if-nez v3, :cond_6

    const-string v7, ""

    .line 922
    .local v7, text:Ljava/lang/String;
    :goto_1
    if-nez v7, :cond_2

    .line 923
    const-string v7, ""

    .line 926
    :cond_2
    const/4 v1, 0x0

    .line 927
    .local v1, bound:Z
    if-eqz v0, :cond_3

    .line 928
    invoke-interface {v0, v9, v3, v7}, Lcom/futuredial/ui/DMISimpleAdapter$ViewBinder;->setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    .line 931
    :cond_3
    if-nez v1, :cond_5

    .line 932
    instance-of v10, v9, Landroid/widget/Checkable;

    if-eqz v10, :cond_a

    .line 933
    if-nez v3, :cond_4

    .line 934
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 936
    :cond_4
    instance-of v10, v3, Ljava/lang/Boolean;

    if-eqz v10, :cond_7

    .line 937
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 938
    check-cast v9, Landroid/widget/Checkable;

    .end local v9           #v:Landroid/view/View;
    check-cast v3, Ljava/lang/Boolean;

    .end local v3           #data:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 917
    .end local v1           #bound:Z
    .end local v7           #text:Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 921
    .restart local v3       #data:Ljava/lang/Object;
    .restart local v9       #v:Landroid/view/View;
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 939
    .restart local v1       #bound:Z
    .restart local v7       #text:Ljava/lang/String;
    :cond_7
    instance-of v10, v9, Landroid/widget/TextView;

    if-eqz v10, :cond_8

    .line 942
    check-cast v9, Landroid/widget/TextView;

    .end local v9           #v:Landroid/view/View;
    invoke-virtual {p0, v9, v7}, Lcom/futuredial/ui/DMISimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2

    .line 944
    .restart local v9       #v:Landroid/view/View;
    :cond_8
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " should be bound to a Boolean, not a "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v3, :cond_9

    const-string v10, "<unknown type>"

    :goto_3
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    goto :goto_3

    .line 948
    :cond_a
    instance-of v10, v9, Landroid/widget/TextView;

    if-eqz v10, :cond_b

    .line 951
    check-cast v9, Landroid/widget/TextView;

    .end local v9           #v:Landroid/view/View;
    invoke-virtual {p0, v9, v7}, Lcom/futuredial/ui/DMISimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2

    .line 952
    .restart local v9       #v:Landroid/view/View;
    :cond_b
    instance-of v10, v9, Landroid/widget/ImageView;

    if-eqz v10, :cond_d

    .line 953
    instance-of v10, v3, Ljava/lang/Integer;

    if-eqz v10, :cond_c

    .line 954
    check-cast v9, Landroid/widget/ImageView;

    .end local v9           #v:Landroid/view/View;
    check-cast v3, Ljava/lang/Integer;

    .end local v3           #data:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/futuredial/ui/DMISimpleAdapter;->setViewImage(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 956
    .restart local v3       #data:Ljava/lang/Object;
    .restart local v9       #v:Landroid/view/View;
    :cond_c
    check-cast v9, Landroid/widget/ImageView;

    .end local v9           #v:Landroid/view/View;
    invoke-virtual {p0, v9, v7}, Lcom/futuredial/ui/DMISimpleAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2

    .line 959
    .restart local v9       #v:Landroid/view/View;
    :cond_d
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " view that can be bounds by this SimpleAdapter"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "resource"

    .prologue
    const/4 v4, 0x0

    .line 856
    invoke-virtual {p0, p1}, Lcom/futuredial/ui/DMISimpleAdapter;->getItemViewType(I)I

    move-result v0

    .line 857
    .local v0, type:I
    if-nez p2, :cond_1

    .line 858
    iget v2, p0, Lcom/futuredial/ui/DMISimpleAdapter;->VIEW_TYPE_IMPORT:I

    if-ne v0, v2, :cond_0

    .line 859
    iget-object v2, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x2090026

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 867
    .local v1, v:Landroid/view/View;
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/futuredial/ui/DMISimpleAdapter;->bindView(ILandroid/view/View;)V

    .line 869
    return-object v1

    .line 861
    .end local v1           #v:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, p4, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .line 864
    .end local v1           #v:Landroid/view/View;
    :cond_1
    move-object v1, p2

    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 885
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 902
    iget v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mDropDownResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/futuredial/ui/DMISimpleAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mFilter:Lcom/futuredial/ui/DMISimpleAdapter$SimpleFilter;

    if-nez v0, :cond_0

    .line 1050
    new-instance v0, Lcom/futuredial/ui/DMISimpleAdapter$SimpleFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/futuredial/ui/DMISimpleAdapter$SimpleFilter;-><init>(Lcom/futuredial/ui/DMISimpleAdapter;Lcom/futuredial/ui/DMISimpleAdapter$1;)V

    iput-object v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mFilter:Lcom/futuredial/ui/DMISimpleAdapter$SimpleFilter;

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mFilter:Lcom/futuredial/ui/DMISimpleAdapter$SimpleFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 686
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "import_to"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    iget v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->VIEW_TYPE_IMPORT:I

    .line 674
    :goto_0
    return v0

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "spinner"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    iget v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->VIEW_TYPE_SPINNER:I

    goto :goto_0

    .line 674
    :cond_1
    iget v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->VIEW_TYPE_TITLE:I

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 850
    iget v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/futuredial/ui/DMISimpleAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinder()Lcom/futuredial/ui/DMISimpleAdapter$ViewBinder;
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mViewBinder:Lcom/futuredial/ui/DMISimpleAdapter$ViewBinder;

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lcom/futuredial/ui/DMISimpleAdapter;->VIEW_TYPE_COUNT:I

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 891
    const/4 v0, 0x0

    .line 892
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "title"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "spinner"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 893
    :cond_0
    const/4 v0, 0x1

    .line 896
    :goto_0
    return v0

    .line 895
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reset_view(ILandroid/view/View;)V
    .locals 4
    .parameter "position"
    .parameter "v"

    .prologue
    const/16 v3, 0x8

    .line 690
    const v2, 0x7f090025

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 691
    .local v0, layout_module:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 694
    :cond_0
    const v2, 0x7f090027

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 695
    .local v1, module:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1

    .line 696
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 698
    :cond_1
    return-void
.end method

.method public setDropDownViewResource(I)V
    .locals 0
    .parameter "resource"

    .prologue
    .line 879
    iput p1, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mDropDownResource:I

    .line 880
    return-void
.end method

.method public setViewBinder(Lcom/futuredial/ui/DMISimpleAdapter$ViewBinder;)V
    .locals 0
    .parameter "viewBinder"

    .prologue
    .line 987
    iput-object p1, p0, Lcom/futuredial/ui/DMISimpleAdapter;->mViewBinder:Lcom/futuredial/ui/DMISimpleAdapter$ViewBinder;

    .line 988
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;I)V
    .locals 0
    .parameter "v"
    .parameter "value"

    .prologue
    .line 1004
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1005
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .parameter "v"
    .parameter "value"

    .prologue
    .line 1026
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    :goto_0
    return-void

    .line 1027
    :catch_0
    move-exception v0

    .line 1028
    .local v0, nfe:Ljava/lang/NumberFormatException;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .parameter "v"
    .parameter "text"

    .prologue
    .line 1041
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1042
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1043
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    :goto_0
    return-void

    .line 1045
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method set_view(ILandroid/view/View;)V
    .locals 19
    .parameter "position"
    .parameter "v"

    .prologue
    .line 701
    const/4 v15, 0x0

    .line 702
    .local v15, top_round:Z
    const/4 v5, 0x0

    .line 703
    .local v5, bottom_round:Z
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/futuredial/ui/DMISimpleAdapter;->mPosition:I

    .line 704
    invoke-virtual/range {p0 .. p2}, Lcom/futuredial/ui/DMISimpleAdapter;->reset_view(ILandroid/view/View;)V

    .line 705
    invoke-virtual/range {p0 .. p1}, Lcom/futuredial/ui/DMISimpleAdapter;->getItemViewType(I)I

    move-result v16

    .line 706
    .local v16, type:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->VIEW_TYPE_IMPORT:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 707
    const v17, 0x2020010

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 708
    .local v6, import_to:Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 709
    invoke-virtual {v6}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 710
    .local v7, layout_import_to:Landroid/widget/RelativeLayout;
    const v17, 0x2080669

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 712
    .end local v7           #layout_import_to:Landroid/widget/RelativeLayout;
    :cond_0
    const/4 v15, 0x1

    .line 713
    const/4 v5, 0x0

    .line 716
    .end local v6           #import_to:Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->VIEW_TYPE_SPINNER:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 717
    const v17, 0x7f090025

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 718
    .local v8, layout_module:Landroid/widget/LinearLayout;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 720
    const/4 v15, 0x0

    .line 721
    const/4 v5, 0x1

    .line 723
    const v17, 0x7f090026

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcSpinner;

    .line 724
    .local v14, spinner:Lcom/htc/widget/HtcSpinner;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->mData:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->mPosition:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    const-string v18, "id"

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 725
    .local v11, module_id:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcSpinner;->setTag(Ljava/lang/Object;)V

    .line 727
    const/4 v4, 0x0

    .line 728
    .local v4, adapter:Lcom/futuredial/ui/AccountAdapter;
    const/16 v17, 0x6

    move/from16 v0, v17

    if-ne v11, v0, :cond_9

    .line 729
    new-instance v4, Lcom/futuredial/ui/AccountAdapter;

    .end local v4           #adapter:Lcom/futuredial/ui/AccountAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->m_context:Landroid/content/Context;

    move-object/from16 v17, v0

    sget-object v18, Lcom/futuredial/ui/ViewSelectDataType;->mAccountsTask:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/futuredial/ui/AccountAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 734
    .restart local v4       #adapter:Lcom/futuredial/ui/AccountAdapter;
    :goto_0
    invoke-virtual {v14, v4}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 736
    sget-object v17, Lcom/futuredial/ui/ViewSelectDataType;->m_phone:Lcom/futuredial/service/DMIPhone;

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/service/DMIPhone;->get_modulebyID(Ljava/lang/Integer;)Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    move-result-object v12

    .line 737
    .local v12, module_phonebook:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    if-eqz v12, :cond_2

    .line 738
    sget-object v17, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_2

    .line 739
    sget-object v17, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->mSelectionPB:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/futuredial/ui/AccountData;

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/ui/AccountData;->getName()Ljava/lang/String;

    move-result-object v2

    .line 740
    .local v2, account_name:Ljava/lang/String;
    sget-object v17, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->mSelectionPB:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/futuredial/ui/AccountData;

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/ui/AccountData;->getType()Ljava/lang/String;

    move-result-object v3

    .line 741
    .local v3, account_type:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_2

    .line 742
    iput-object v2, v12, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->strAccountName:Ljava/lang/String;

    .line 743
    iput-object v3, v12, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->strAccountType:Ljava/lang/String;

    .line 747
    .end local v2           #account_name:Ljava/lang/String;
    .end local v3           #account_type:Ljava/lang/String;
    :cond_2
    sget-object v17, Lcom/futuredial/ui/ViewSelectDataType;->m_phone:Lcom/futuredial/service/DMIPhone;

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/service/DMIPhone;->get_modulebyID(Ljava/lang/Integer;)Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    move-result-object v10

    .line 748
    .local v10, module_calendar:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    if-eqz v10, :cond_3

    .line 749
    sget-object v17, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_3

    .line 750
    sget-object v17, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->mSelectionCal:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/futuredial/ui/AccountData;

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/ui/AccountData;->getName()Ljava/lang/String;

    move-result-object v2

    .line 751
    .restart local v2       #account_name:Ljava/lang/String;
    sget-object v17, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->mSelectionCal:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/futuredial/ui/AccountData;

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/ui/AccountData;->getType()Ljava/lang/String;

    move-result-object v3

    .line 752
    .restart local v3       #account_type:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_3

    .line 753
    iput-object v2, v10, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->strAccountName:Ljava/lang/String;

    .line 754
    iput-object v3, v10, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->strAccountType:Ljava/lang/String;

    .line 758
    .end local v2           #account_name:Ljava/lang/String;
    .end local v3           #account_type:Ljava/lang/String;
    :cond_3
    sget-object v17, Lcom/futuredial/ui/ViewSelectDataType;->m_phone:Lcom/futuredial/service/DMIPhone;

    const/16 v18, 0x6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/futuredial/service/DMIPhone;->get_modulebyID(Ljava/lang/Integer;)Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    move-result-object v13

    .line 759
    .local v13, module_task:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    if-eqz v13, :cond_4

    .line 760
    sget-object v17, Lcom/futuredial/ui/ViewSelectDataType;->mAccountsTask:Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_4

    .line 761
    sget-object v17, Lcom/futuredial/ui/ViewSelectDataType;->mAccountsTask:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->mSelectionTask:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/futuredial/ui/AccountData;

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/ui/AccountData;->getName()Ljava/lang/String;

    move-result-object v2

    .line 762
    .restart local v2       #account_name:Ljava/lang/String;
    sget-object v17, Lcom/futuredial/ui/ViewSelectDataType;->mAccountsTask:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->mSelectionTask:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/futuredial/ui/AccountData;

    invoke-virtual/range {v17 .. v17}, Lcom/futuredial/ui/AccountData;->getType()Ljava/lang/String;

    move-result-object v3

    .line 763
    .restart local v3       #account_type:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_4

    .line 764
    iput-object v2, v13, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->strAccountName:Ljava/lang/String;

    .line 765
    iput-object v3, v13, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->strAccountType:Ljava/lang/String;

    .line 769
    .end local v2           #account_name:Ljava/lang/String;
    .end local v3           #account_type:Ljava/lang/String;
    :cond_4
    if-nez v11, :cond_a

    .line 770
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->mSelectionPB:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/htc/widget/HtcSpinner;->setSelection(IZ)V

    .line 777
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->m_context:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f060217

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcSpinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 779
    new-instance v17, Lcom/futuredial/ui/DMISimpleAdapter$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/futuredial/ui/DMISimpleAdapter$1;-><init>(Lcom/futuredial/ui/DMISimpleAdapter;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 819
    new-instance v17, Lcom/htc/widget/HtcListItemSeparableType;

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v5}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 821
    .end local v4           #adapter:Lcom/futuredial/ui/AccountAdapter;
    .end local v8           #layout_module:Landroid/widget/LinearLayout;
    .end local v10           #module_calendar:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    .end local v11           #module_id:I
    .end local v12           #module_phonebook:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    .end local v13           #module_task:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    .end local v14           #spinner:Lcom/htc/widget/HtcSpinner;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->VIEW_TYPE_TITLE:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 822
    const v17, 0x7f090027

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 823
    .local v9, module:Landroid/widget/LinearLayout;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 825
    if-nez p1, :cond_c

    .line 826
    const/4 v15, 0x1

    .line 833
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->mData:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 834
    const/4 v5, 0x1

    .line 842
    :cond_7
    :goto_3
    new-instance v17, Lcom/htc/widget/HtcListItemSeparableType;

    move-object/from16 v0, v17

    invoke-direct {v0, v15, v5}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 844
    .end local v9           #module:Landroid/widget/LinearLayout;
    :cond_8
    return-void

    .line 731
    .restart local v4       #adapter:Lcom/futuredial/ui/AccountAdapter;
    .restart local v8       #layout_module:Landroid/widget/LinearLayout;
    .restart local v11       #module_id:I
    .restart local v14       #spinner:Lcom/htc/widget/HtcSpinner;
    :cond_9
    new-instance v4, Lcom/futuredial/ui/AccountAdapter;

    .end local v4           #adapter:Lcom/futuredial/ui/AccountAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->m_context:Landroid/content/Context;

    move-object/from16 v17, v0

    sget-object v18, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/futuredial/ui/AccountAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .restart local v4       #adapter:Lcom/futuredial/ui/AccountAdapter;
    goto/16 :goto_0

    .line 771
    .restart local v10       #module_calendar:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    .restart local v12       #module_phonebook:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    .restart local v13       #module_task:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    :cond_a
    const/16 v17, 0x6

    move/from16 v0, v17

    if-ne v11, v0, :cond_b

    .line 772
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->mSelectionTask:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/htc/widget/HtcSpinner;->setSelection(IZ)V

    goto/16 :goto_1

    .line 774
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->mSelectionCal:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/htc/widget/HtcSpinner;->setSelection(IZ)V

    goto/16 :goto_1

    .line 827
    .end local v4           #adapter:Lcom/futuredial/ui/AccountAdapter;
    .end local v8           #layout_module:Landroid/widget/LinearLayout;
    .end local v10           #module_calendar:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    .end local v11           #module_id:I
    .end local v12           #module_phonebook:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    .end local v13           #module_task:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    .end local v14           #spinner:Lcom/htc/widget/HtcSpinner;
    .restart local v9       #module:Landroid/widget/LinearLayout;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->mData:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-gt v0, v1, :cond_6

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->mData:Ljava/util/List;

    move-object/from16 v17, v0

    add-int/lit8 v18, p1, -0x1

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    const-string v18, "title"

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 829
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 835
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->mData:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->mData:Ljava/util/List;

    move-object/from16 v17, v0

    add-int/lit8 v18, p1, 0x1

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    const-string v18, "title"

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    .line 837
    const/4 v5, 0x1

    .line 839
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/ui/DMISimpleAdapter;->mData:Ljava/util/List;

    move-object/from16 v17, v0

    add-int/lit8 v18, p1, 0x1

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    const-string v18, "spinner"

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 840
    const/4 v5, 0x0

    goto/16 :goto_3
.end method
