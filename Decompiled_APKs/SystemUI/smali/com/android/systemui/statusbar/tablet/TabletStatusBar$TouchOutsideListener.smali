.class public Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchOutsideListener"
.end annotation


# instance fields
.field private mMsg:I

.field private mPanel:Lcom/android/systemui/statusbar/tablet/StatusBarPanel;

.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;->mMsg:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;->mPanel:Lcom/android/systemui/statusbar/tablet/StatusBarPanel;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;->mPanel:Lcom/android/systemui/statusbar/tablet/StatusBarPanel;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/tablet/StatusBarPanel;->isInContentArea(II)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    iget v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;->mMsg:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    iget v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;->mMsg:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
