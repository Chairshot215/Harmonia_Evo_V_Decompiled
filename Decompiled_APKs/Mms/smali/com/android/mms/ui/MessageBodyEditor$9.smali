.class Lcom/android/mms/ui/MessageBodyEditor$9;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageBodyEditor;->getOnViewClickListener(IZ)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mAudio:Z

.field final mPos:I

.field final synthetic this$0:Lcom/android/mms/ui/MessageBodyEditor;

.field final synthetic val$bAudio:Z

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageBodyEditor;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2276
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$9;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iput p2, p0, Lcom/android/mms/ui/MessageBodyEditor$9;->val$pos:I

    iput-boolean p3, p0, Lcom/android/mms/ui/MessageBodyEditor$9;->val$bAudio:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2277
    iget v0, p0, Lcom/android/mms/ui/MessageBodyEditor$9;->val$pos:I

    iput v0, p0, Lcom/android/mms/ui/MessageBodyEditor$9;->mPos:I

    .line 2278
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBodyEditor$9;->val$bAudio:Z

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageBodyEditor$9;->mAudio:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2280
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageBodyEditor$9;->val$bAudio:Z

    if-eqz v0, :cond_0

    .line 2281
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$9;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageBodyEditor$9;->mPos:I

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->playAudio(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$2000(Lcom/android/mms/ui/MessageBodyEditor;I)V

    .line 2284
    :goto_0
    return-void

    .line 2283
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageBodyEditor$9;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    iget v1, p0, Lcom/android/mms/ui/MessageBodyEditor$9;->mPos:I

    #calls: Lcom/android/mms/ui/MessageBodyEditor;->preivewImageVideo(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$2100(Lcom/android/mms/ui/MessageBodyEditor;I)V

    goto :goto_0
.end method
