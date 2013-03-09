.class Lcom/android/mms/ui/MessageBodyEditor$RemoveMessageListener;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageBodyEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveMessageListener"
.end annotation


# instance fields
.field private mMedia:Lcom/android/mms/model/MediaModel;

.field final synthetic this$0:Lcom/android/mms/ui/MessageBodyEditor;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/model/MediaModel;)V
    .locals 0
    .parameter
    .parameter "media"

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$RemoveMessageListener;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p2, p0, Lcom/android/mms/ui/MessageBodyEditor$RemoveMessageListener;->mMedia:Lcom/android/mms/model/MediaModel;

    .line 403
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$RemoveMessageListener;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$RemoveMessageListener;->mMedia:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->removeMedia(Lcom/android/mms/model/MediaModel;)V

    .line 407
    return-void
.end method
