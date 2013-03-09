.class public Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "HtcAdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAdapterView;
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
    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    iput-object p1, p0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 495
    iput p2, p0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 496
    iput-wide p3, p0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->id:J

    .line 497
    return-void
.end method
