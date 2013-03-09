.class public Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;
.super Landroid/widget/BaseAdapter;
.source "SoundSetList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SDMDelAdapter"
.end annotation


# instance fields
.field private MyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sdm/SoundSetParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private mButtonCancelClickListener:Landroid/view/View$OnClickListener;

.field private mButtonDeleteClickListener:Landroid/view/View$OnClickListener;

.field mDelClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private m_deleteSet_dl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sdm/SoundSetParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private m_deleteSet_uc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/sdm/SoundSetParcelable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/sdm/activity/SoundSetList;


# direct methods
.method public constructor <init>(Lcom/htc/sdm/activity/SoundSetList;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1859
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1852
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->context:Landroid/content/Context;

    .line 1854
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->MyList:Ljava/util/ArrayList;

    .line 1855
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_dl:Ljava/util/HashMap;

    .line 1856
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_uc:Ljava/util/HashMap;

    .line 1863
    new-instance v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$1;-><init>(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->mDelClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 1918
    new-instance v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;

    invoke-direct {v0, p0}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$2;-><init>(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->mButtonDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 2266
    new-instance v0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$3;

    invoke-direct {v0, p0}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter$3;-><init>(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->mButtonCancelClickListener:Landroid/view/View$OnClickListener;

    .line 1860
    iput-object p2, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->context:Landroid/content/Context;

    .line 1861
    return-void
.end method

.method static synthetic access$2700(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->mButtonDeleteClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->mButtonCancelClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_dl:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_uc:Ljava/util/HashMap;

    return-object v0
.end method

.method private createItemView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    .line 2325
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2326
    .local v0, li:Landroid/view/LayoutInflater;
    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private setItemStatus(Lcom/htc/widget/HtcListItem2LineText;Lcom/htc/sdm/SoundSetParcelable;)V
    .locals 1
    .parameter "name"
    .parameter "item"

    .prologue
    .line 2331
    if-eqz p1, :cond_0

    .line 2333
    invoke-virtual {p2}, Lcom/htc/sdm/SoundSetParcelable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 2335
    :cond_0
    return-void
.end method


# virtual methods
.method public UpdatetList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/sdm/SoundSetParcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2277
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sdm/SoundSetParcelable;>;"
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->MyList:Ljava/util/ArrayList;

    .line 2278
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->notifyDataSetChanged()V

    .line 2279
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 2283
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->MyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2289
    .local v0, iRet:I
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->MyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->MyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sdm/SoundSetParcelable;

    invoke-virtual {v0}, Lcom/htc/sdm/SoundSetParcelable;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2304
    if-eqz p2, :cond_2

    if-lez p1, :cond_2

    move-object v1, p2

    .line 2305
    .local v1, itemView:Landroid/view/View;
    :goto_0
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->MyList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sdm/SoundSetParcelable;

    .line 2307
    .local v0, item:Lcom/htc/sdm/SoundSetParcelable;
    const v4, 0x7f0b000a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    .line 2308
    .local v2, linetext:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 2310
    const v4, 0x7f0b000b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemCheckBox;

    .line 2311
    .local v3, tb:Lcom/htc/widget/HtcListItemCheckBox;
    if-eqz v3, :cond_1

    .line 2314
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_dl:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->m_deleteSet_uc:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 2318
    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->setItemStatus(Lcom/htc/widget/HtcListItem2LineText;Lcom/htc/sdm/SoundSetParcelable;)V

    .line 2320
    return-object v1

    .line 2304
    .end local v0           #item:Lcom/htc/sdm/SoundSetParcelable;
    .end local v1           #itemView:Landroid/view/View;
    .end local v2           #linetext:Lcom/htc/widget/HtcListItem2LineText;
    .end local v3           #tb:Lcom/htc/widget/HtcListItemCheckBox;
    :cond_2
    invoke-direct {p0, p3}, Lcom/htc/sdm/activity/SoundSetList$SDMDelAdapter;->createItemView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 2314
    .restart local v0       #item:Lcom/htc/sdm/SoundSetParcelable;
    .restart local v1       #itemView:Landroid/view/View;
    .restart local v2       #linetext:Lcom/htc/widget/HtcListItem2LineText;
    .restart local v3       #tb:Lcom/htc/widget/HtcListItemCheckBox;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method
