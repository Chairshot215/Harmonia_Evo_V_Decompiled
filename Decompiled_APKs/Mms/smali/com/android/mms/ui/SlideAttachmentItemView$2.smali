.class Lcom/android/mms/ui/SlideAttachmentItemView$2;
.super Ljava/lang/Object;
.source "SlideAttachmentItemView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 152
    iput-object p1, p0, Lcom/android/mms/ui/SlideAttachmentItemView$2;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    iput-object p2, p0, Lcom/android/mms/ui/SlideAttachmentItemView$2;->val$audio:Lcom/android/mms/model/AudioModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView$2;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentItemView$2;->val$audio:Lcom/android/mms/model/AudioModel;

    const/4 v2, 0x0

    #calls: Lcom/android/mms/ui/SlideAttachmentItemView;->showActionList(ILcom/android/mms/model/MediaModel;Landroid/net/Uri;)V
    invoke-static {v0, v3, v1, v2}, Lcom/android/mms/ui/SlideAttachmentItemView;->access$100(Lcom/android/mms/ui/SlideAttachmentItemView;ILcom/android/mms/model/MediaModel;Landroid/net/Uri;)V

    .line 155
    return v3
.end method
