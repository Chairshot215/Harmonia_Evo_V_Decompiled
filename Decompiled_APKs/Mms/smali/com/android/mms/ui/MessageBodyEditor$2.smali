.class Lcom/android/mms/ui/MessageBodyEditor$2;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"

# interfaces
.implements Lcom/android/mms/util/ResizeImageHandler$OnImageResizedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageBodyEditor;->addImageByURI(Landroid/net/Uri;)V
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
    .line 547
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$2;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageResized(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .parameter "resizedImage"
    .parameter "oriSrc"

    .prologue
    .line 551
    :try_start_0
    new-instance v1, Lcom/android/mms/model/ImageModel;

    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor$2;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Z)V

    .line 552
    .local v1, model:Lcom/android/mms/model/ImageModel;
    invoke-virtual {v1, p2}, Lcom/android/mms/model/ImageModel;->setSrc(Ljava/lang/String;)V

    .line 553
    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor$2;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v2, v1}, Lcom/android/mms/ui/MessageBodyEditor;->addMedia(Lcom/android/mms/model/MediaModel;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    .end local v1           #model:Lcom/android/mms/model/ImageModel;
    :goto_0
    return-void

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, e:Lcom/google/android/mms/MmsException;
    iget-object v2, p0, Lcom/android/mms/ui/MessageBodyEditor$2;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageBodyEditor$2;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090162

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
