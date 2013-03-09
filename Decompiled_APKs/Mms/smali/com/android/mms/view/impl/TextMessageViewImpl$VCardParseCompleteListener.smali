.class Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;
.super Ljava/lang/Object;
.source "TextMessageViewImpl.java"

# interfaces
.implements Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/view/impl/TextMessageViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VCardParseCompleteListener"
.end annotation


# instance fields
.field final mMessageToken:Lcom/android/mms/msg/TextMessage;

.field final mThis:Lcom/android/mms/view/impl/TextMessageViewImpl;

.field mThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/TextMessageViewImpl;Lcom/android/mms/view/impl/TextMessageViewImpl;Lcom/android/mms/msg/TextMessage;)V
    .locals 1
    .parameter
    .parameter "impl"
    .parameter "msg"

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mThread:Ljava/lang/Thread;

    .line 486
    iput-object p3, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mMessageToken:Lcom/android/mms/msg/TextMessage;

    .line 487
    iput-object p2, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mThis:Lcom/android/mms/view/impl/TextMessageViewImpl;

    .line 488
    return-void
.end method


# virtual methods
.method public onVCardParseComplete(ZLcom/android/vcard/VCardEntry;)V
    .locals 6
    .parameter "bSuccess"
    .parameter "struct"

    .prologue
    .line 491
    if-nez p1, :cond_0

    .line 492
    const-string v3, "kelvin"

    const-string v4, "parse vcard fail."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v3, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    const/4 v4, 0x0

    #setter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->mVcard:[B
    invoke-static {v3, v4}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$002(Lcom/android/mms/view/impl/TextMessageViewImpl;[B)[B

    .line 549
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v3, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mThis:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;
    invoke-static {v3}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$100(Lcom/android/mms/view/impl/TextMessageViewImpl;)Lcom/android/mms/msg/TextMessage;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mMessageToken:Lcom/android/mms/msg/TextMessage;

    if-eq v3, v4, :cond_1

    .line 497
    const-string v3, "kelvin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not match!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mMessageToken:Lcom/android/mms/msg/TextMessage;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mThis:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->mMessageItem:Lcom/android/mms/msg/TextMessage;
    invoke-static {v5}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$100(Lcom/android/mms/view/impl/TextMessageViewImpl;)Lcom/android/mms/msg/TextMessage;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 501
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 502
    .local v1, builder:Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #calls: Lcom/android/mms/view/impl/TextMessageViewImpl;->setVcardInfo(Lcom/android/vcard/VCardEntry;Landroid/text/SpannableStringBuilder;)V
    invoke-static {v3, p2, v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$300(Lcom/android/mms/view/impl/TextMessageViewImpl;Lcom/android/vcard/VCardEntry;Landroid/text/SpannableStringBuilder;)V

    .line 504
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mThis:Lcom/android/mms/view/impl/TextMessageViewImpl;

    iget-object v3, v3, Lcom/android/mms/view/impl/TextMessageViewImpl;->mFromSpan:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 506
    .local v0, buffer:Landroid/text/SpannableStringBuilder;
    move-object v2, v1

    .line 508
    .local v2, vCardSb:Landroid/text/SpannableStringBuilder;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener$1;-><init>(Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;Landroid/text/SpannableStringBuilder;Landroid/text/SpannableStringBuilder;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mThread:Ljava/lang/Thread;

    .line 532
    iget-object v3, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$VCardParseCompleteListener;->mThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
