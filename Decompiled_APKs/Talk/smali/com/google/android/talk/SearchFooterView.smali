.class public Lcom/google/android/talk/SearchFooterView;
.super Landroid/widget/LinearLayout;
.source "SearchFooterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/SearchFooterView$1;
    }
.end annotation


# instance fields
.field private mLoading:Landroid/view/View;

.field private mNetworkError:Landroid/view/View;

.field private mRetry:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;)V
    .locals 4
    .parameter "cursorStatus"
    .parameter "conversationCursor"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lcom/google/android/talk/SearchFooterView;->mRetry:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/google/android/talk/SearchFooterView$1;->$SwitchMap$com$google$android$talk$GmailProviderWrapper$CursorStatus:[I

    invoke-virtual {p1}, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 61
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 63
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/talk/SearchFooterView;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/google/android/talk/SearchFooterView;->mNetworkError:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 67
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/talk/SearchFooterView;->mNetworkError:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/google/android/talk/SearchFooterView;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/talk/GmailProviderWrapper$ConversationCursor;->retry()V

    .line 45
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 36
    const v0, 0x7f100083

    invoke-virtual {p0, v0}, Lcom/google/android/talk/SearchFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/SearchFooterView;->mLoading:Landroid/view/View;

    .line 37
    const v0, 0x7f100081

    invoke-virtual {p0, v0}, Lcom/google/android/talk/SearchFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/SearchFooterView;->mNetworkError:Landroid/view/View;

    .line 38
    const v0, 0x7f100082

    invoke-virtual {p0, v0}, Lcom/google/android/talk/SearchFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/SearchFooterView;->mRetry:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/google/android/talk/SearchFooterView;->mRetry:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/talk/SearchFooterView;->setBackgroundColor(I)V

    .line 41
    return-void
.end method
