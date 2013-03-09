.class Lcom/htc/sunny/STextView$14;
.super Ljava/lang/Object;
.source "STextView.java"

# interfaces
.implements Lcom/htc/sunny/SAnimationController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/STextView;->startMarquee()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/STextView;


# direct methods
.method constructor <init>(Lcom/htc/sunny/STextView;)V
    .locals 0
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Lcom/htc/sunny/STextView$14;->this$0:Lcom/htc/sunny/STextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 711
    iget-object v0, p0, Lcom/htc/sunny/STextView$14;->this$0:Lcom/htc/sunny/STextView;

    #setter for: Lcom/htc/sunny/STextView;->mMarqueeFinished:Z
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$602(Lcom/htc/sunny/STextView;Z)Z

    .line 712
    iget-object v0, p0, Lcom/htc/sunny/STextView$14;->this$0:Lcom/htc/sunny/STextView;

    #setter for: Lcom/htc/sunny/STextView;->mGenerateText:Z
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$102(Lcom/htc/sunny/STextView;Z)Z

    .line 713
    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 708
    return-void
.end method
