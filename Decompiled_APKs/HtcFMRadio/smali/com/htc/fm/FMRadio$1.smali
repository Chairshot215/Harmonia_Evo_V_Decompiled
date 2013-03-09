.class Lcom/htc/fm/FMRadio$1;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMRadio;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/htc/fm/FMRadio$1;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 229
    iget-object v3, p0, Lcom/htc/fm/FMRadio$1;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mChachaPowerBtn:Landroid/widget/Button;
    invoke-static {v3}, Lcom/htc/fm/FMRadio;->access$000(Lcom/htc/fm/FMRadio;)Landroid/widget/Button;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 231
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 232
    .local v0, action:I
    if-nez v0, :cond_1

    .line 234
    invoke-static {v5}, Lcom/htc/fm/CommonControlWrapper;->getPowerIconID(I)I

    move-result v2

    .line 235
    .local v2, powerOnID:I
    iget-object v3, p0, Lcom/htc/fm/FMRadio$1;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mChachaPowerBtn:Landroid/widget/Button;
    invoke-static {v3}, Lcom/htc/fm/FMRadio;->access$000(Lcom/htc/fm/FMRadio;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v4, v2, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 243
    .end local v0           #action:I
    .end local v2           #powerOnID:I
    :cond_0
    :goto_0
    return v4

    .line 237
    .restart local v0       #action:I
    :cond_1
    if-eq v0, v5, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 239
    :cond_2
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/htc/fm/CommonControlWrapper;->getPowerIconID(I)I

    move-result v1

    .line 240
    .local v1, powerOffID:I
    iget-object v3, p0, Lcom/htc/fm/FMRadio$1;->this$0:Lcom/htc/fm/FMRadio;

    #getter for: Lcom/htc/fm/FMRadio;->mChachaPowerBtn:Landroid/widget/Button;
    invoke-static {v3}, Lcom/htc/fm/FMRadio;->access$000(Lcom/htc/fm/FMRadio;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method
