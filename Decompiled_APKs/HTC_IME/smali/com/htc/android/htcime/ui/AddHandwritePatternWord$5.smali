.class Lcom/htc/android/htcime/ui/AddHandwritePatternWord$5;
.super Ljava/lang/Object;
.source "AddHandwritePatternWord.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$5;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$5;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    #getter for: Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mStrokeView:Lcom/htc/android/htcime/ui/PatternStrokeView;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->access$000(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;)Lcom/htc/android/htcime/ui/PatternStrokeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/PatternStrokeView;->clear()V

    .line 229
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$5;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    #getter for: Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mGestureName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->access$400(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$5;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$5;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->access$500(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;Ljava/lang/String;)V

    .line 233
    :goto_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$5;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->finish()V

    .line 234
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$5;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$5;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->access$500(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;Ljava/lang/String;)V

    goto :goto_0
.end method
