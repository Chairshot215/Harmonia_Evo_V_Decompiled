.class Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;


# direct methods
.method constructor <init>(Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$1:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$1:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    iget-object v1, v1, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v1}, Landroid/widget/AutoCompleteTextView;->access$600(Landroid/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver$1;->this$1:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    iget-object v1, v1, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    #calls: Landroid/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V
    invoke-static {v1, v2}, Landroid/widget/AutoCompleteTextView;->access$700(Landroid/widget/AutoCompleteTextView;I)V

    :cond_0
    return-void
.end method
