.class Lcom/android/mms/view/impl/TextMessageViewImpl$3;
.super Ljava/lang/Object;
.source "TextMessageViewImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/view/impl/TextMessageViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/TextMessageViewImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$3;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 689
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$3;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextViewLinkOnClick:Z
    invoke-static {v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$700(Lcom/android/mms/view/impl/TextMessageViewImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$3;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    .line 692
    .local v0, thisV:Lcom/android/mms/view/impl/TextMessageViewImpl;
    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$200(Lcom/android/mms/view/impl/TextMessageViewImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 693
    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$200(Lcom/android/mms/view/impl/TextMessageViewImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->perfromListItemClick(Landroid/view/View;)Z

    .line 696
    .end local v0           #thisV:Lcom/android/mms/view/impl/TextMessageViewImpl;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$3;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextViewLinkOnClick:Z
    invoke-static {v1, v2}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$702(Lcom/android/mms/view/impl/TextMessageViewImpl;Z)Z

    .line 697
    return-void
.end method
