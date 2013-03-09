.class public Lcom/android/mms/ui/ConversationHeaderView;
.super Landroid/widget/RelativeLayout;
.source "ConversationHeaderView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method private formatMessage(Lcom/android/mms/ui/ConversationHeader;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "ch"

    .prologue
    .line 94
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationHeader;->getFrom()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, name:Ljava/lang/String;
    const/16 v4, 0x3b

    const/16 v5, 0x2c

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, from:Ljava/lang/CharSequence;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 98
    .local v1, buf:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationHeader;->getMessageCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/mms/ui/ConversationHeader;->getMessageCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 102
    :cond_0
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 103
    .local v0, before:I
    return-object v1
.end method


# virtual methods
.method public setParent(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/mms/ui/ConversationHeaderView;->mParent:Landroid/view/ViewParent;

    .line 82
    return-void
.end method
