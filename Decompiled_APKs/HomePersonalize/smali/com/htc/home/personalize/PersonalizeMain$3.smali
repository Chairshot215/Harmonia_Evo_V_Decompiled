.class Lcom/htc/home/personalize/PersonalizeMain$3;
.super Ljava/lang/Object;
.source "PersonalizeMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/PersonalizeMain;->enableSearchBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/PersonalizeMain;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$searchBox:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/PersonalizeMain;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Lcom/htc/home/personalize/PersonalizeMain$3;->this$0:Lcom/htc/home/personalize/PersonalizeMain;

    iput-object p2, p0, Lcom/htc/home/personalize/PersonalizeMain$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Lcom/htc/home/personalize/PersonalizeMain$3;->val$searchBox:Landroid/widget/AutoCompleteTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 780
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/home/personalize/PersonalizeMain$3;->val$searchBox:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 781
    return-void
.end method
