.class Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;
.super Ljava/lang/Object;
.source "CarouselActivity.java"

# interfaces
.implements Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerOpenListener;
.implements Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerScrollListener;
.implements Lcom/htc/widget/CarouselSlidingDrawer$OnDrawerCloseListener;
.implements Lcom/htc/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/CarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditModeDrawerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/CarouselActivity;


# direct methods
.method private constructor <init>(Lcom/htc/widget/CarouselActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 933
    iput-object p1, p0, Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;->this$0:Lcom/htc/widget/CarouselActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/CarouselActivity;Lcom/htc/widget/CarouselActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 933
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;-><init>(Lcom/htc/widget/CarouselActivity;)V

    return-void
.end method


# virtual methods
.method public onDrawerAboutToOpen()V
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;->this$0:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->onEditDrawerAboutToOpen()V

    .line 956
    return-void
.end method

.method public onDrawerClosed()V
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;->this$0:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->onEditDrawerClosed()V

    .line 951
    return-void
.end method

.method public onDrawerCompleteClose()V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;->this$0:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->onEditDrawerCompleteClose()V

    .line 961
    return-void
.end method

.method public onDrawerOpened()V
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;->this$0:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->onEditDrawerOpened()V

    .line 939
    return-void
.end method

.method public onScrollEnded()V
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;->this$0:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->onEditScrollEnded()V

    .line 943
    return-void
.end method

.method public onScrollStarted()V
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/htc/widget/CarouselActivity$EditModeDrawerListener;->this$0:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->onEditScrollStarted()V

    .line 947
    return-void
.end method
