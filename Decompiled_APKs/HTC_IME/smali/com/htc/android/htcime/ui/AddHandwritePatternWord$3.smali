.class Lcom/htc/android/htcime/ui/AddHandwritePatternWord$3;
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
    .line 161
    iput-object p1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$3;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 165
    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$3;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    #getter for: Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->etPattern:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->access$100(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, gesName:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 168
    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$3;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->submitPattern(Ljava/lang/String;)V

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$3;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    #getter for: Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mStrokeView:Lcom/htc/android/htcime/ui/PatternStrokeView;
    invoke-static {v1}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->access$000(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;)Lcom/htc/android/htcime/ui/PatternStrokeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/PatternStrokeView;->clear()V

    .line 172
    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$3;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->finish()V

    .line 173
    return-void
.end method
