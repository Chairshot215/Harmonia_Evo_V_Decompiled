.class Lcom/android/mms/ui/MessageBodyEditor$1;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageBodyEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageBodyEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageBodyEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$1;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 474
    const-string v1, "MessageBodyEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOnFocusChangeListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    if-eqz p2, :cond_0

    .line 478
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$1;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mMediaListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$500(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/widget/ListView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$1;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mMediaListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$500(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 480
    .local v0, sv:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method
