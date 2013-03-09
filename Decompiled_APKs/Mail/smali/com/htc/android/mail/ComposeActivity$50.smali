.class Lcom/htc/android/mail/ComposeActivity$50;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 6613
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$50;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 6615
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$50;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$50;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->edit_cc:Landroid/widget/IMEAutoCompleteTextView;

    #calls: Lcom/htc/android/mail/ComposeActivity;->showAutoCompleteButton(Landroid/widget/IMEAutoCompleteTextView;I)V
    invoke-static {v0, v1, p3}, Lcom/htc/android/mail/ComposeActivity;->access$7800(Lcom/htc/android/mail/ComposeActivity;Landroid/widget/IMEAutoCompleteTextView;I)V

    .line 6616
    return-void
.end method
