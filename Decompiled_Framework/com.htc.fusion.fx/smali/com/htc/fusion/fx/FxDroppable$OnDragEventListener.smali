.class public abstract Lcom/htc/fusion/fx/FxDroppable$OnDragEventListener;
.super Lcom/htc/fusion/fx/MessageActivityListener;
.source "FxDroppable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/FxDroppable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnDragEventListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageActivityListener",
        "<",
        "Lcom/htc/fusion/fx/FxDraggable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/fusion/fx/MessageActivityListener;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public abstract onDropEvent(Lcom/htc/fusion/fx/FxDraggable;)V
.end method

.method public onMessageReceived(Lcom/htc/fusion/fx/FxDraggable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/fusion/fx/FxDroppable$OnDragEventListener;->onDropEvent(Lcom/htc/fusion/fx/FxDraggable;)V

    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/htc/fusion/fx/FxDraggable;

    invoke-virtual {p0, p1}, Lcom/htc/fusion/fx/FxDroppable$OnDragEventListener;->onMessageReceived(Lcom/htc/fusion/fx/FxDraggable;)V

    return-void
.end method
