.class public Lcom/htc/fusion/fx/controls/FxTextLabel$LayoutChangedParameters;
.super Ljava/lang/Object;
.source "FxTextLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/controls/FxTextLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutChangedParameters"
.end annotation


# instance fields
.field object:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field size:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/FxTextLabel;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxTextLabel$LayoutChangedParameters;->object:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object p2, p0, Lcom/htc/fusion/fx/controls/FxTextLabel$LayoutChangedParameters;->size:Landroid/graphics/PointF;

    return-void
.end method
