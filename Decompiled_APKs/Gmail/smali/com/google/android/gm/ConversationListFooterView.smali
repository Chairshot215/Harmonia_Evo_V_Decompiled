.class public Lcom/google/android/gm/ConversationListFooterView;
.super Landroid/widget/LinearLayout;
.source "ConversationListFooterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ConversationListFooterView$1;
    }
.end annotation


# instance fields
.field private mErrorText:Landroid/widget/TextView;

.field private mLoading:Landroid/view/View;

.field private mNetworkError:Landroid/view/View;

.field private mRetry:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method private getTextForError(Lcom/google/android/gm/provider/Gmail$CursorError;)Ljava/lang/String;
    .locals 3
    .parameter "cursorError"

    .prologue
    .line 78
    sget-object v1, Lcom/google/android/gm/ConversationListFooterView$1;->$SwitchMap$com$google$android$gm$provider$Gmail$CursorError:[I

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$CursorError;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0144

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, errorString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 82
    .end local v0           #errorString:Ljava/lang/String;
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 85
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0142

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .restart local v0       #errorString:Ljava/lang/String;
    goto :goto_0

    .line 89
    .end local v0           #errorString:Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .restart local v0       #errorString:Ljava/lang/String;
    goto :goto_0

    .line 93
    .end local v0           #errorString:Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationListFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0143

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0       #errorString:Ljava/lang/String;
    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public bind(Lcom/google/android/gm/provider/Gmail$CursorStatus;Lcom/google/android/gm/provider/Gmail$CursorError;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)V
    .locals 4
    .parameter "cursorStatus"
    .parameter "cursorError"
    .parameter "conversationCursor"

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 51
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFooterView;->mRetry:Landroid/view/View;

    invoke-virtual {v2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    sget-object v2, Lcom/google/android/gm/ConversationListFooterView$1;->$SwitchMap$com$google$android$gm$provider$Gmail$CursorStatus:[I

    invoke-virtual {p1}, Lcom/google/android/gm/provider/Gmail$CursorStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 56
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 59
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFooterView;->mLoading:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFooterView;->mNetworkError:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 63
    :pswitch_2
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFooterView;->mNetworkError:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFooterView;->mErrorText:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/google/android/gm/ConversationListFooterView;->getTextForError(Lcom/google/android/gm/provider/Gmail$CursorError;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFooterView;->mLoading:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v2, p0, Lcom/google/android/gm/ConversationListFooterView;->mRetry:Landroid/view/View;

    sget-object v3, Lcom/google/android/gm/provider/Gmail$CursorError;->IO_ERROR:Lcom/google/android/gm/provider/Gmail$CursorError;

    if-ne p2, v3, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->retry()V

    .line 36
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 27
    const v0, 0x7f0f0049

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFooterView;->mLoading:Landroid/view/View;

    .line 28
    const v0, 0x7f0f0046

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFooterView;->mNetworkError:Landroid/view/View;

    .line 29
    const v0, 0x7f0f0048

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFooterView;->mRetry:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/google/android/gm/ConversationListFooterView;->mRetry:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const v0, 0x7f0f0047

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ConversationListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/ConversationListFooterView;->mErrorText:Landroid/widget/TextView;

    .line 32
    return-void
.end method
