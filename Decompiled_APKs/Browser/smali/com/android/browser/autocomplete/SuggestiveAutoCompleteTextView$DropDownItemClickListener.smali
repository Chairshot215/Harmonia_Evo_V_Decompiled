.class Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$DropDownItemClickListener;
.super Ljava/lang/Object;
.source "SuggestiveAutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropDownItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$DropDownItemClickListener;->this$0:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 701
    invoke-direct {p0, p1}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$DropDownItemClickListener;-><init>(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$DropDownItemClickListener;->this$0:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;

    #calls: Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V
    invoke-static {v0, p2, p3, p4, p5}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->access$500(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;Landroid/view/View;IJ)V

    .line 705
    return-void
.end method
