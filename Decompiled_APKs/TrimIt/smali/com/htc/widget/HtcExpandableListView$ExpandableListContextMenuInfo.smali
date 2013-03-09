.class public Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;
.super Ljava/lang/Object;
.source "HtcExpandableListView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandableListContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public packedPosition:J

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;JJ)V
    .locals 0
    .parameter "targetView"
    .parameter "packedPosition"
    .parameter "id"

    .prologue
    .line 1091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1092
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    .line 1093
    iput-wide p2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    .line 1094
    iput-wide p4, p0, Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;->id:J

    .line 1095
    return-void
.end method
