.class Lcom/google/android/talk/fragments/SetStatusFragment$8;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;->setupPresencePopdown(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

.field final synthetic val$anchor:Landroid/view/View;

.field final synthetic val$custom:Z


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;ZLandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 932
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    iput-boolean p2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->val$custom:Z

    iput-object p3, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->val$anchor:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 935
    new-instance v2, Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v3}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 936
    .local v2, p:Landroid/widget/ListPopupWindow;
    iget-boolean v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->val$custom:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    #calls: Lcom/google/android/talk/fragments/SetStatusFragment;->makeCustomStatusItems(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    invoke-static {v3, v4}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$2200(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 940
    .local v1, items:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;>;"
    :goto_0
    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->val$anchor:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 941
    invoke-virtual {v2, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 942
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 944
    new-instance v3, Lcom/google/android/talk/fragments/SetStatusFragment$8$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/android/talk/fragments/SetStatusFragment$8$1;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment$8;Landroid/widget/ArrayAdapter;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 953
    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    #getter for: Lcom/google/android/talk/fragments/SetStatusFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$1900(Lcom/google/android/talk/fragments/SetStatusFragment;)Landroid/app/Activity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 955
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->val$anchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 957
    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->show()V

    .line 958
    return-void

    .line 936
    .end local v0           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #items:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;>;"
    :cond_0
    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    iget-object v4, p0, Lcom/google/android/talk/fragments/SetStatusFragment$8;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    #calls: Lcom/google/android/talk/fragments/SetStatusFragment;->makeDefaultStatusItems(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    invoke-static {v3, v4}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$2300(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    goto :goto_0
.end method
