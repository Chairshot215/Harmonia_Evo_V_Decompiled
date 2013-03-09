.class Lcom/googlecode/eyesfree/utils/TouchExplorationHelper$2;
.super Ljava/lang/Object;
.source "TouchExplorationHelper.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;


# direct methods
.method constructor <init>(Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper$2;->this$0:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 354
    iget-object v3, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper$2;->this$0:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;

    #getter for: Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v3}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->access$0(Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 369
    :goto_0
    return v1

    .line 358
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 361
    :pswitch_1
    iget-object v1, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper$2;->this$0:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->getItemAt(FF)Ljava/lang/Object;

    move-result-object v0

    .line 362
    .local v0, item:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper$2;->this$0:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;

    #calls: Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->setCurrentItem(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->access$1(Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;Ljava/lang/Object;)V

    move v1, v2

    .line 363
    goto :goto_0

    .line 365
    .end local v0           #item:Ljava/lang/Object;,"TT;"
    :pswitch_2
    iget-object v1, p0, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper$2;->this$0:Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;

    const/4 v3, 0x0

    #calls: Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->setCurrentItem(Ljava/lang/Object;)V
    invoke-static {v1, v3}, Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;->access$1(Lcom/googlecode/eyesfree/utils/TouchExplorationHelper;Ljava/lang/Object;)V

    move v1, v2

    .line 366
    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
