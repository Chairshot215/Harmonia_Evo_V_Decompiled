.class Lcom/android/mms/ui/SlideAttachmentItemView$5;
.super Ljava/lang/Object;
.source "SlideAttachmentItemView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 331
    iput-object p1, p0, Lcom/android/mms/ui/SlideAttachmentItemView$5;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    iput-object p2, p0, Lcom/android/mms/ui/SlideAttachmentItemView$5;->val$media:Lcom/android/mms/model/ImageModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView$5;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView$5;->val$media:Lcom/android/mms/model/ImageModel;

    const/4 v3, 0x0

    #calls: Lcom/android/mms/ui/SlideAttachmentItemView;->showActionList(ILcom/android/mms/model/MediaModel;Landroid/net/Uri;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/SlideAttachmentItemView;->access$100(Lcom/android/mms/ui/SlideAttachmentItemView;ILcom/android/mms/model/MediaModel;Landroid/net/Uri;)V

    .line 334
    const/4 v0, 0x1

    return v0
.end method
