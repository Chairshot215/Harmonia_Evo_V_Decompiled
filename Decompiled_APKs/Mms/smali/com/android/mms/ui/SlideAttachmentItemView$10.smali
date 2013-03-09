.class Lcom/android/mms/ui/SlideAttachmentItemView$10;
.super Ljava/lang/Object;
.source "SlideAttachmentItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideAttachmentItemView;->setVCard(Ljava/lang/String;ILjava/lang/String;JLcom/google/android/mms/pdu/PduPart;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

.field final synthetic val$msgID:J

.field final synthetic val$part:Lcom/google/android/mms/pdu/PduPart;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideAttachmentItemView;JLcom/google/android/mms/pdu/PduPart;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/mms/ui/SlideAttachmentItemView$10;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    iput-wide p2, p0, Lcom/android/mms/ui/SlideAttachmentItemView$10;->val$msgID:J

    iput-object p4, p0, Lcom/android/mms/ui/SlideAttachmentItemView$10;->val$part:Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/mms/ui/SlideAttachmentItemView$10;->this$0:Lcom/android/mms/ui/SlideAttachmentItemView;

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/android/mms/ui/SlideAttachmentItemView$10;->val$msgID:J

    iget-object v4, p0, Lcom/android/mms/ui/SlideAttachmentItemView$10;->val$part:Lcom/google/android/mms/pdu/PduPart;

    #calls: Lcom/android/mms/ui/SlideAttachmentItemView;->onClickHandler(IJLcom/google/android/mms/pdu/PduPart;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/SlideAttachmentItemView;->access$600(Lcom/android/mms/ui/SlideAttachmentItemView;IJLcom/google/android/mms/pdu/PduPart;)V

    .line 540
    return-void
.end method
