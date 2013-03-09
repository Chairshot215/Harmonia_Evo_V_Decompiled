.class Lcom/htc/launcher/CellLayout$CellComparator;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/launcher/CellInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mDragInfo:Lcom/htc/launcher/CellInfo;

.field final synthetic this$0:Lcom/htc/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/htc/launcher/CellLayout;Lcom/htc/launcher/CellInfo;)V
    .locals 0
    .parameter
    .parameter "dragInfo"

    .prologue
    .line 2654
    iput-object p1, p0, Lcom/htc/launcher/CellLayout$CellComparator;->this$0:Lcom/htc/launcher/CellLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2655
    iput-object p2, p0, Lcom/htc/launcher/CellLayout$CellComparator;->mDragInfo:Lcom/htc/launcher/CellInfo;

    .line 2656
    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/launcher/CellInfo;Lcom/htc/launcher/CellInfo;)I
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2660
    iget v2, p1, Lcom/htc/launcher/CellInfo;->spanX:I

    iget v3, p1, Lcom/htc/launcher/CellInfo;->spanY:I

    mul-int v0, v2, v3

    .line 2661
    .local v0, area0:I
    iget v2, p2, Lcom/htc/launcher/CellInfo;->spanX:I

    iget v3, p2, Lcom/htc/launcher/CellInfo;->spanY:I

    mul-int v1, v2, v3

    .line 2662
    .local v1, area1:I
    if-eq v0, v1, :cond_0

    .line 2664
    sub-int v2, v1, v0

    .line 2668
    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/htc/launcher/CellLayout$CellComparator;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v2, v2, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v3, p2, Lcom/htc/launcher/CellInfo;->cellX:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/htc/launcher/CellLayout$CellComparator;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v3, v3, Lcom/htc/launcher/CellInfo;->cellY:I

    iget v4, p2, Lcom/htc/launcher/CellInfo;->cellY:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/launcher/CellLayout$CellComparator;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v3, v3, Lcom/htc/launcher/CellInfo;->cellX:I

    iget v4, p1, Lcom/htc/launcher/CellInfo;->cellX:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/htc/launcher/CellLayout$CellComparator;->mDragInfo:Lcom/htc/launcher/CellInfo;

    iget v4, v4, Lcom/htc/launcher/CellInfo;->cellY:I

    iget v5, p1, Lcom/htc/launcher/CellInfo;->cellY:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2651
    check-cast p1, Lcom/htc/launcher/CellInfo;

    .end local p1
    check-cast p2, Lcom/htc/launcher/CellInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/launcher/CellLayout$CellComparator;->compare(Lcom/htc/launcher/CellInfo;Lcom/htc/launcher/CellInfo;)I

    move-result v0

    return v0
.end method
