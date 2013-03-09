.class Lcom/android/mms/ui/SlideAttachmentItemView$6;
.super Ljava/lang/Object;
.source "SlideAttachmentItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideAttachmentItemView;->setVideo(Lcom/android/mms/model/VideoModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

.field final synthetic val$video:Lcom/android/mms/model/VideoModel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideAttachmentItemView;Lcom/android/mms/model/VideoModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/mms/ui/SlideAttachmentItemView$6;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    iput-object p2, p0, Lcom/android/mms/ui/SlideAttachmentItemView$6;->val$video:Lcom/android/mms/model/VideoModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView$6;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView$6;->val$video:Lcom/android/mms/model/VideoModel;

    #calls: Lcom/android/mms/ui/SlideAttachmentItemView;->onClickHandler(ILcom/android/mms/model/MediaModel;)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SlideAttachmentItemView;->access$000(Lcom/android/mms/ui/SlideAttachmentItemView;ILcom/android/mms/model/MediaModel;)V

    .line 434
    return-void
.end method
