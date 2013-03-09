.class Lcom/android/mms/view/impl/EditableMediaViewImpl$1;
.super Ljava/lang/Object;
.source "EditableMediaViewImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/view/impl/EditableMediaViewImpl;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/view/impl/EditableMediaViewImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/EditableMediaViewImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl$1;->this$0:Lcom/android/mms/view/impl/EditableMediaViewImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl$1;->this$0:Lcom/android/mms/view/impl/EditableMediaViewImpl;

    #getter for: Lcom/android/mms/view/impl/EditableMediaViewImpl;->mOnPreviewListener:Lcom/android/mms/view/EditableMediaView$OnPreviewListener;
    invoke-static {v0}, Lcom/android/mms/view/impl/EditableMediaViewImpl;->access$000(Lcom/android/mms/view/impl/EditableMediaViewImpl;)Lcom/android/mms/view/EditableMediaView$OnPreviewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl$1;->this$0:Lcom/android/mms/view/impl/EditableMediaViewImpl;

    #getter for: Lcom/android/mms/view/impl/EditableMediaViewImpl;->mOnPreviewListener:Lcom/android/mms/view/EditableMediaView$OnPreviewListener;
    invoke-static {v0}, Lcom/android/mms/view/impl/EditableMediaViewImpl;->access$000(Lcom/android/mms/view/impl/EditableMediaViewImpl;)Lcom/android/mms/view/EditableMediaView$OnPreviewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/view/impl/EditableMediaViewImpl$1;->this$0:Lcom/android/mms/view/impl/EditableMediaViewImpl;

    iget-object v1, v1, Lcom/android/mms/view/impl/EditableMediaViewImpl;->mMedia:Lcom/android/mms/model/MediaModel;

    invoke-interface {v0, v1}, Lcom/android/mms/view/EditableMediaView$OnPreviewListener;->onPreview(Lcom/android/mms/model/MediaModel;)V

    .line 141
    :cond_0
    return-void
.end method
