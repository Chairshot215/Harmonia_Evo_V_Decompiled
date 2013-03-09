.class public interface abstract Lcom/htc/launcher/CellLayout$ICellInfoHandler;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICellInfoHandler"
.end annotation


# virtual methods
.method public abstract onCancel(Lcom/htc/launcher/CellInfo;)V
.end method

.method public abstract onSelect(Lcom/htc/launcher/CellInfo;)V
.end method

.method public abstract onTapEmptyCell()V
.end method

.method public abstract onTouchMove(Landroid/view/MotionEvent;)V
.end method

.method public abstract ownCellInfo()Z
.end method
