.class public Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;
.super Landroid/widget/BaseAdapter;
.source "SoundSetList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SDMLstAdapter"
.end annotation


# instance fields
.field private DEFAULT_SOUND_POS:I

.field ItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

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

.field private b_isCurSelDefault:Z

.field private b_isListItemClick:Z

.field private context:Landroid/content/Context;

.field mButtonApplyClickListener:Landroid/view/View$OnClickListener;

.field private mHtcListItemDrawAndSeparate:Lcom/htc/widget/HtcListItemSeparable;

.field private mInflater:Landroid/view/LayoutInflater;

.field private m_nCurSel:I

.field final synthetic this$0:Lcom/htc/sdm/activity/SoundSetList;


# direct methods
.method public constructor <init>(Lcom/htc/sdm/activity/SoundSetList;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1356
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1346
    iput-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->context:Landroid/content/Context;

    .line 1347
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I
    invoke-static {v0}, Lcom/htc/sdm/activity/SoundSetList;->access$800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v0

    iput v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->m_nCurSel:I

    .line 1348
    iput-boolean v2, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->b_isCurSelDefault:Z

    .line 1349
    iput-boolean v2, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->b_isListItemClick:Z

    .line 1350
    iput-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->MyList:Ljava/util/ArrayList;

    .line 1354
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->DEFAULT_SOUND_POS:I

    .line 1370
    new-instance v0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$1;-><init>(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->ItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 1467
    new-instance v0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;

    invoke-direct {v0, p0}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$2;-><init>(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->mButtonApplyClickListener:Landroid/view/View$OnClickListener;

    .line 1836
    new-instance v0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$3;

    invoke-direct {v0, p0}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter$3;-><init>(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)V

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->mHtcListItemDrawAndSeparate:Lcom/htc/widget/HtcListItemSeparable;

    .line 1357
    iput-object p2, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->context:Landroid/content/Context;

    .line 1358
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/htc/sdm/activity/SoundSetList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1359
    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {p1}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {p1}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {p1}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {p1}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {p1}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {p1}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1366
    :cond_0
    iput v2, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->DEFAULT_SOUND_POS:I

    .line 1368
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1344
    iget-boolean v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->b_isListItemClick:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1344
    iget v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->DEFAULT_SOUND_POS:I

    return v0
.end method

.method static synthetic access$102(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1344
    iput-boolean p1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->b_isListItemClick:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1344
    iget v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->m_nCurSel:I

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1344
    iput p1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->m_nCurSel:I

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1344
    iget-boolean v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->b_isCurSelDefault:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1344
    iput-boolean p1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->b_isCurSelDefault:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->MyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public UpdatetList(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 1565
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sdm/SoundSetParcelable;>;"
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->MyList:Ljava/util/ArrayList;

    .line 1566
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1568
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v5}, Lcom/htc/sdm/activity/SoundSetList;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/sdm/util/SDMUtil;->getCurSoundsetGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/htc/sdm/activity/SoundSetList;->mStrCurSelGUID:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/sdm/activity/SoundSetList;->access$2102(Lcom/htc/sdm/activity/SoundSetList;Ljava/lang/String;)Ljava/lang/String;

    .line 1570
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->mStrCurSelGUID:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$2100(Lcom/htc/sdm/activity/SoundSetList;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/htc/sdm/activity/SoundSetList;->mStrPreSelGUID:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/sdm/activity/SoundSetList;->access$2202(Lcom/htc/sdm/activity/SoundSetList;Ljava/lang/String;)Ljava/lang/String;

    .line 1572
    const/4 v0, 0x0

    .line 1573
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->MyList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 1575
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->MyList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sdm/SoundSetParcelable;

    .line 1576
    .local v2, ssp:Lcom/htc/sdm/SoundSetParcelable;
    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getGUID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->mStrCurSelGUID:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$2100(Lcom/htc/sdm/activity/SoundSetList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1578
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList;->access$800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v4

    add-int/2addr v4, v0

    iput v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->m_nCurSel:I

    .line 1573
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1584
    .end local v0           #i:I
    .end local v2           #ssp:Lcom/htc/sdm/SoundSetParcelable;
    :cond_1
    iget-boolean v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->b_isListItemClick:Z

    if-nez v4, :cond_5

    .line 1586
    const/4 v3, 0x0

    .line 1587
    .local v3, uriString:Ljava/lang/String;
    iget v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->DEFAULT_SOUND_POS:I

    if-ltz v4, :cond_3

    .line 1589
    iget v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->DEFAULT_SOUND_POS:I

    iput v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->m_nCurSel:I

    .line 1596
    :goto_1
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_defStrUri:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList;->access$2300(Lcom/htc/sdm/activity/SoundSetList;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_defStrUri:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList;->access$2300(Lcom/htc/sdm/activity/SoundSetList;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "content://settings/system/ringtone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1598
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_defStrUri:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList;->access$2300(Lcom/htc/sdm/activity/SoundSetList;)Ljava/lang/String;

    move-result-object v3

    .line 1604
    :goto_2
    if-eqz v3, :cond_5

    .line 1606
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->MyList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, size:I
    :goto_3
    if-ge v0, v1, :cond_5

    .line 1608
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->MyList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sdm/SoundSetParcelable;

    .line 1609
    .restart local v2       #ssp:Lcom/htc/sdm/SoundSetParcelable;
    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getLocalFileUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1611
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList;->access$800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v4

    add-int/2addr v4, v0

    iput v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->m_nCurSel:I

    .line 1606
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1593
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #ssp:Lcom/htc/sdm/SoundSetParcelable;
    :cond_3
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList;->access$800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v4

    iput v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->m_nCurSel:I

    goto :goto_1

    .line 1602
    :cond_4
    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    iget-object v5, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nCurrentListType:I
    invoke-static {v5}, Lcom/htc/sdm/activity/SoundSetList;->access$900(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/htc/sdm/util/SDMDBUtil;->QueryCurSound(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1617
    .end local v3           #uriString:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->notifyDataSetChanged()V

    .line 1618
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 1630
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->MyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1631
    .local v0, iRet:I
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I
    invoke-static {v1}, Lcom/htc/sdm/activity/SoundSetList;->access$800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1637
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 1642
    const/4 v0, 0x0

    .line 1644
    .local v0, obj:Ljava/lang/Object;
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I
    invoke-static {v1}, Lcom/htc/sdm/activity/SoundSetList;->access$800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->MyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v2

    add-int/2addr v1, v2

    if-le p1, v1, :cond_1

    .line 1646
    :cond_0
    const/4 v0, 0x0

    .line 1653
    .end local v0           #obj:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 1650
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->MyList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .parameter "position"

    .prologue
    .line 1658
    const-wide/16 v0, 0x0

    .line 1659
    .local v0, rtn:J
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I
    invoke-static {v2}, Lcom/htc/sdm/activity/SoundSetList;->access$800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v2

    if-lt p1, v2, :cond_0

    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->MyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I
    invoke-static {v3}, Lcom/htc/sdm/activity/SoundSetList;->access$800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v3

    add-int/2addr v2, v3

    if-le p1, v2, :cond_1

    .line 1661
    :cond_0
    const-wide/16 v0, 0x0

    .line 1668
    :goto_0
    return-wide v0

    .line 1665
    :cond_1
    iget-object v2, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->MyList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I
    invoke-static {v3}, Lcom/htc/sdm/activity/SoundSetList;->access$800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sdm/SoundSetParcelable;

    invoke-virtual {v2}, Lcom/htc/sdm/SoundSetParcelable;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1833
    invoke-static {}, Lcom/htc/sdm/activity/SoundSetList;->access$2400()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1779
    const/4 v0, 0x0

    .line 1780
    .local v0, holder:Lcom/htc/sdm/activity/SoundSetList$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->getItemViewType(I)I

    move-result v2

    .line 1782
    .local v2, type:I
    if-nez p2, :cond_0

    .line 1784
    new-instance v0, Lcom/htc/sdm/activity/SoundSetList$ViewHolder;

    .end local v0           #holder:Lcom/htc/sdm/activity/SoundSetList$ViewHolder;
    invoke-direct {v0}, Lcom/htc/sdm/activity/SoundSetList$ViewHolder;-><init>()V

    .line 1785
    .restart local v0       #holder:Lcom/htc/sdm/activity/SoundSetList$ViewHolder;
    invoke-static {}, Lcom/htc/sdm/activity/SoundSetList;->access$2400()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1787
    invoke-virtual {p0, v0, p3}, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->handleGetData(Lcom/htc/sdm/activity/SoundSetList$ViewHolder;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1788
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1792
    :cond_0
    invoke-static {}, Lcom/htc/sdm/activity/SoundSetList;->access$2400()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 1795
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/htc/sdm/activity/SoundSetList$ViewHolder;
    check-cast v0, Lcom/htc/sdm/activity/SoundSetList$ViewHolder;

    .line 1797
    .restart local v0       #holder:Lcom/htc/sdm/activity/SoundSetList$ViewHolder;
    iget-object v3, v0, Lcom/htc/sdm/activity/SoundSetList$ViewHolder;->radioBtn:Lcom/htc/widget/HtcListItemRadioButton;

    if-eqz v3, :cond_1

    .line 1799
    iget-object v4, v0, Lcom/htc/sdm/activity/SoundSetList$ViewHolder;->radioBtn:Lcom/htc/widget/HtcListItemRadioButton;

    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->m_nCurSel:I

    if-ne v3, p1, :cond_3

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcListItemRadioButton;->setChecked(Z)V

    .line 1802
    :cond_1
    iget-object v3, v0, Lcom/htc/sdm/activity/SoundSetList$ViewHolder;->lineText:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v3, :cond_2

    .line 1804
    iget v3, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->DEFAULT_SOUND_POS:I

    if-ne v3, p1, :cond_4

    .line 1806
    iget-object v3, v0, Lcom/htc/sdm/activity/SoundSetList$ViewHolder;->lineText:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v3, :cond_2

    .line 1808
    iget-object v3, v0, Lcom/htc/sdm/activity/SoundSetList$ViewHolder;->lineText:Lcom/htc/widget/HtcListItem2LineText;

    const v4, 0x7f09001a

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 1821
    :cond_2
    :goto_1
    return-object p2

    .line 1799
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 1813
    :cond_4
    iget-object v3, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->MyList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    #getter for: Lcom/htc/sdm/activity/SoundSetList;->m_nActualItemStartPos:I
    invoke-static {v4}, Lcom/htc/sdm/activity/SoundSetList;->access$800(Lcom/htc/sdm/activity/SoundSetList;)I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sdm/SoundSetParcelable;

    .line 1814
    .local v1, item:Lcom/htc/sdm/SoundSetParcelable;
    if-eqz v1, :cond_2

    .line 1816
    iget-object v3, v0, Lcom/htc/sdm/activity/SoundSetList$ViewHolder;->lineText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1}, Lcom/htc/sdm/SoundSetParcelable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1827
    const/4 v0, 0x1

    return v0
.end method

.method public handleGetData(Lcom/htc/sdm/activity/SoundSetList$ViewHolder;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "holder"
    .parameter "parent"

    .prologue
    .line 1767
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$SDMLstAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1769
    .local v0, itemView:Landroid/view/View;
    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v1, p1, Lcom/htc/sdm/activity/SoundSetList$ViewHolder;->lineText:Lcom/htc/widget/HtcListItem2LineText;

    .line 1770
    iget-object v1, p1, Lcom/htc/sdm/activity/SoundSetList$ViewHolder;->lineText:Lcom/htc/widget/HtcListItem2LineText;

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 1771
    iget-object v1, p1, Lcom/htc/sdm/activity/SoundSetList$ViewHolder;->lineText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1772
    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemRadioButton;

    iput-object v1, p1, Lcom/htc/sdm/activity/SoundSetList$ViewHolder;->radioBtn:Lcom/htc/widget/HtcListItemRadioButton;

    .line 1774
    return-object v0
.end method
