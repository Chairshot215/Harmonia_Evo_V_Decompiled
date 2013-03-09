.class Lcom/htc/android/htcime/HTCIMMView$4;
.super Ljava/lang/Object;
.source "HTCIMMView.java"

# interfaces
.implements Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;


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
    .line 2248
    iput-object p1, p0, Lcom/htc/android/htcime/HTCIMMView$4;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyButtonDown(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 2267
    return-void
.end method

.method public onKeyButtonUp(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 2275
    return-void
.end method

.method public onKeyPress(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$4;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mAWAddBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;
    invoke-static {v0}, Lcom/htc/android/htcime/HTCIMMView;->access$1100(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/DefaultKeyButton;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2255
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$4;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v0}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    .line 2260
    :cond_0
    :goto_0
    return-void

    .line 2257
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$4;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mAWCancelBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;
    invoke-static {v0}, Lcom/htc/android/htcime/HTCIMMView;->access$1200(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/ui/DefaultKeyButton;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2258
    iget-object v0, p0, Lcom/htc/android/htcime/HTCIMMView$4;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;
    invoke-static {v0}, Lcom/htc/android/htcime/HTCIMMView;->access$600(Lcom/htc/android/htcime/HTCIMMView;)Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_0
.end method
