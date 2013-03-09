.class Lcom/htc/launcher/widget/SlidingDrawer$DrawerToggler;
.super Ljava/lang/Object;
.source "SlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/widget/SlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerToggler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/widget/SlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/widget/SlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/htc/launcher/widget/SlidingDrawer$DrawerToggler;->this$0:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/widget/SlidingDrawer;Lcom/htc/launcher/widget/SlidingDrawer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1010
    invoke-direct {p0, p1}, Lcom/htc/launcher/widget/SlidingDrawer$DrawerToggler;-><init>(Lcom/htc/launcher/widget/SlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer$DrawerToggler;->this$0:Lcom/htc/launcher/widget/SlidingDrawer;

    #getter for: Lcom/htc/launcher/widget/SlidingDrawer;->mLocked:Z
    invoke-static {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->access$500(Lcom/htc/launcher/widget/SlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    :goto_0
    return-void

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer$DrawerToggler;->this$0:Lcom/htc/launcher/widget/SlidingDrawer;

    #getter for: Lcom/htc/launcher/widget/SlidingDrawer;->mAnimateOnClick:Z
    invoke-static {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->access$600(Lcom/htc/launcher/widget/SlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1020
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer$DrawerToggler;->this$0:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->animateToggle()V

    goto :goto_0

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/widget/SlidingDrawer$DrawerToggler;->this$0:Lcom/htc/launcher/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/SlidingDrawer;->toggle()V

    goto :goto_0
.end method
