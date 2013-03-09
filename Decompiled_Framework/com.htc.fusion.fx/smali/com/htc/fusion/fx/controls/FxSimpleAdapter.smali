.class public Lcom/htc/fusion/fx/controls/FxSimpleAdapter;
.super Lcom/htc/fusion/fx/controls/FxBaseAdapter;
.source "FxSimpleAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mControl:[Ljava/lang/String;

.field private final mFrom:[Ljava/lang/String;

.field private mFxListItemBinder:Lcom/htc/fusion/fx/controls/FxListItemBinder;

.field private final mObjects:Ljava/util/List;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/fusion/fx/controls/FxSimpleAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/fusion/fx/controls/FxSimpleAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/fusion/fx/controls/FxBaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxSimpleAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/fusion/fx/controls/FxSimpleAdapter;->mObjects:Ljava/util/List;

    iput-object p3, p0, Lcom/htc/fusion/fx/controls/FxSimpleAdapter;->mFrom:[Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/fusion/fx/controls/FxSimpleAdapter;->mControl:[Ljava/lang/String;

    new-instance v0, Lcom/htc/fusion/fx/controls/FxListItemBinder;

    invoke-direct {v0}, Lcom/htc/fusion/fx/controls/FxListItemBinder;-><init>()V

    iput-object v0, p0, Lcom/htc/fusion/fx/controls/FxSimpleAdapter;->mFxListItemBinder:Lcom/htc/fusion/fx/controls/FxListItemBinder;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxSimpleAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFxListItemBinder()Lcom/htc/fusion/fx/controls/FxListItemBinder;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxSimpleAdapter;->mFxListItemBinder:Lcom/htc/fusion/fx/controls/FxListItemBinder;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxSimpleAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMapItem(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxSimpleAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public setFxListItemBinder(Lcom/htc/fusion/fx/controls/FxListItemBinder;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fxListItemBinder of setFxListItemBinder(FxListItemBinder fxListItemBinder) is null reference."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxSimpleAdapter;->mFxListItemBinder:Lcom/htc/fusion/fx/controls/FxListItemBinder;

    return-void
.end method

.method protected setFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 6

    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxSimpleAdapter;->mObjects:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxSimpleAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxSimpleAdapter;->mControl:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxSimpleAdapter;->mFrom:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxSimpleAdapter;->mControl:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p2, v4}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxControl;

    sget-boolean v4, Lcom/htc/fusion/fx/controls/FxSimpleAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez v2, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "FxListItem1.getDescendant(mFxTextLabelControl)=null"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :cond_0
    iget-object v4, p0, Lcom/htc/fusion/fx/controls/FxSimpleAdapter;->mFxListItemBinder:Lcom/htc/fusion/fx/controls/FxListItemBinder;

    iget-object v5, p0, Lcom/htc/fusion/fx/controls/FxSimpleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, p1, v2, v0}, Lcom/htc/fusion/fx/controls/FxListItemBinder;->setFxListItemValue(Landroid/content/Context;ILcom/htc/fusion/fx/FxControl;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
