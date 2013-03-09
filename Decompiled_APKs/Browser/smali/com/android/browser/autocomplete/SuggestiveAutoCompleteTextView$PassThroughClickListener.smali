.class Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PassThroughClickListener;
.super Ljava/lang/Object;
.source "SuggestiveAutoCompleteTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughClickListener"
.end annotation


# instance fields
.field private mWrapped:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 712
    iput-object p1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PassThroughClickListener;->this$0:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 712
    invoke-direct {p0, p1}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PassThroughClickListener;-><init>(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 712
    iput-object p1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PassThroughClickListener;->this$0:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;

    #calls: Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->onClickImpl()V
    invoke-static {v0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->access$600(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;)V

    .line 721
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 722
    :cond_0
    return-void
.end method
