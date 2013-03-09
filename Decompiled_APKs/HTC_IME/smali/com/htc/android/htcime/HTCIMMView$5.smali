.class Lcom/htc/android/htcime/HTCIMMView$5;
.super Ljava/lang/Object;
.source "HTCIMMView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/HTCIMMView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/HTCIMMView;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/HTCIMMView;)V
    .locals 0
    .parameter

    .prologue
    .line 2279
    iput-object p1, p0, Lcom/htc/android/htcime/HTCIMMView$5;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 2282
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2283
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$5;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mLandMMSSendBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;
    invoke-static {v0}, Lcom/htc/android/htcime/HTCIMMView;->access$1300(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/IMECustomizeButton;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 2284
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$5;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v0}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    const/high16 v1, 0x725

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    .line 2289
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2285
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$5;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mLandMMSAttachBtn:Lcom/htc/android/htcime/ui/IMECustomizeButton;
    invoke-static {v0}, Lcom/htc/android/htcime/HTCIMMView;->access$1400(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/IMECustomizeButton;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2286
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$5;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v0}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    const/high16 v1, 0x726

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_0
.end method
