.class public Lcom/android/mms/view/MessageViewFactory;
.super Ljava/lang/Object;
.source "MessageViewFactory.java"


# static fields
.field public static final LEFT_BUBBLE_VIEW:I = 0x1

.field public static final RIGHT_BUBBLE_VIEW:I = 0x2


# instance fields
.field private final MERGE_BUBBLE_VIEW:I

.field private final NO_BUBBLE_VIEW:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private m_ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/view/MessageViewFactory;->NO_BUBBLE_VIEW:I

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/view/MessageViewFactory;->MERGE_BUBBLE_VIEW:I

    .line 102
    iput-object p1, p0, Lcom/android/mms/view/MessageViewFactory;->m_ctx:Landroid/content/Context;

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/view/MessageViewFactory;->mInflater:Landroid/view/LayoutInflater;

    .line 104
    return-void
.end method


# virtual methods
.method protected createMixedMultimediaMessageView(I)Lcom/android/mms/view/MessageView;
    .locals 4
    .parameter "viewType"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 107
    packed-switch p1, :pswitch_data_0

    .line 115
    iget-object v0, p0, Lcom/android/mms/view/MessageViewFactory;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001c

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    :goto_0
    return-object v0

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/view/MessageViewFactory;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001f

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/view/MessageViewFactory;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001d

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    goto :goto_0

    .line 113
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/view/MessageViewFactory;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001e

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected createNotificationView(I)Lcom/android/mms/view/MessageView;
    .locals 4
    .parameter "viewType"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mms/view/MessageViewFactory;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030028

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    return-object v0
.end method

.method protected createRelatedMultimediaMessageView(I)Lcom/android/mms/view/MessageView;
    .locals 4
    .parameter "viewType"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 129
    iget-object v0, p0, Lcom/android/mms/view/MessageViewFactory;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03002f

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    :goto_0
    return-object v0

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/view/MessageViewFactory;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030032

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/view/MessageViewFactory;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030030

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    goto :goto_0

    .line 127
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/view/MessageViewFactory;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030031

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected createTextMessageView(I)Lcom/android/mms/view/MessageView;
    .locals 4
    .parameter "viewType"

    .prologue
    .line 143
    packed-switch p1, :pswitch_data_0

    .line 154
    iget-object v0, p0, Lcom/android/mms/view/MessageViewFactory;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03003c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    :goto_0
    return-object v0

    .line 146
    :pswitch_0
    invoke-static {}, Lcom/android/mms/util/ViewCache;->getInstance()Lcom/android/mms/util/ViewCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/view/MessageViewFactory;->m_ctx:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x7f03003f

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/util/ViewCache;->get(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    goto :goto_0

    .line 149
    :pswitch_1
    invoke-static {}, Lcom/android/mms/util/ViewCache;->getInstance()Lcom/android/mms/util/ViewCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/view/MessageViewFactory;->m_ctx:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x7f03003d

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/util/ViewCache;->get(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    goto :goto_0

    .line 152
    :pswitch_2
    invoke-static {}, Lcom/android/mms/util/ViewCache;->getInstance()Lcom/android/mms/util/ViewCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/view/MessageViewFactory;->m_ctx:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x7f03003e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/util/ViewCache;->get(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected createTextMessageViewWithObj(I)Lcom/android/mms/view/MessageView;
    .locals 4
    .parameter "viewType"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 161
    packed-switch p1, :pswitch_data_0

    .line 169
    iget-object v0, p0, Lcom/android/mms/view/MessageViewFactory;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030040

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    :goto_0
    return-object v0

    .line 163
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/view/MessageViewFactory;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030043

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/view/MessageViewFactory;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030041

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    goto :goto_0

    .line 167
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/view/MessageViewFactory;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030042

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public createView(Lcom/android/mms/msg/AbstractMessage;)Lcom/android/mms/view/MessageView;
    .locals 7
    .parameter "msg"

    .prologue
    const v5, 0x7f0e008b

    .line 45
    const/4 v2, 0x0

    .line 46
    .local v2, viewType:I
    const/4 v1, 0x0

    .line 47
    .local v1, tempView:Lcom/android/mms/view/MessageView;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMergeLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    const/4 v2, 0x3

    .line 58
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isTextMessage()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 59
    invoke-virtual {p0, v2}, Lcom/android/mms/view/MessageViewFactory;->createTextMessageView(I)Lcom/android/mms/view/MessageView;

    move-result-object v1

    .line 80
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMergeLayout()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 94
    :cond_1
    :goto_2
    return-object v1

    .line 50
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportThreadDetailBubbleStyle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 52
    const/4 v2, 0x1

    goto :goto_0

    .line 54
    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isMultimediaMessage()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, p1

    .line 61
    check-cast v0, Lcom/android/mms/msg/MultimediaMessage;

    .line 62
    .local v0, mmi:Lcom/android/mms/msg/MultimediaMessage;
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isNotification()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 63
    invoke-virtual {p0, v2}, Lcom/android/mms/view/MessageViewFactory;->createNotificationView(I)Lcom/android/mms/view/MessageView;

    move-result-object v1

    goto :goto_1

    .line 64
    :cond_5
    invoke-virtual {v0}, Lcom/android/mms/msg/MultimediaMessage;->withMixedMessageBody()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 65
    invoke-virtual {p0, v2}, Lcom/android/mms/view/MessageViewFactory;->createMixedMultimediaMessageView(I)Lcom/android/mms/view/MessageView;

    move-result-object v1

    goto :goto_1

    .line 66
    :cond_6
    invoke-virtual {v0}, Lcom/android/mms/msg/MultimediaMessage;->withRelatedMessageBody()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 67
    invoke-virtual {p0, v2}, Lcom/android/mms/view/MessageViewFactory;->createRelatedMultimediaMessageView(I)Lcom/android/mms/view/MessageView;

    move-result-object v1

    goto :goto_1

    .line 70
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 73
    .end local v0           #mmi:Lcom/android/mms/msg/MultimediaMessage;
    :cond_8
    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isVvm()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 74
    invoke-virtual {p0, v2}, Lcom/android/mms/view/MessageViewFactory;->createTextMessageViewWithObj(I)Lcom/android/mms/view/MessageView;

    move-result-object v1

    goto :goto_1

    .line 78
    :cond_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 86
    :cond_a
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    move-object v3, v1

    .line 87
    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 88
    iget-object v4, p0, Lcom/android/mms/view/MessageViewFactory;->m_ctx:Landroid/content/Context;

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v5, "message_bg_left"

    const v6, 0x7f02016c

    invoke-static {v4, v3, v5, v6}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->changeBgDrawable(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public getFactoryContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/mms/view/MessageViewFactory;->m_ctx:Landroid/content/Context;

    return-object v0
.end method
