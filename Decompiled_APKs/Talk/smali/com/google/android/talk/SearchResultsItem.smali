.class public Lcom/google/android/talk/SearchResultsItem;
.super Landroid/widget/LinearLayout;
.source "SearchResultsItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/SearchResultsItem$1;
    }
.end annotation


# instance fields
.field private mDate:Landroid/widget/TextView;

.field private mPersonalLevel:Landroid/widget/ImageView;

.field private mSender:Landroid/widget/TextView;

.field private mSnippet:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f100088

    invoke-virtual {p0, v0}, Lcom/google/android/talk/SearchResultsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/talk/SearchResultsItem;->mSender:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f100073

    invoke-virtual {p0, v0}, Lcom/google/android/talk/SearchResultsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/talk/SearchResultsItem;->mTitle:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f100086

    invoke-virtual {p0, v0}, Lcom/google/android/talk/SearchResultsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/talk/SearchResultsItem;->mSnippet:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f100089

    invoke-virtual {p0, v0}, Lcom/google/android/talk/SearchResultsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/talk/SearchResultsItem;->mDate:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f100087

    invoke-virtual {p0, v0}, Lcom/google/android/talk/SearchResultsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/talk/SearchResultsItem;->mPersonalLevel:Landroid/widget/ImageView;

    .line 50
    return-void
.end method


# virtual methods
.method public final bind(Landroid/content/Context;Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;Z)V
    .locals 10
    .parameter "context"
    .parameter "cursor"
    .parameter "activated"

    .prologue
    .line 55
    iget-object v8, p0, Lcom/google/android/talk/SearchResultsItem;->mTitle:Landroid/widget/TextView;

    if-nez v8, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/google/android/talk/SearchResultsItem;->init()V

    .line 58
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->getAccount()Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, sender:Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/google/android/talk/SearchResultsItem;->mSender:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p2}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->getSubject()Ljava/lang/String;

    move-result-object v7

    .line 62
    .local v7, subject:Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/google/android/talk/SearchResultsItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p2}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->getSnippet()Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, snippet:Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/google/android/talk/SearchResultsItem;->mSnippet:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p2}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->getDateMs()J

    move-result-wide v0

    .line 68
    .local v0, dateMs:J
    invoke-virtual {p0}, Lcom/google/android/talk/SearchResultsItem;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v0, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 69
    .local v2, dateText:Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/google/android/talk/SearchResultsItem;->mDate:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p2}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->getPersonalLevel()Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

    move-result-object v4

    .line 72
    .local v4, personalLevel:Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;
    const/4 v3, 0x0

    .line 73
    .local v3, icon:I
    sget-object v8, Lcom/google/android/talk/SearchResultsItem$1;->$SwitchMap$com$google$android$talk$GmailProviderWrapper$PersonalLevel:[I

    invoke-virtual {v4}, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 86
    :goto_0
    iget-object v8, p0, Lcom/google/android/talk/SearchResultsItem;->mPersonalLevel:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    invoke-virtual {p0, p3}, Lcom/google/android/talk/SearchResultsItem;->setActivated(Z)V

    .line 89
    return-void

    .line 79
    :pswitch_0
    const v3, 0x7f02004b

    .line 80
    goto :goto_0

    .line 83
    :pswitch_1
    const v3, 0x7f02004a

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
