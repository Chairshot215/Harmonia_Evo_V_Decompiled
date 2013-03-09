.class Lcom/android/mms/view/impl/MultimediaMessageViewImpl$2;
.super Ljava/lang/Object;
.source "MultimediaMessageViewImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/view/impl/MultimediaMessageViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$2;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 414
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$2;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextViewLinkOnClick:Z
    invoke-static {v1}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->access$100(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$2;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    .line 416
    .local v0, thisV:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;
    iget-object v1, v0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->callerCache:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->perfromListItemClick(Landroid/view/View;)Z

    .line 419
    .end local v0           #thisV:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$2;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextViewLinkOnClick:Z
    invoke-static {v1, v2}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->access$102(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;Z)Z

    .line 420
    return-void
.end method
