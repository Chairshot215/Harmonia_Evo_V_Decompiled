.class Lcom/android/mms/ui/MediaPicker$1;
.super Ljava/lang/Object;
.source "MediaPicker.java"

# interfaces
.implements Lcom/android/mms/util/ResizeImageHandler$OnImageResizedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MediaPicker;->makeNewImageCommon(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/mms/model/ImageModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MediaPicker;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MediaPicker;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/mms/ui/MediaPicker$1;->this$0:Lcom/android/mms/ui/MediaPicker;

    iput-object p2, p0, Lcom/android/mms/ui/MediaPicker$1;->val$type:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageResized(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .parameter "resizedImage"
    .parameter "oriSrc"

    .prologue
    .line 321
    iget-object v4, p0, Lcom/android/mms/ui/MediaPicker$1;->this$0:Lcom/android/mms/ui/MediaPicker;

    #getter for: Lcom/android/mms/ui/MediaPicker;->mCtx:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/MediaPicker;->access$000(Lcom/android/mms/ui/MediaPicker;)Landroid/content/Context;

    move-result-object v0

    .line 322
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 326
    .local v3, r:Landroid/content/res/Resources;
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/MediaPicker$1;->this$0:Lcom/android/mms/ui/MediaPicker;

    iget-object v5, p0, Lcom/android/mms/ui/MediaPicker$1;->val$type:Ljava/lang/String;

    invoke-virtual {v4, p1, v5}, Lcom/android/mms/ui/MediaPicker;->makeNewImage(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/mms/model/ImageModel;

    move-result-object v2

    .line 328
    .local v2, image:Lcom/android/mms/model/ImageModel;
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MediaPicker$1;->this$0:Lcom/android/mms/ui/MediaPicker;

    #getter for: Lcom/android/mms/ui/MediaPicker;->mMediaPickedListener:Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;
    invoke-static {v4}, Lcom/android/mms/ui/MediaPicker;->access$100(Lcom/android/mms/ui/MediaPicker;)Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 329
    invoke-virtual {v2, p2}, Lcom/android/mms/model/ImageModel;->setSrc(Ljava/lang/String;)V

    .line 330
    iget-object v4, p0, Lcom/android/mms/ui/MediaPicker$1;->this$0:Lcom/android/mms/ui/MediaPicker;

    #getter for: Lcom/android/mms/ui/MediaPicker;->mMediaPickedListener:Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;
    invoke-static {v4}, Lcom/android/mms/ui/MediaPicker;->access$100(Lcom/android/mms/ui/MediaPicker;)Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/mms/ui/MediaPicker$OnMediaPickedListener;->onMediaPicked(Lcom/android/mms/model/MediaModel;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v2           #image:Lcom/android/mms/model/ImageModel;
    :cond_0
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, e:Lcom/google/android/mms/MmsException;
    const v4, 0x7f090162

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
