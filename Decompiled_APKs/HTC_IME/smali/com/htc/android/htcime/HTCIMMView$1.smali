.class Lcom/htc/android/htcime/HTCIMMView$1;
.super Ljava/lang/Object;
.source "HTCIMMView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/HTCIMMView;->showIMMView(Z)V
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
    .line 430
    iput-object p1, p0, Lcom/htc/android/htcime/HTCIMMView$1;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "me"

    .prologue
    .line 432
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$1;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->doneFirstTimeTutor()V

    .line 433
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 434
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.htcime"

    const-string v2, "com.htc.android.htcime.tutorial.RegionalCorrection"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 436
    iget-object v1, p0, Lcom/htc/android/htcime/HTCIMMView$1;->this$0:Lcom/htc/android/htcime/HTCIMMView;

    #getter for: Lcom/htc/android/htcime/HTCIMMView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/htcime/HTCIMMView;->access$000(Lcom/htc/android/htcime/HTCIMMView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 437
    const/4 v1, 0x1

    return v1
.end method
