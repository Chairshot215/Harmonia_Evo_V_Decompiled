.class public Lcom/htc/widget/MoreExpandableItemInfo;
.super Ljava/lang/Object;
.source "MoreExpandableItemInfo.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mBackground:[Landroid/graphics/drawable/ColorDrawable;


# instance fields
.field private mChildren:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mId:J

.field private mIsChildExpanded:Z

.field private mIsGroup:Z

.field private mIsGroupExpanded:Z

.field private mLevel:I

.field private mParent:Lcom/htc/widget/MoreExpandableItemInfo;

.field private mUserBackgroundEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "MoreExpandableItemInfo"

    sput-object v0, Lcom/htc/widget/MoreExpandableItemInfo;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x242425

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/widget/MoreExpandableItemInfo;->mBackground:[Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mId:J

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mLevel:I

    iput-object v3, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsGroup:Z

    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsGroupExpanded:Z

    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsChildExpanded:Z

    iput-object v3, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mChildren:Ljava/util/LinkedList;

    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mUserBackgroundEnable:Z

    iput-wide p1, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mId:J

    iput-boolean p3, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsGroup:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mChildren:Ljava/util/LinkedList;

    iput v2, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mLevel:I

    return-void
.end method

.method static getBackground(I)Landroid/graphics/drawable/ColorDrawable;
    .locals 2

    sget-object v0, Lcom/htc/widget/MoreExpandableItemInfo;->mBackground:[Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getChildPosition(II)I
    .locals 1

    const/high16 v0, -0x8000

    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, p0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static getPosition(II)I
    .locals 1

    const/high16 v0, -0x8000

    if-eq p0, v0, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setChildCollapse()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsChildExpanded:Z

    return-void
.end method

.method private setChildExpanded()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsChildExpanded:Z

    return-void
.end method

.method private setParent(Lcom/htc/widget/MoreExpandableItemInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mLevel:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mLevel:I

    goto :goto_0
.end method


# virtual methods
.method getChildren()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mChildren:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getChildrenCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mChildren:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method getExpandedChild()Lcom/htc/widget/MoreExpandableItemInfo;
    .locals 3

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mChildren:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroupExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mId:J

    return-wide v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mLevel:I

    return v0
.end method

.method public getParent()Lcom/htc/widget/MoreExpandableItemInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    return-object v0
.end method

.method public getParentId()J
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getUserBackgroundEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mUserBackgroundEnable:Z

    return v0
.end method

.method public isChildExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsChildExpanded:Z

    return v0
.end method

.method public isGroup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsGroup:Z

    return v0
.end method

.method public isGroupExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsGroupExpanded:Z

    return v0
.end method

.method isLastChild()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildren()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onCollapseDelete()V
    .locals 0

    return-void
.end method

.method setChildren(Ljava/util/LinkedList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mChildren:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mChildren:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mChildren:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-direct {v1, p0}, Lcom/htc/widget/MoreExpandableItemInfo;->setParent(Lcom/htc/widget/MoreExpandableItemInfo;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return-void
.end method

.method setGroupCollapse()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsGroupExpanded:Z

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-direct {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->setChildCollapse()V

    :cond_0
    return-void
.end method

.method setGroupExpanded()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mIsGroupExpanded:Z

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mParent:Lcom/htc/widget/MoreExpandableItemInfo;

    invoke-direct {v0}, Lcom/htc/widget/MoreExpandableItemInfo;->setChildExpanded()V

    :cond_0
    return-void
.end method

.method public setUserBackgroundEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/MoreExpandableItemInfo;->mUserBackgroundEnable:Z

    return-void
.end method
