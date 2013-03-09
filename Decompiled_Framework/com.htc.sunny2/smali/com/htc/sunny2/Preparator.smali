.class public abstract Lcom/htc/sunny2/Preparator;
.super Lcom/htc/sunny2/RenderThreadPreparation;
.source "Preparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/Preparator$UpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/sunny2/RenderThreadPreparation;"
    }
.end annotation


# instance fields
.field protected mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/RenderThreadPreparation;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract bind(ILcom/htc/sunny2/IMediaList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/sunny2/IMediaList",
            "<*>;I)V"
        }
    .end annotation
.end method

.method public abstract deInit()V
.end method

.method public abstract freeOutOfRange(III)V
.end method

.method public abstract get(IILandroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;Landroid/os/Bundle;)V
.end method

.method public abstract loadRange(IIIJ)V
.end method

.method public abstract notifyDataItemChanged(II)V
.end method

.method public abstract pausePreparator()V
.end method

.method public abstract refresh(ILcom/htc/sunny2/IMediaList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/sunny2/IMediaList",
            "<*>;I)V"
        }
    .end annotation
.end method

.method public abstract resetDecodeDirection()V
.end method

.method public abstract resumePreparator()V
.end method

.method public abstract setDecodeDirection(I)V
.end method

.method public setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/Preparator;->mUpdateListener:Lcom/htc/sunny2/Preparator$UpdateListener;

    return-void
.end method

.method public abstract setVisibleRange(III)V
.end method

.method public abstract unbind(I)V
.end method
