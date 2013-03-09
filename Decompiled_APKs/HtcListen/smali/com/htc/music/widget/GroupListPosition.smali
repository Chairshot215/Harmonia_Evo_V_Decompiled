.class Lcom/htc/music/widget/GroupListPosition;
.super Ljava/lang/Object;
.source "GroupListPosition.java"


# static fields
.field public static final CHILD:I = 0x1

.field public static final GROUP:I = 0x2


# instance fields
.field public childPos:I

.field flatListPos:I

.field public groupPos:I

.field public type:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/htc/music/widget/GroupListPosition;->type:I

    iput p2, p0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iput p3, p0, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    return-void
.end method

.method constructor <init>(IIII)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/htc/music/widget/GroupListPosition;->type:I

    iput p4, p0, Lcom/htc/music/widget/GroupListPosition;->flatListPos:I

    iput p2, p0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iput p3, p0, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    return-void
.end method

.method static obtainChildPosition(II)Lcom/htc/music/widget/GroupListPosition;
    .locals 2

    new-instance v0, Lcom/htc/music/widget/GroupListPosition;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/htc/music/widget/GroupListPosition;-><init>(III)V

    return-object v0
.end method

.method static obtainGroupPosition(I)Lcom/htc/music/widget/GroupListPosition;
    .locals 3

    new-instance v0, Lcom/htc/music/widget/GroupListPosition;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/htc/music/widget/GroupListPosition;-><init>(III)V

    return-object v0
.end method

.method static obtainPosition(J)Lcom/htc/music/widget/GroupListPosition;
    .locals 4

    const/4 v0, 0x1

    const-wide v1, 0xffffffffL

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1}, Lcom/htc/music/widget/GroupListView;->getPackedPositionType(J)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_1
    new-instance v1, Lcom/htc/music/widget/GroupListPosition;

    invoke-static {p0, p1}, Lcom/htc/music/widget/GroupListView;->getPackedPositionGroup(J)I

    move-result v2

    invoke-static {p0, p1}, Lcom/htc/music/widget/GroupListView;->getPackedPositionChild(J)I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/htc/music/widget/GroupListPosition;-><init>(III)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method getPackedPosition()J
    .locals 2

    iget v0, p0, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget v1, p0, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    invoke-static {v0, v1}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-static {v0}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    goto :goto_0
.end method
