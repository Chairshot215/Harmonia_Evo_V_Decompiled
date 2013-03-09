.class Lcom/android/mms/ui/SlideAttachmentView$1;
.super Ljava/lang/Object;
.source "SlideAttachmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideAttachmentView;->setVideo(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideAttachmentView;

.field final synthetic val$video:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideAttachmentView;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/mms/ui/SlideAttachmentView$1;->this$0:Lcom/android/mms/ui/SlideAttachmentView;

    iput-object p2, p0, Lcom/android/mms/ui/SlideAttachmentView$1;->val$video:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 193
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentView$1;->val$video:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideAttachmentView$1;->this$0:Lcom/android/mms/ui/SlideAttachmentView;

    #getter for: Lcom/android/mms/ui/SlideAttachmentView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/SlideAttachmentView;->access$000(Lcom/android/mms/ui/SlideAttachmentView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
