.class public Lcom/google/android/finsky/layout/GridSequencer;
.super Ljava/lang/Object;
.source "GridSequencer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/GridSequencer$1;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPageUrl:Ljava/lang/String;

.field private final mLayoutSequence:[I

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;[ILcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "navigationManager"
    .parameter "bitmapLoader"
    .parameter "sequence"
    .parameter "toc"
    .parameter "currentPageUrl"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/finsky/layout/GridSequencer;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/google/android/finsky/layout/GridSequencer;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 59
    iput-object p3, p0, Lcom/google/android/finsky/layout/GridSequencer;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 60
    iput-object p4, p0, Lcom/google/android/finsky/layout/GridSequencer;->mLayoutSequence:[I

    .line 61
    iput-object p6, p0, Lcom/google/android/finsky/layout/GridSequencer;->mCurrentPageUrl:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GridSequencer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    .line 63
    iput-object p5, p0, Lcom/google/android/finsky/layout/GridSequencer;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 64
    return-void
.end method

.method private bucketItemsBySize(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, promoData:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 152
    .local v3, output:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    .line 153
    .local v1, document:Lcom/google/android/finsky/api/model/Document;
    invoke-direct {p0, v1}, Lcom/google/android/finsky/layout/GridSequencer;->getGridSlotSize(Lcom/google/android/finsky/api/model/Document;)I

    move-result v4

    .line 154
    .local v4, slotType:I
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 155
    .local v0, docList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 157
    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    .end local v0           #docList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .end local v1           #document:Lcom/google/android/finsky/api/model/Document;
    .end local v4           #slotType:I
    :cond_1
    return-object v3
.end method

.method private getGridItem(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;
    .locals 8
    .parameter "doc"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/GridSequencer;->getTypeForItem(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/adapters/UnevenGridItemType;

    move-result-object v7

    .line 119
    .local v7, type:Lcom/google/android/finsky/adapters/UnevenGridItemType;
    sget-object v0, Lcom/google/android/finsky/layout/GridSequencer$1;->$SwitchMap$com$google$android$finsky$adapters$UnevenGridItemType:[I

    invoke-virtual {v7}, Lcom/google/android/finsky/adapters/UnevenGridItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GridSequencer;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/GridSequencer;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/layout/GridSequencer;->mCurrentPageUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/android/finsky/adapters/DocumentGridItem;->createSquarePromo(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/DocumentGridItem;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 124
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GridSequencer;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/GridSequencer;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/layout/GridSequencer;->mCurrentPageUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/android/finsky/adapters/DocumentGridItem;->createSmallPromo(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/DocumentGridItem;

    move-result-object v0

    goto :goto_0

    .line 127
    :pswitch_2
    new-instance v0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GridSequencer;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/GridSequencer;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/layout/GridSequencer;->mCurrentPageUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GridSequencer;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/GridSequencer;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/layout/GridSequencer;->mCurrentPageUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/android/finsky/adapters/DocumentGridItem;->create4x2PromoGraphic(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/DocumentGridItem;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_4
    new-instance v0, Lcom/google/android/finsky/adapters/ListGridItem;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GridSequencer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/finsky/layout/GridSequencer;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v4, p0, Lcom/google/android/finsky/layout/GridSequencer;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/layout/GridSequencer;->mCurrentPageUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/layout/GridSequencer;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/adapters/ListGridItem;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    goto :goto_0

    .line 136
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GridSequencer;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/GridSequencer;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/layout/GridSequencer;->mCurrentPageUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/android/finsky/adapters/DocumentGridItem;->create2x1PromoGraphic(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/DocumentGridItem;

    move-result-object v0

    goto :goto_0

    .line 139
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GridSequencer;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/GridSequencer;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/layout/GridSequencer;->mCurrentPageUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->create2x1(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/GraphicColoredTitle;

    move-result-object v0

    goto :goto_0

    .line 142
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GridSequencer;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/GridSequencer;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/layout/GridSequencer;->mCurrentPageUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->create4x2(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/GraphicColoredTitle;

    move-result-object v0

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getGridSlotSize(Lcom/google/android/finsky/api/model/Document;)I
    .locals 4
    .parameter "doc"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/GridSequencer;->getTypeForItem(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/adapters/UnevenGridItemType;

    move-result-object v0

    .line 195
    .local v0, type:Lcom/google/android/finsky/adapters/UnevenGridItemType;
    sget-object v1, Lcom/google/android/finsky/layout/GridSequencer$1;->$SwitchMap$com$google$android$finsky$adapters$UnevenGridItemType:[I

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/UnevenGridItemType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 208
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :pswitch_0
    const/4 v1, 0x4

    .line 206
    :goto_0
    return v1

    .line 202
    :pswitch_1
    const/4 v1, 0x3

    goto :goto_0

    .line 206
    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getTypeForItem(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/adapters/UnevenGridItemType;
    .locals 2
    .parameter "doc"

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v0

    .line 166
    .local v0, template:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    if-eqz v0, :cond_6

    .line 167
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileDetailsReflectedGraphic2X2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    sget-object v1, Lcom/google/android/finsky/adapters/UnevenGridItemType;->DOC_DETAILS_WITH_REFLECTED_PROMO_2x2:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    .line 188
    :goto_0
    return-object v1

    .line 169
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileFourBlock4X2()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    sget-object v1, Lcom/google/android/finsky/adapters/UnevenGridItemType;->LIST_FOUR_BLOCK_4x2:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic2X1()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    sget-object v1, Lcom/google/android/finsky/adapters/UnevenGridItemType;->GRAPHIC_2x1:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic4X2()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    sget-object v1, Lcom/google/android/finsky/adapters/UnevenGridItemType;->GRAPHIC_4x2:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    goto :goto_0

    .line 175
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle2X1()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 176
    sget-object v1, Lcom/google/android/finsky/adapters/UnevenGridItemType;->GRAPHIC_COLORED_TITLE_2x1:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    goto :goto_0

    .line 177
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle4X2()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 178
    sget-object v1, Lcom/google/android/finsky/adapters/UnevenGridItemType;->GRAPHIC_COLORED_TITLE_4x2:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    goto :goto_0

    .line 179
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicUpperLeftTitle2X1()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 180
    sget-object v1, Lcom/google/android/finsky/adapters/UnevenGridItemType;->GRAPHIC_2x1_TITLE_TOP_LEFT:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    goto :goto_0

    .line 185
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getContainerAnnotation()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v1

    if-nez v1, :cond_7

    .line 186
    sget-object v1, Lcom/google/android/finsky/adapters/UnevenGridItemType;->DOCUMENT_2x1:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    goto :goto_0

    .line 188
    :cond_7
    sget-object v1, Lcom/google/android/finsky/adapters/UnevenGridItemType;->GRAPHIC_2x1_TITLE_TOP_LEFT:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    goto :goto_0
.end method

.method private updateGridItems(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, promoData:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 79
    .local v9, output:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;>;"
    invoke-direct/range {p0 .. p1}, Lcom/google/android/finsky/layout/GridSequencer;->bucketItemsBySize(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v10

    .line 80
    .local v10, sizeMap:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/layout/GridSequencer;->mLayoutSequence:[I

    .local v1, arr$:[I
    array-length v8, v1

    .local v8, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v8, :cond_2

    aget v11, v1, v4

    .line 82
    .local v11, slot:I
    const/4 v13, 0x2

    if-ne v11, v13, :cond_1

    .line 83
    new-instance v13, Lcom/google/android/finsky/adapters/CorpusGridItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/GridSequencer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/layout/GridSequencer;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/GridSequencer;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/GridSequencer;->mCurrentPageUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v13 .. v17}, Lcom/google/android/finsky/adapters/CorpusGridItem;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 89
    .local v6, itemsForCurrentSlotType:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 94
    const/4 v13, 0x0

    invoke-interface {v6, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/finsky/layout/GridSequencer;->getGridItem(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    .end local v6           #itemsForCurrentSlotType:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .end local v11           #slot:I
    :cond_2
    const/4 v7, 0x0

    .line 99
    .local v7, largestBucketCount:I
    const/4 v5, 0x0

    .local v5, index:I
    :goto_2
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v5, v13, :cond_3

    .line 100
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 101
    .local v12, slotType:I
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 99
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 105
    .end local v12           #slotType:I
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v7, :cond_6

    .line 106
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v5, v13, :cond_5

    .line 107
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 108
    .restart local v12       #slotType:I
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 109
    .local v2, documentsInSlotType:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    .line 110
    const/4 v13, 0x0

    invoke-interface {v2, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/finsky/layout/GridSequencer;->getGridItem(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 105
    .end local v2           #documentsInSlotType:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .end local v12           #slotType:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 114
    :cond_6
    return-object v9
.end method


# virtual methods
.method public getAdapter()Lcom/google/android/finsky/adapters/UnevenGridAdapter;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->onDestroy()V

    .line 218
    return-void
.end method

.method public setPromoData(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, promoData:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    iget-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/GridSequencer;->updateGridItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->setData(Ljava/util/List;)V

    .line 72
    return-void
.end method
