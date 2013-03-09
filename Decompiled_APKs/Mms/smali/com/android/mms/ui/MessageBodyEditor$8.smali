.class Lcom/android/mms/ui/MessageBodyEditor$8;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageBodyEditor;->presentSlide(Lcom/android/mms/model/SlideshowModel;IZ)V
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
    .line 2145
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$8;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 2147
    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$8;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$300(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor$8;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mSlideshowUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/mms/ui/MessageBodyEditor;->access$1500(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2148
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2149
    return-void
.end method
