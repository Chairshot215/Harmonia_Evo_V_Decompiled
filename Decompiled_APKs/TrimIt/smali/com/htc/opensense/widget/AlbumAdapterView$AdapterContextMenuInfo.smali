.class public Lcom/htc/opensense/widget/AlbumAdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "AlbumAdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/AlbumAdapterView;
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
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 375
    iput p2, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterContextMenuInfo;->position:I

    .line 376
    iput-wide p3, p0, Lcom/htc/opensense/widget/AlbumAdapterView$AdapterContextMenuInfo;->id:J

    .line 377
    return-void
.end method
