.class interface abstract Lcom/htc/widget/CarouselHost$ContentStrategy;
.super Ljava/lang/Object;
.source "CarouselHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/CarouselHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ContentStrategy"
.end annotation


# virtual methods
.method public abstract getContentView()Landroid/view/View;
.end method

.method public abstract sync(Lcom/htc/widget/TaskInfo;)V
.end method

.method public abstract tabClosed()V
.end method

.method public abstract tabOnPaused()V
.end method

.method public abstract tabOnResume()V
.end method

.method public abstract tabRemoved()V
.end method

.method public abstract toString()Ljava/lang/String;
.end method
