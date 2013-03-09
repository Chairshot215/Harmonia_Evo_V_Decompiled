.class Lcom/htc/feedback/ReportActivity$1;
.super Ljava/lang/Object;
.source "ReportActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/feedback/ReportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/feedback/ReportActivity;


# direct methods
.method constructor <init>(Lcom/htc/feedback/ReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/feedback/ReportActivity$1;->this$0:Lcom/htc/feedback/ReportActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/feedback/ReportActivity$1;->this$0:Lcom/htc/feedback/ReportActivity;

    #getter for: Lcom/htc/feedback/ReportActivity;->mDescEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/feedback/ReportActivity;->access$000(Lcom/htc/feedback/ReportActivity;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x24001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 80
    iget-object v0, p0, Lcom/htc/feedback/ReportActivity$1;->this$0:Lcom/htc/feedback/ReportActivity;

    #getter for: Lcom/htc/feedback/ReportActivity;->mDescEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/feedback/ReportActivity;->access$000(Lcom/htc/feedback/ReportActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 81
    const/4 v0, 0x1

    return v0
.end method
