.class public interface abstract Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView$OnItemSelectedListener;
.super Ljava/lang/Object;
.source "EnhancerAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemSelectedListener"
.end annotation


# virtual methods
.method public abstract onItemSelected(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;Landroid/view/View;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation
.end method

.method public abstract onNothingSelected(Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/addons/photoenhancer/EnhancerAdapterView",
            "<*>;)V"
        }
    .end annotation
.end method
