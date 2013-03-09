.class Lcom/android/mms/ui/MessageEditorPanel;
.super Ljava/lang/Object;
.source "MessageEditorPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageEditorPanel"


# instance fields
.field lp_frame_land:Landroid/widget/FrameLayout$LayoutParams;

.field lp_frame_port:Landroid/widget/FrameLayout$LayoutParams;

.field lp_land:Landroid/widget/LinearLayout$LayoutParams;

.field lp_port:Landroid/widget/LinearLayout$LayoutParams;

.field mAttachContainer:Landroid/view/ViewGroup;

.field mAttachContainer2:Landroid/view/ViewGroup;

.field mAttachedBtn:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field mEditor:Landroid/view/View;

.field mEditorContainer:Landroid/view/ViewGroup;

.field mEditorPanelOnTouchListener:Landroid/view/View$OnTouchListener;

.field mIsOptionBtnExtend:Z

.field mReplyNumberIndicator:Landroid/widget/TextView;

.field mReplyNumberIndicatorSep:Landroid/view/View;

.field mSendButton:Landroid/view/View;

.field thisView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 6
    .parameter "context"

    .prologue
    const v5, 0x7f0b001e

    const v4, 0x7f0b001d

    const v3, 0x7f0b001c

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mIsOptionBtnExtend:Z

    .line 87
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditorPanel;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {}, Lcom/android/mms/util/ViewCache;->getInstance()Lcom/android/mms/util/ViewCache;

    move-result-object v0

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, 0x7f030008

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/mms/util/ViewCache;->get(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->thisView:Landroid/view/View;

    .line 92
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->findViews()V

    .line 96
    const/16 v0, 0xd2

    invoke-static {v0}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditorPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x17

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->lp_port:Landroid/widget/LinearLayout$LayoutParams;

    .line 98
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditorPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x21

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->lp_land:Landroid/widget/LinearLayout$LayoutParams;

    .line 116
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->setClickListener()V

    .line 119
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->setEditorPanelOnTouchListener()V

    .line 121
    return-void

    .line 101
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditorPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->lp_port:Landroid/widget/LinearLayout$LayoutParams;

    .line 102
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditorPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->lp_land:Landroid/widget/LinearLayout$LayoutParams;

    .line 104
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_0

    .line 106
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditorPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->lp_frame_port:Landroid/widget/FrameLayout$LayoutParams;

    .line 107
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditorPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->lp_frame_land:Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageEditorPanel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getEditorHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageEditorPanel;)Lcom/android/mms/ui/MessageBodyEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getMessageBodyEditor()Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    return-object v0
.end method

.method private findViews()V
    .locals 10

    .prologue
    const v9, 0x7f02017a

    const/4 v8, 0x7

    const/4 v7, 0x0

    .line 246
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->thisView:Landroid/view/View;

    const v4, 0x7f0e0037

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    .line 247
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v5

    const-string v6, "msg_button_notrans"

    invoke-static {v5, v6, v9}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLandscapeIMEbutton()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 251
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->thisView:Landroid/view/View;

    const v4, 0x7f0e003c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mSendButton:Landroid/view/View;

    .line 255
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v3

    if-nez v3, :cond_0

    .line 256
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mSendButton:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v5

    const-string v6, "msg_button_notrans"

    invoke-static {v5, v6, v9}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mSendButton:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mSendButton:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 267
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mSendButton:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 268
    .local v1, textLength:I
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mSendButton:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 269
    .local v0, textFontSize:F
    if-le v1, v8, :cond_4

    .line 270
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mSendButton:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/mms/ui/MessageEditorPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00fb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 279
    .end local v0           #textFontSize:F
    .end local v1           #textLength:I
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->thisView:Landroid/view/View;

    const v4, 0x7f0e0036

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachContainer:Landroid/view/ViewGroup;

    .line 280
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->thisView:Landroid/view/View;

    const v4, 0x7f0e0038

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachContainer2:Landroid/view/ViewGroup;

    .line 281
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->thisView:Landroid/view/View;

    const v4, 0x7f0e0032

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mEditorContainer:Landroid/view/ViewGroup;

    .line 282
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->thisView:Landroid/view/View;

    const v4, 0x7f0e0033

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mEditor:Landroid/view/View;

    .line 312
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->thisView:Landroid/view/View;

    const v4, 0x7f0e0034

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mReplyNumberIndicator:Landroid/widget/TextView;

    .line 313
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->thisView:Landroid/view/View;

    const v4, 0x7f0e0035

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mReplyNumberIndicatorSep:Landroid/view/View;

    .line 315
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextSizeChange()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getComposeMessageActivity()Lcom/android/mms/ui/ComposeMessageActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->isThreadMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 316
    invoke-static {}, Lcom/android/mms/util/TextSizeManager;->getInstance()Lcom/android/mms/util/TextSizeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/TextSizeManager;->getFontSize()I

    move-result v2

    .line 317
    .local v2, textSize:I
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mEditor:Landroid/view/View;

    check-cast v3, Lcom/android/mms/ui/MessageTextEditor;

    int-to-float v4, v2

    invoke-virtual {v3, v7, v4}, Lcom/android/mms/ui/MessageTextEditor;->setTextSize(IF)V

    .line 318
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mReplyNumberIndicator:Landroid/widget/TextView;

    int-to-float v4, v2

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 321
    .end local v2           #textSize:I
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessageEditorPanel;->showReplyIndicatorView(Z)V

    .line 324
    return-void

    .line 253
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->thisView:Landroid/view/View;

    const v4, 0x7f0e003b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mSendButton:Landroid/view/View;

    goto/16 :goto_0

    .line 272
    .restart local v0       #textFontSize:F
    .restart local v1       #textLength:I
    :cond_4
    if-ne v1, v8, :cond_1

    .line 273
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mSendButton:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    const/high16 v4, 0x4000

    sub-float v4, v0, v4

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1
.end method

.method private fnFindAttachBtn(IZ)V
    .locals 5
    .parameter "nIdRes"
    .parameter "bLeftOne"

    .prologue
    .line 397
    const/4 v1, 0x0

    .line 398
    .local v1, nIDIdentifier:I
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditorPanel;->thisView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 399
    .local v0, btn:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    if-eqz p2, :cond_0

    .line 402
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditorPanel;->mContext:Landroid/content/Context;

    const-string v3, "msg_button_left_background"

    const v4, 0x7f020178

    invoke-static {v2, v3, v4}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 408
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    return-void

    .line 405
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditorPanel;->mContext:Landroid/content/Context;

    const-string v3, "msg_button_middle_background"

    const v4, 0x7f020179

    invoke-static {v2, v3, v4}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private getComposeMessageActivity()Lcom/android/mms/ui/ComposeMessageActivity;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/ComposeMessageActivity;

    return-object v0
.end method

.method private getEditorHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getComposeMessageActivity()Lcom/android/mms/ui/ComposeMessageActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getEditorHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private getMessageBodyEditor()Lcom/android/mms/ui/MessageBodyEditor;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getComposeMessageActivity()Lcom/android/mms/ui/ComposeMessageActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getMessageBodyEditor()Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v0

    return-object v0
.end method

.method private getMessageTextEditor()Lcom/android/mms/ui/MessageTextEditor;
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getComposeMessageActivity()Lcom/android/mms/ui/ComposeMessageActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getMessageTextEditor()Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v0

    return-object v0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getComposeMessageActivity()Lcom/android/mms/ui/ComposeMessageActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method private setClickListener()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mSendButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    return-void
.end method

.method private setEditorPanelOnTouchListener()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/android/mms/ui/MessageEditorPanel$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageEditorPanel$1;-><init>(Lcom/android/mms/ui/MessageEditorPanel;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mEditorPanelOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 155
    return-void
.end method


# virtual methods
.method public enableAttachmentBar(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 176
    if-eqz p1, :cond_2

    .line 177
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachContainer2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 195
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditorPanel;->setAttachmentBarPadding()V

    .line 197
    :cond_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 182
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachContainer2:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableClickPanel(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 377
    if-eqz p1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mEditor:Landroid/view/View;

    check-cast v0, Lcom/android/mms/ui/MessageTextEditor;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditorPanel;->mEditorPanelOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageTextEditor;->setBeforeOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mEditor:Landroid/view/View;

    check-cast v0, Lcom/android/mms/ui/MessageTextEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageTextEditor;->setBeforeOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public getEditor()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mEditor:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->thisView:Landroid/view/View;

    return-object v0
.end method

.method public isAttachmentBarVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 204
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportComposerEnhance()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachContainer2:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 205
    goto :goto_0

    .line 207
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mSendButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 421
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getComposeMessageActivity()Lcom/android/mms/ui/ComposeMessageActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 424
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLandscapeIMEbutton()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x30

    if-ne v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-eq v0, v1, :cond_3

    .line 427
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getComposeMessageActivity()Lcom/android/mms/ui/ComposeMessageActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->launchAttachDlg()V

    goto :goto_0

    .line 430
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 431
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageEditorPanel;->mIsOptionBtnExtend:Z

    if-nez v1, :cond_5

    const v1, 0x7f020168

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 435
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 437
    :cond_4
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mIsOptionBtnExtend:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mIsOptionBtnExtend:Z

    .line 440
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getComposeMessageActivity()Lcom/android/mms/ui/ComposeMessageActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->isThreadMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getComposeMessageActivity()Lcom/android/mms/ui/ComposeMessageActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->hideIME(Landroid/widget/EditText;)V

    goto :goto_0

    .line 431
    :cond_5
    const v1, 0x7f020169

    goto :goto_1

    .line 437
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public pushUpEditor(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    .line 159
    iget-object v5, p0, Lcom/android/mms/ui/MessageEditorPanel;->mEditor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 160
    .local v2, left:I
    iget-object v5, p0, Lcom/android/mms/ui/MessageEditorPanel;->mEditor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 161
    .local v4, top:I
    iget-object v5, p0, Lcom/android/mms/ui/MessageEditorPanel;->mEditor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 162
    .local v3, right:I
    iget-object v5, p0, Lcom/android/mms/ui/MessageEditorPanel;->mEditor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 164
    .local v0, bottom:I
    if-eqz p1, :cond_0

    .line 165
    iget-object v5, p0, Lcom/android/mms/ui/MessageEditorPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0031

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 168
    .local v1, dim:I
    iget-object v5, p0, Lcom/android/mms/ui/MessageEditorPanel;->mEditor:Landroid/view/View;

    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 173
    :goto_0
    return-void

    .line 170
    .end local v1           #dim:I
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0033

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 171
    .restart local v1       #dim:I
    iget-object v5, p0, Lcom/android/mms/ui/MessageEditorPanel;->mEditor:Landroid/view/View;

    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setAttachmentBarPadding()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageEditorPanel;->isAttachmentBarVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getMessageTextEditor()Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageTextEditor;->setVisibility(I)V

    .line 214
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 215
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const v2, 0x7f0e0038

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 216
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getMessageBodyEditor()Lcom/android/mms/ui/MessageBodyEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageBodyEditor;->isNeedToDisableSendButton()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachContainer2:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 221
    .local v0, cparams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 222
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachContainer2:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xff

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setAlpha(I)V

    .line 243
    return-void

    .line 226
    .end local v0           #cparams:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getMessageTextEditor()Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/MessageTextEditor;->setVisibility(I)V

    .line 227
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 228
    .restart local v1       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const v2, 0x7f0e0033

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 229
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getComposeMessageActivity()Lcom/android/mms/ui/ComposeMessageActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->isVCardSMS()Z

    move-result v2

    if-nez v2, :cond_2

    .line 234
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 236
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachContainer2:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 237
    .restart local v0       #cparams:Landroid/view/ViewGroup$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 238
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachContainer2:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 242
    :cond_3
    const/16 v3, 0x80

    goto :goto_1
.end method

.method public setAttachmentBarView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 201
    return-void
.end method

.method public setCurrentState()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 465
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLandscapeIMEbutton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f02016a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 470
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 474
    :cond_0
    return-void

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mAttachedBtn:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageEditorPanel;->mIsOptionBtnExtend:Z

    if-eqz v1, :cond_2

    const v1, 0x7f020168

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const v1, 0x7f020169

    goto :goto_1
.end method

.method public setMsgEditPadding(Z)V
    .locals 5
    .parameter "bShow"

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditorPanel;->mReplyNumberIndicator:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageEditorPanel;->mReplyNumberIndicatorSep:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 503
    .local v0, paddingTop:I
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    if-nez v0, :cond_0

    .line 504
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getEditorHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xf

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 523
    .end local v0           #paddingTop:I
    :goto_0
    return-void

    .line 507
    .restart local v0       #paddingTop:I
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditorPanel;->mEditor:Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/ui/MessageEditorPanel;->mEditor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    if-eqz p1, :cond_1

    .end local v0           #paddingTop:I
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mEditor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/MessageEditorPanel;->mEditor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .restart local v0       #paddingTop:I
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1
.end method

.method public setReplyNumber(Ljava/lang/String;Z)V
    .locals 6
    .parameter "replyNumberText"
    .parameter "bAnim"

    .prologue
    .line 478
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, s:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 480
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10a0002

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 481
    .local v0, in:Landroid/view/animation/Animation;
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10a0003

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 482
    .local v1, out:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mReplyNumberIndicator:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 483
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mReplyNumberIndicator:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mReplyNumberIndicator:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 488
    .end local v0           #in:Landroid/view/animation/Animation;
    .end local v1           #out:Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mReplyNumberIndicator:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showReplyIndicatorView(Z)V
    .locals 5
    .parameter "bShow"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 491
    const-string v0, "MessageEditorPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v3, p0, Lcom/android/mms/ui/MessageEditorPanel;->mReplyNumberIndicator:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditorPanel;->mReplyNumberIndicatorSep:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 495
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditorPanel;->mEditor:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 497
    return-void

    :cond_0
    move v0, v2

    .line 492
    goto :goto_0

    :cond_1
    move v1, v2

    .line 493
    goto :goto_1

    .line 495
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0023

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2
.end method
