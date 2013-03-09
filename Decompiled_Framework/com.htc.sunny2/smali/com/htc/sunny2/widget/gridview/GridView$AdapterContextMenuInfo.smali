.class public Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    iput-wide p2, p0, Lcom/htc/sunny2/widget/gridview/GridView$AdapterContextMenuInfo;->id:J

    return-void
.end method
