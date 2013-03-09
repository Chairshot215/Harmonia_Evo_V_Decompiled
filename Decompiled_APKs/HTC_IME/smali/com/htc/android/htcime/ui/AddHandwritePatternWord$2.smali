.class Lcom/htc/android/htcime/ui/AddHandwritePatternWord$2;
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
    .line 153
    iput-object p1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$2;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$2;->this$0:Lcom/htc/android/htcime/ui/AddHandwritePatternWord;

    #getter for: Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mStrokeView:Lcom/htc/android/htcime/ui/PatternStrokeView;
    invoke-static {v0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->access$000(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;)Lcom/htc/android/htcime/ui/PatternStrokeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/PatternStrokeView;->clear()V

    .line 156
    return-void
.end method
