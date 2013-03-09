.class Lcom/android/mms/ui/SlideAttachmentItemView$1;
.super Ljava/lang/Object;
.source "SlideAttachmentItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideAttachmentItemView;->setAudio(Lcom/android/mms/model/AudioModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

.field final synthetic val$audio:Lcom/android/mms/model/AudioModel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideAttachmentItemView;Lcom/android/mms/model/AudioModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/mms/ui/SlideAttachmentItemView$1;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    iput-object p2, p0, Lcom/android/mms/ui/SlideAttachmentItemView$1;->val$audio:Lcom/android/mms/model/AudioModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView$1;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView$1;->val$audio:Lcom/android/mms/model/AudioModel;

    #calls: Lcom/android/mms/ui/SlideAttachmentItemView;->onClickHandler(ILcom/android/mms/model/MediaModel;)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SlideAttachmentItemView;->access$000(Lcom/android/mms/ui/SlideAttachmentItemView;ILcom/android/mms/model/MediaModel;)V

    .line 149
    return-void
.end method
