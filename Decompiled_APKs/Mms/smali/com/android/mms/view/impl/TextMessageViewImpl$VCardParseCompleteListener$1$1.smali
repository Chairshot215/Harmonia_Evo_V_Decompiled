.class Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1$1;
.super Ljava/lang/Object;
.source "TextMessageViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1$1;->this$2:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 513
    const-string v0, "kelvin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set textView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1$1;->this$2:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;

    iget-object v2, v2, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;->this$1:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    iget-object v2, v2, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mThis:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$400(Lcom/android/mms/view/impl/TextMessageViewImpl;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1$1;->this$2:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;

    iget-object v0, v0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;->this$1:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    iget-object v0, v0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mThis:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #calls: Lcom/android/mms/view/impl/TextMessageViewImpl;->setRightButtonListener()V
    invoke-static {v0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$500(Lcom/android/mms/view/impl/TextMessageViewImpl;)V

    .line 515
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1$1;->this$2:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;

    iget-object v0, v0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;->this$1:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    iget-object v0, v0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mThis:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$400(Lcom/android/mms/view/impl/TextMessageViewImpl;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1$1;->this$2:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;

    iget-object v1, v1, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;->val$buffer:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v1}, Lcom/android/mms/ui/MyLinkify;->parseLinks(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 517
    invoke-static {}, Lcom/android/mms/MmsApp;->isDisableOutgoingFrom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1$1;->this$2:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;

    iget-object v0, v0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;->this$1:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    iget-object v0, v0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;
    invoke-static {v0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$100(Lcom/android/mms/view/impl/TextMessageViewImpl;)Lcom/android/mms/msg/TextMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/msg/TextMessage;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->isMultipleNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1$1;->this$2:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;

    iget-object v0, v0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;->val$buffer:Landroid/text/SpannableStringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1$1;->this$2:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;

    iget-object v1, v1, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;->val$vCardSb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 525
    :goto_0
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1$1;->this$2:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;

    iget-object v0, v0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;->this$1:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    iget-object v0, v0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mThis:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$400(Lcom/android/mms/view/impl/TextMessageViewImpl;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1$1;->this$2:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;

    iget-object v1, v1, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;->val$buffer:Landroid/text/SpannableStringBuilder;

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 526
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1$1;->this$2:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;

    iget-object v0, v0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;->this$1:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;

    iget-object v0, v0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mThis:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$400(Lcom/android/mms/view/impl/TextMessageViewImpl;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    return-void

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1$1;->this$2:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;

    iget-object v0, v0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;->val$buffer:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1$1;->this$2:Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;

    iget-object v1, v1, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;->val$vCardSb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method
