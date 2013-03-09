.class public Lcom/htc/view/table/AbstractAdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "AbstractAdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/view/table/AbstractAdapterView;
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
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p1, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 370
    iput p2, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterContextMenuInfo;->position:I

    .line 371
    iput-wide p3, p0, Lcom/htc/view/table/AbstractAdapterView$AdapterContextMenuInfo;->id:J

    .line 372
    return-void
.end method
