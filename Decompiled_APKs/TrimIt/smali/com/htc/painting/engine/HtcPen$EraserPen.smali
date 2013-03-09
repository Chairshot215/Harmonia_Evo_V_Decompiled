.class public abstract Lcom/htc/painting/engine/HtcPen$EraserPen;
.super Lcom/htc/painting/engine/HtcPen;
.source "HtcPen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/HtcPen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EraserPen"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;Lcom/htc/painting/tool/pen/ReadOnlyPenProps;)V
    .locals 0
    .parameter "context"
    .parameter "id"
    .parameter "penProps"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/painting/engine/HtcPen;-><init>(Landroid/content/Context;Ljava/lang/Integer;Lcom/htc/painting/tool/pen/ReadOnlyPenProps;)V

    .line 36
    return-void
.end method


# virtual methods
.method public abstract getRenderEngine()Lcom/htc/painting/engine/render/IRenderEngine;
.end method
