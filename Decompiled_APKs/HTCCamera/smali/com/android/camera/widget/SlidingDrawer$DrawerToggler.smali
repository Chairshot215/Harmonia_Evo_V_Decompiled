.class Lcom/android/camera/widget/SlidingDrawer$DrawerToggler;
.super Ljava/lang/Object;
.source "SlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/SlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerToggler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/SlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/android/camera/widget/SlidingDrawer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SlidingDrawer$DrawerToggler;->this$0:Lcom/android/camera/widget/SlidingDrawer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/widget/SlidingDrawer;Lcom/android/camera/widget/SlidingDrawer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/widget/SlidingDrawer$DrawerToggler;-><init>(Lcom/android/camera/widget/SlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer$DrawerToggler;->this$0:Lcom/android/camera/widget/SlidingDrawer;

    #getter for: Lcom/android/camera/widget/SlidingDrawer;->mLocked:Z
    invoke-static {v0}, Lcom/android/camera/widget/SlidingDrawer;->access$200(Lcom/android/camera/widget/SlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer$DrawerToggler;->this$0:Lcom/android/camera/widget/SlidingDrawer;

    #getter for: Lcom/android/camera/widget/SlidingDrawer;->mOnCaptureListener:Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;
    invoke-static {v0}, Lcom/android/camera/widget/SlidingDrawer;->access$300(Lcom/android/camera/widget/SlidingDrawer;)Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer$DrawerToggler;->this$0:Lcom/android/camera/widget/SlidingDrawer;

    #getter for: Lcom/android/camera/widget/SlidingDrawer;->mAnimateOnClick:Z
    invoke-static {v0}, Lcom/android/camera/widget/SlidingDrawer;->access$400(Lcom/android/camera/widget/SlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer$DrawerToggler;->this$0:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->animateToggle()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/widget/SlidingDrawer$DrawerToggler;->this$0:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->toggle()V

    goto :goto_0
.end method
