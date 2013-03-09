.class Lcom/htc/android/htcime/ui/Bubble$1;
.super Ljava/lang/Object;
.source "Bubble.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ui/Bubble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/Bubble;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/Bubble;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/htc/android/htcime/ui/Bubble$1;->this$0:Lcom/htc/android/htcime/ui/Bubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const v5, 0x7f02011d

    const v3, 0x7f02011c

    const/4 v4, 0x1

    .line 408
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 409
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble$1;->this$0:Lcom/htc/android/htcime/ui/Bubble;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/Bubble;->ButtonPositive:Landroid/widget/Button;

    if-ne p1, v2, :cond_1

    .line 410
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble$1;->this$0:Lcom/htc/android/htcime/ui/Bubble;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/Bubble;->ButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 444
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 412
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble$1;->this$0:Lcom/htc/android/htcime/ui/Bubble;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/Bubble;->ButtonNegative:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 413
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble$1;->this$0:Lcom/htc/android/htcime/ui/Bubble;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/Bubble;->ButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 416
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v4, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 417
    :cond_3
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble$1;->this$0:Lcom/htc/android/htcime/ui/Bubble;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/Bubble;->ButtonPositive:Landroid/widget/Button;

    if-ne p1, v2, :cond_5

    .line 418
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble$1;->this$0:Lcom/htc/android/htcime/ui/Bubble;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/Bubble;->ButtonPositive:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 420
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble$1;->this$0:Lcom/htc/android/htcime/ui/Bubble;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/Bubble;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 421
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "TutorialPlayed"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 422
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble$1;->this$0:Lcom/htc/android/htcime/ui/Bubble;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 423
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble$1;->this$0:Lcom/htc/android/htcime/ui/Bubble;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 425
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 426
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.htc.android.htcime"

    const-string v3, "com.htc.android.htcime.tutorial.RegionalCorrection"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 428
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble$1;->this$0:Lcom/htc/android/htcime/ui/Bubble;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/Bubble;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 429
    sput-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->sTutored:Z

    goto :goto_0

    .line 432
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_5
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble$1;->this$0:Lcom/htc/android/htcime/ui/Bubble;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/Bubble;->ButtonNegative:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 433
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble$1;->this$0:Lcom/htc/android/htcime/ui/Bubble;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/Bubble;->ButtonNegative:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 435
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble$1;->this$0:Lcom/htc/android/htcime/ui/Bubble;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/Bubble;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 436
    .restart local v1       #sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "TutorialPlayed"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 437
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble$1;->this$0:Lcom/htc/android/htcime/ui/Bubble;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 438
    iget-object v2, p0, Lcom/htc/android/htcime/ui/Bubble$1;->this$0:Lcom/htc/android/htcime/ui/Bubble;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/Bubble;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 440
    :cond_6
    sput-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->sTutored:Z

    goto/16 :goto_0
.end method
