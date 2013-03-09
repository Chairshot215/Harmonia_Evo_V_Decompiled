.class public abstract Lcom/htc/sunny/SPresentationAdapterBase;
.super Lcom/htc/sunny/SBaseAdapter;
.source "SPresentationAdapterBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/sunny/SBaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getContainerCount()I
.end method

.method public abstract getContainerLayout(I)Lcom/htc/sunny/SPresentationContainerLayout;
.end method

.method public abstract getItemBitmap(I)Lcom/htc/sunny/SBitmap;
.end method

.method public abstract getItemCount()I
.end method

.method public abstract updateLayoutAtTimeSlot(IIIILcom/htc/sunny/SPresentationContainerLayout;Z)V
.end method
