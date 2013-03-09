.class Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;
.super Ljava/lang/Object;
.source "TextMessageViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->onVCardParseComplete(ZLcom/android/vcard/VCardEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

.field final synthetic val$buffer:Landroid/text/SpannableStringBuilder;

.field final synthetic val$vCardSb:Landroid/text/SpannableStringBuilder;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;->this$1:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    iput-object p2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;->val$buffer:Landroid/text/SpannableStringBuilder;

    iput-object p3, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;->val$vCardSb:Landroid/text/SpannableStringBuilder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;->this$1:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    iget-object v0, v0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mThis:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;
    invoke-static {v0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$100(Lcom/android/mms/view/impl/TextMessageViewImpl;)Lcom/android/mms/msg/TextMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;->this$1:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    iget-object v1, v1, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mMessageToken:Lcom/android/mms/msg/TextMessage;

    if-ne v0, v1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;->this$1:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    iget-object v0, v0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mThis:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$400(Lcom/android/mms/view/impl/TextMessageViewImpl;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1$1;

    invoke-direct {v1, p0}, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1$1;-><init>(Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 530
    :cond_0
    return-void
.end method
