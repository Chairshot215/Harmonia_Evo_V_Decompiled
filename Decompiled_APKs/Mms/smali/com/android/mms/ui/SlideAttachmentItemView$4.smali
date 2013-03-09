.class Lcom/android/mms/ui/SlideAttachmentItemView$4;
.super Ljava/lang/Object;
.source "SlideAttachmentItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideAttachmentItemView;->setImage(Ljava/lang/String;Lcom/android/mms/model/ImageModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

.field final synthetic val$media:Lcom/android/mms/model/ImageModel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideAttachmentItemView;Lcom/android/mms/model/ImageModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/mms/ui/SlideAttachmentItemView$4;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    iput-object p2, p0, Lcom/android/mms/ui/SlideAttachmentItemView$4;->val$media:Lcom/android/mms/model/ImageModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView$4;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView$4;->val$media:Lcom/android/mms/model/ImageModel;

    #calls: Lcom/android/mms/ui/SlideAttachmentItemView;->onClickHandler(ILcom/android/mms/model/MediaModel;)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SlideAttachmentItemView;->access$000(Lcom/android/mms/ui/SlideAttachmentItemView;ILcom/android/mms/model/MediaModel;)V

    .line 328
    return-void
.end method
