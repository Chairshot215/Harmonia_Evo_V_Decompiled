.class Lcom/htc/android/htcime/ui/TipsBubble$1;
.super Ljava/lang/Object;
.source "TipsBubble.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ui/TipsBubble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/TipsBubble;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/TipsBubble;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/htc/android/htcime/ui/TipsBubble$1;->this$0:Lcom/htc/android/htcime/ui/TipsBubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const v3, 0x7f02000d

    const v2, 0x7f020005

    const/4 v0, 0x1

    .line 150
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TipsBubble$1;->this$0:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TipsBubble;->mBtnPositive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TipsBubble$1;->this$0:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TipsBubble;->mBtnPositive:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TipsBubble$1;->this$0:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TipsBubble;->mBtnNegative:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 156
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TipsBubble$1;->this$0:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TipsBubble;->mBtnNegative:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TipsBubble$1;->this$0:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TipsBubble;->mBtnPositive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 162
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TipsBubble$1;->this$0:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TipsBubble;->mBtnPositive:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 163
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TipsBubble$1;->this$0:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TipsBubble;->mPos:Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/TipsBubble$1;->this$0:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TipsBubble;->mPos:Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;

    invoke-interface {v1}, Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;->onClick()V

    goto :goto_0

    .line 167
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TipsBubble$1;->this$0:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TipsBubble;->mBtnNegative:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 168
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TipsBubble$1;->this$0:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TipsBubble;->mBtnNegative:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 169
    iget-object v1, p0, Lcom/htc/android/htcime/ui/TipsBubble$1;->this$0:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TipsBubble;->mNeg:Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/TipsBubble$1;->this$0:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TipsBubble;->mNeg:Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;

    invoke-interface {v1}, Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;->onClick()V

    goto :goto_0

    .line 173
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
