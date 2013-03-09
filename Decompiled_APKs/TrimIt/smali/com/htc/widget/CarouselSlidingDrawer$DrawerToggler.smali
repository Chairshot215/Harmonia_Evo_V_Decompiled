.class Lcom/htc/widget/CarouselSlidingDrawer$DrawerToggler;
.super Ljava/lang/Object;
.source "CarouselSlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/CarouselSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerToggler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/CarouselSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/htc/widget/CarouselSlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/htc/widget/CarouselSlidingDrawer$DrawerToggler;->this$0:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/CarouselSlidingDrawer;Lcom/htc/widget/CarouselSlidingDrawer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1012
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselSlidingDrawer$DrawerToggler;-><init>(Lcom/htc/widget/CarouselSlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer$DrawerToggler;->this$0:Lcom/htc/widget/CarouselSlidingDrawer;

    #getter for: Lcom/htc/widget/CarouselSlidingDrawer;->mLocked:Z
    invoke-static {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->access$200(Lcom/htc/widget/CarouselSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    :goto_0
    return-void

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer$DrawerToggler;->this$0:Lcom/htc/widget/CarouselSlidingDrawer;

    #getter for: Lcom/htc/widget/CarouselSlidingDrawer;->mAnimateOnClick:Z
    invoke-static {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->access$300(Lcom/htc/widget/CarouselSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer$DrawerToggler;->this$0:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->animateToggle()V

    goto :goto_0

    .line 1024
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/CarouselSlidingDrawer$DrawerToggler;->this$0:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->toggle()V

    goto :goto_0
.end method
