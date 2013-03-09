.class Lcom/android/mms/ui/MessageBodyEditor$6;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageBodyEditor;->presentMedia(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bVCard:Z

.field mMedia:Lcom/android/mms/model/MediaModel;

.field final synthetic this$0:Lcom/android/mms/ui/MessageBodyEditor;

.field final synthetic val$media:Lcom/android/mms/model/MediaModel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/model/MediaModel;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2035
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$6;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iput-object p2, p0, Lcom/android/mms/ui/MessageBodyEditor$6;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2036
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$6;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageBodyEditor$6;->bVCard:Z

    .line 2037
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$6;->val$media:Lcom/android/mms/model/MediaModel;

    iput-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$6;->mMedia:Lcom/android/mms/model/MediaModel;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2039
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBodyEditor$6;->bVCard:Z

    if-eqz v0, :cond_1

    .line 2040
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$6;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$6;->mMedia:Lcom/android/mms/model/MediaModel;

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->previewVCard(Lcom/android/mms/model/MediaModel;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$800(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/model/MediaModel;)V

    .line 2045
    :cond_0
    :goto_0
    return-void

    .line 2041
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$6;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2042
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$6;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$6;->mMedia:Lcom/android/mms/model/MediaModel;

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->previewVCalendar(Lcom/android/mms/model/MediaModel;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$900(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/model/MediaModel;)V

    goto :goto_0

    .line 2043
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$6;->val$media:Lcom/android/mms/model/MediaModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2044
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$6;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget-object v1, p0, Lcom/android/mms/ui/MessageBodyEditor$6;->mMedia:Lcom/android/mms/model/MediaModel;

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->previewLocation(Lcom/android/mms/model/MediaModel;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$1000(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/model/MediaModel;)V

    goto :goto_0
.end method
