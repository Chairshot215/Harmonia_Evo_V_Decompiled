.class Lcom/android/camera/MenuHandler$1;
.super Ljava/lang/Object;
.source "MenuHandler.java"

# interfaces
.implements Lcom/android/camera/widget/SettingsView$OnSubMenuOpenedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MenuHandler;->initMenuHandler(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MenuHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/MenuHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/MenuHandler$1;->this$0:Lcom/android/camera/MenuHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubMenuOpened(Z)V
    .locals 6

    const-wide/16 v4, 0x1f4

    const-wide/16 v2, 0x0

    const/4 v1, 0x3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/MenuHandler$1;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;
    invoke-static {v0}, Lcom/android/camera/MenuHandler;->access$000(Lcom/android/camera/MenuHandler;)Lcom/android/camera/widget/SlidingDrawer;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideIn(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/MenuHandler$1;->this$0:Lcom/android/camera/MenuHandler;

    #getter for: Lcom/android/camera/MenuHandler;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;
    invoke-static {v0}, Lcom/android/camera/MenuHandler;->access$000(Lcom/android/camera/MenuHandler;)Lcom/android/camera/widget/SlidingDrawer;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    goto :goto_0
.end method
