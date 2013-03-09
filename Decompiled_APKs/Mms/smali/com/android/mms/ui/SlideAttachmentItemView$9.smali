.class Lcom/android/mms/ui/SlideAttachmentItemView$9;
.super Ljava/lang/Object;
.source "SlideAttachmentItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideAttachmentItemView;->setAttachments(Landroid/net/Uri;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideAttachmentItemView;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/mms/ui/SlideAttachmentItemView$9;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    iput-object p2, p0, Lcom/android/mms/ui/SlideAttachmentItemView$9;->val$uri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 492
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentItemView$9;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    #getter for: Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->access$400(Lcom/android/mms/ui/SlideAttachmentItemView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mms/ui/ExtractObjectViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 494
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "VIEW_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentItemView$9;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 496
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 497
    iget-object v1, p0, Lcom/android/mms/ui/SlideAttachmentItemView$9;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    #getter for: Lcom/android/mms/ui/SlideAttachmentItemView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/SlideAttachmentItemView;->access$500(Lcom/android/mms/ui/SlideAttachmentItemView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 498
    return-void
.end method
