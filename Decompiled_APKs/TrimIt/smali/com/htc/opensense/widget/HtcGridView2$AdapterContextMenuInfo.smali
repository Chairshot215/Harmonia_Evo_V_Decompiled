.class public Lcom/htc/opensense/widget/HtcGridView2$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "HtcGridView2.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/HtcGridView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 0
    .parameter "targetView"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1744
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcGridView2$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 1745
    iput p2, p0, Lcom/htc/opensense/widget/HtcGridView2$AdapterContextMenuInfo;->position:I

    .line 1746
    iput-wide p3, p0, Lcom/htc/opensense/widget/HtcGridView2$AdapterContextMenuInfo;->id:J

    .line 1747
    return-void
.end method
