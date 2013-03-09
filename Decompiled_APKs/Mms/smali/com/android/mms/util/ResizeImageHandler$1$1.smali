.class Lcom/android/mms/util/ResizeImageHandler$1$1;
.super Ljava/lang/Object;
.source "ResizeImageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/ResizeImageHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/util/ResizeImageHandler$1;

.field final synthetic val$image1:Lcom/android/mms/ui/UriImage;

.field final synthetic val$result:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/util/ResizeImageHandler$1;Landroid/net/Uri;Lcom/android/mms/ui/UriImage;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/mms/util/ResizeImageHandler$1$1;->this$1:Lcom/android/mms/util/ResizeImageHandler$1;

    iput-object p2, p0, Lcom/android/mms/util/ResizeImageHandler$1$1;->val$result:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/util/ResizeImageHandler$1$1;->val$image1:Lcom/android/mms/ui/UriImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/mms/util/ResizeImageHandler$1$1;->this$1:Lcom/android/mms/util/ResizeImageHandler$1;

    iget-object v0, v0, Lcom/android/mms/util/ResizeImageHandler$1;->this$0:Lcom/android/mms/util/ResizeImageHandler;

    #getter for: Lcom/android/mms/util/ResizeImageHandler;->mImageResizedListener:Lcom/android/mms/util/ResizeImageHandler$OnImageResizedListener;
    invoke-static {v0}, Lcom/android/mms/util/ResizeImageHandler;->access$600(Lcom/android/mms/util/ResizeImageHandler;)Lcom/android/mms/util/ResizeImageHandler$OnImageResizedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/ResizeImageHandler$1$1;->val$result:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/util/ResizeImageHandler$1$1;->val$image1:Lcom/android/mms/ui/UriImage;

    invoke-virtual {v2}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/mms/util/ResizeImageHandler$OnImageResizedListener;->onImageResized(Landroid/net/Uri;Ljava/lang/String;)V

    .line 203
    return-void
.end method
