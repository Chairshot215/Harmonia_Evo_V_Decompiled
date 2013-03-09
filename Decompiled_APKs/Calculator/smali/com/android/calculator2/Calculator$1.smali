.class Lcom/android/calculator2/Calculator$1;
.super Ljava/lang/Object;
.source "Calculator.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calculator2/Calculator;->findViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/Calculator;


# direct methods
.method constructor <init>(Lcom/android/calculator2/Calculator;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/calculator2/Calculator$1;->this$0:Lcom/android/calculator2/Calculator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/calculator2/Calculator$1;->this$0:Lcom/android/calculator2/Calculator;

    #getter for: Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;
    invoke-static {v0}, Lcom/android/calculator2/Calculator;->access$100(Lcom/android/calculator2/Calculator;)Lcom/android/calculator2/History;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calculator2/History;->clear()V

    .line 83
    iget-object v0, p0, Lcom/android/calculator2/Calculator$1;->this$0:Lcom/android/calculator2/Calculator;

    const v1, 0x7f080003

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 84
    const/4 v0, 0x1

    return v0
.end method
