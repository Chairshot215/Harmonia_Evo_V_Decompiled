.class Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$2;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"

# interfaces
.implements Lcom/android/mms/view/EditableMediaView$OnRemoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;->create(Landroid/content/Context;Lcom/android/mms/model/MediaModel;)Lcom/android/mms/view/EditableMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$2;->this$1:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemove(Lcom/android/mms/model/MediaModel;)V
    .locals 1
    .parameter "media"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$2;->this$1:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

    iget-object v0, v0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageBodyEditor;->removeMedia(Lcom/android/mms/model/MediaModel;)V

    .line 367
    return-void
.end method
