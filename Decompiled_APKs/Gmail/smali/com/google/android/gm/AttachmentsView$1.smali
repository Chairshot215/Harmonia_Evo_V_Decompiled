.class Lcom/google/android/gm/AttachmentsView$1;
.super Ljava/lang/Object;
.source "AttachmentsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/AttachmentsView;->addAttachment(Lcom/google/android/gm/provider/Gmail$Attachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/AttachmentsView;

.field final synthetic val$attachment:Lcom/google/android/gm/provider/Gmail$Attachment;

.field final synthetic val$attachmentView:Lcom/google/android/gm/AttachmentComposeView;


# direct methods
.method constructor <init>(Lcom/google/android/gm/AttachmentsView;Lcom/google/android/gm/AttachmentComposeView;Lcom/google/android/gm/provider/Gmail$Attachment;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/gm/AttachmentsView$1;->this$0:Lcom/google/android/gm/AttachmentsView;

    iput-object p2, p0, Lcom/google/android/gm/AttachmentsView$1;->val$attachmentView:Lcom/google/android/gm/AttachmentComposeView;

    iput-object p3, p0, Lcom/google/android/gm/AttachmentsView$1;->val$attachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gm/AttachmentsView$1;->this$0:Lcom/google/android/gm/AttachmentsView;

    iget-object v1, p0, Lcom/google/android/gm/AttachmentsView$1;->val$attachmentView:Lcom/google/android/gm/AttachmentComposeView;

    iget-object v2, p0, Lcom/google/android/gm/AttachmentsView$1;->val$attachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/AttachmentsView;->deleteAttachment(Lcom/google/android/gm/AttachmentComposeView;Lcom/google/android/gm/provider/Gmail$Attachment;)V

    .line 56
    return-void
.end method
