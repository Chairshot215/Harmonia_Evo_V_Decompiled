.class Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter$1;
.super Ljava/lang/Object;
.source "HandwritePatternToWord.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;

.field final synthetic val$positionId:I


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter$1;->this$1:Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;

    iput p2, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter$1;->val$positionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter$1;->this$1:Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;

    iget-object v0, v0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter;->this$0:Lcom/htc/android/htcime/util/HandwritePatternToWord;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    iget v1, p0, Lcom/htc/android/htcime/util/HandwritePatternToWord$GesturesAdapter$1;->val$positionId:I

    invoke-virtual {v0, p1, v1}, Lcom/htc/android/htcime/util/HandwritePatternToWord;->removeWordCommit(Landroid/widget/CheckBox;I)V

    .line 332
    return-void
.end method
