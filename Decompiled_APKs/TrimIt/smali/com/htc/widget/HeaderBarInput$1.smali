.class Lcom/htc/widget/HeaderBarInput$1;
.super Ljava/lang/Object;
.source "HeaderBarInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HeaderBarInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HeaderBarInput;


# direct methods
.method constructor <init>(Lcom/htc/widget/HeaderBarInput;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/htc/widget/HeaderBarInput$1;->this$0:Lcom/htc/widget/HeaderBarInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput$1;->this$0:Lcom/htc/widget/HeaderBarInput;

    #getter for: Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/htc/widget/HeaderBarInput;->access$000(Lcom/htc/widget/HeaderBarInput;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/htc/widget/HeaderBarInput$1;->this$0:Lcom/htc/widget/HeaderBarInput;

    #getter for: Lcom/htc/widget/HeaderBarInput;->autoTextView:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/htc/widget/HeaderBarInput;->access$000(Lcom/htc/widget/HeaderBarInput;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_0
    return-void
.end method
