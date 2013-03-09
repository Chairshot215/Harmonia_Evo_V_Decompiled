.class public Lcom/htc/android/htcime/tutorial/TipSystem;
.super Ljava/lang/Object;
.source "TipSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TIP_1:I = 0x1

.field public static final TIP_2:I = 0x2

.field public static final TIP_2_2:I = 0x4


# instance fields
.field mContext:Landroid/content/Context;

.field mIsKeyDel:Z

.field mTip1Bubble:Lcom/htc/android/htcime/ui/TipsBubble;

.field mTip2Bubble:I

.field mTip2BubbleRotate:Lcom/htc/android/htcime/ui/TipsBubble;

.field mTip2BubbleTrust:Lcom/htc/android/htcime/ui/TipsBubble;

.field mTip2Progress:Z

.field mTip2Status:Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;

.field private mTipStatus:I

.field tip1_listener:Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;

.field tip2_rotate_listener:Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;

.field tip2_trust_listener:Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTipStatus:I

    .line 164
    new-instance v0, Lcom/htc/android/htcime/tutorial/TipSystem$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/tutorial/TipSystem$1;-><init>(Lcom/htc/android/htcime/tutorial/TipSystem;)V

    iput-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->tip1_listener:Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;

    .line 178
    iput-boolean v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2Progress:Z

    .line 179
    iput v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2Bubble:I

    .line 202
    iput-boolean v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mIsKeyDel:Z

    .line 242
    new-instance v0, Lcom/htc/android/htcime/tutorial/TipSystem$2;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/tutorial/TipSystem$2;-><init>(Lcom/htc/android/htcime/tutorial/TipSystem;)V

    iput-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->tip2_rotate_listener:Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;

    .line 253
    new-instance v0, Lcom/htc/android/htcime/tutorial/TipSystem$3;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/tutorial/TipSystem$3;-><init>(Lcom/htc/android/htcime/tutorial/TipSystem;)V

    iput-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->tip2_trust_listener:Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;

    .line 33
    iput-object p1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/htc/android/htcime/tutorial/TipSystem;->init()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/tutorial/TipSystem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTipStatus:I

    return v0
.end method

.method static synthetic access$076(Lcom/htc/android/htcime/tutorial/TipSystem;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iget v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTipStatus:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTipStatus:I

    return v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/htc/android/htcime/tutorial/TipSystem;->loadSetting()V

    .line 41
    new-instance v0, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;-><init>(Lcom/htc/android/htcime/tutorial/TipSystem;)V

    iput-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2Status:Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;

    .line 42
    return-void
.end method

.method private loadSetting()V
    .locals 3

    .prologue
    .line 45
    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "TipStatus"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTipStatus:I

    .line 47
    return-void
.end method


# virtual methods
.method public errorRateCal([Lcom/htc/android/htcime/ezsip/Keyboard$Key;IZ)V
    .locals 5
    .parameter "mKeys"
    .parameter "keyIndex"
    .parameter "fieldPredictMode"

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 204
    iget v2, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTipStatus:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTipStatus:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    if-ltz p2, :cond_2

    array-length v2, p1

    if-ge p2, v2, :cond_2

    .line 208
    aget-object v2, p1, p2

    iget-boolean v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->function:Z

    if-nez v2, :cond_3

    aget-object v2, p1, p2

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_3

    .line 209
    iget-object v2, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2Status:Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;

    invoke-static {v2}, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->access$108(Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;)I

    .line 210
    iput-boolean v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mIsKeyDel:Z

    .line 220
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mIsKeyDel:Z

    if-ne v2, v0, :cond_0

    .line 221
    iget-object v2, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2Status:Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;

    #getter for: Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->mCharCount:I
    invoke-static {v2}, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->access$100(Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;)I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2Status:Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;

    #getter for: Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->mDelCount:I
    invoke-static {v2}, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->access$200(Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;)I

    move-result v2

    if-le v2, v4, :cond_0

    .line 222
    invoke-static {}, Lcom/htc/android/htcime/HTCIMEService;->peekInstance()Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 223
    if-eqz p3, :cond_6

    .line 224
    iget-boolean v2, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2Progress:Z

    if-eqz v2, :cond_4

    .line 225
    iput v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2Bubble:I

    .line 229
    :goto_2
    iget-boolean v2, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2Progress:Z

    if-nez v2, :cond_5

    :goto_3
    iput-boolean v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2Progress:Z

    .line 234
    :goto_4
    iget v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2Bubble:I

    if-nez v0, :cond_7

    const/4 v0, 0x2

    :goto_5
    invoke-static {}, Lcom/htc/android/htcime/HTCIMEService;->peekInstance()Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/tutorial/TipSystem;->showTip(ILandroid/view/View;)V

    .line 235
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2Status:Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;

    invoke-virtual {v0}, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->clearStatus()V

    goto :goto_0

    .line 211
    :cond_3
    aget-object v2, p1, p2

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    if-ne v2, v4, :cond_2

    .line 212
    iget-object v2, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2Status:Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;

    invoke-static {v2}, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->access$208(Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;)I

    .line 213
    iput-boolean v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mIsKeyDel:Z

    goto :goto_1

    .line 227
    :cond_4
    iput v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2Bubble:I

    goto :goto_2

    :cond_5
    move v0, v1

    .line 229
    goto :goto_3

    .line 231
    :cond_6
    iput v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2Bubble:I

    goto :goto_4

    .line 234
    :cond_7
    const/4 v0, 0x4

    goto :goto_5
.end method

.method public getTipStatus()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTipStatus:I

    return v0
.end method

.method public getTipWindow(I)Lcom/htc/android/htcime/ui/TipsBubble;
    .locals 1
    .parameter "tip_num"

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, t:Lcom/htc/android/htcime/ui/TipsBubble;
    packed-switch p1, :pswitch_data_0

    .line 62
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip1Bubble:Lcom/htc/android/htcime/ui/TipsBubble;

    .line 58
    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public hideAllTips()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip1Bubble:Lcom/htc/android/htcime/ui/TipsBubble;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip1Bubble:Lcom/htc/android/htcime/ui/TipsBubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/TipsBubble;->hide()V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2BubbleRotate:Lcom/htc/android/htcime/ui/TipsBubble;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2BubbleRotate:Lcom/htc/android/htcime/ui/TipsBubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/TipsBubble;->hide()V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2BubbleTrust:Lcom/htc/android/htcime/ui/TipsBubble;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2BubbleTrust:Lcom/htc/android/htcime/ui/TipsBubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/TipsBubble;->hide()V

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2Status:Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2Status:Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;

    invoke-virtual {v0}, Lcom/htc/android/htcime/tutorial/TipSystem$Tip2Status;->clearStatus()V

    .line 159
    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sTipTutoring:Z

    .line 160
    return-void
.end method

.method public showTip(ILandroid/view/View;)V
    .locals 11
    .parameter "tip_num"
    .parameter "attachTo"

    .prologue
    const/16 v6, 0x64

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 70
    packed-switch p1, :pswitch_data_0

    .line 152
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 72
    :pswitch_1
    iget v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTipStatus:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip1Bubble:Lcom/htc/android/htcime/ui/TipsBubble;

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mContext:Landroid/content/Context;

    const v3, 0x7f03005c

    move-object v2, p2

    move v5, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/htc/android/htcime/ui/TipsBubble;-><init>(Landroid/content/Context;Landroid/view/View;IIIII)V

    iput-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip1Bubble:Lcom/htc/android/htcime/ui/TipsBubble;

    .line 79
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip1Bubble:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->tip1_listener:Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;

    iget-object v2, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->tip1_listener:Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/TipsBubble;->setListener(Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;)V

    .line 96
    new-instance v9, Landroid/text/SpannableString;

    const-string v0, "abc"

    invoke-direct {v9, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 97
    .local v9, s:Landroid/text/SpannableString;
    new-instance v8, Landroid/text/style/ImageSpan;

    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mContext:Landroid/content/Context;

    const v1, 0x7f020118

    invoke-direct {v8, v0, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 98
    .local v8, mBack:Landroid/text/style/ImageSpan;
    const/4 v0, 0x3

    const/16 v1, 0x11

    invoke-virtual {v9, v8, v4, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 99
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip1Bubble:Lcom/htc/android/htcime/ui/TipsBubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/TipsBubble;->getTipBody()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mContext:Landroid/content/Context;

    const v2, 0x7f090087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip1Bubble:Lcom/htc/android/htcime/ui/TipsBubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/TipsBubble;->getTipBody()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip1Bubble:Lcom/htc/android/htcime/ui/TipsBubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/TipsBubble;->getTipBody()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mContext:Landroid/content/Context;

    const v2, 0x7f090089

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip1Bubble:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip1Bubble:Lcom/htc/android/htcime/ui/TipsBubble;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/TipsBubble;->getHeight()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v4, v1}, Lcom/htc/android/htcime/ui/TipsBubble;->show(II)V

    .line 104
    sput-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->sTipTutoring:Z

    goto :goto_0

    .line 109
    .end local v8           #mBack:Landroid/text/style/ImageSpan;
    .end local v9           #s:Landroid/text/SpannableString;
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip1Bubble:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip1Bubble:Lcom/htc/android/htcime/ui/TipsBubble;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/TipsBubble;->getHeight()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, p2, v4, v1}, Lcom/htc/android/htcime/ui/TipsBubble;->show(Landroid/view/View;II)V

    .line 110
    sput-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->sTipTutoring:Z

    goto/16 :goto_0

    .line 116
    :pswitch_2
    iget v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTipStatus:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2BubbleRotate:Lcom/htc/android/htcime/ui/TipsBubble;

    if-nez v0, :cond_2

    .line 118
    new-instance v0, Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mContext:Landroid/content/Context;

    const v3, 0x7f030057

    move-object v2, p2

    move v5, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/htc/android/htcime/ui/TipsBubble;-><init>(Landroid/content/Context;Landroid/view/View;IIIII)V

    iput-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2BubbleRotate:Lcom/htc/android/htcime/ui/TipsBubble;

    .line 121
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2BubbleRotate:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->tip2_rotate_listener:Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;

    iget-object v2, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->tip2_rotate_listener:Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/TipsBubble;->setListener(Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2BubbleRotate:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2BubbleRotate:Lcom/htc/android/htcime/ui/TipsBubble;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/TipsBubble;->getHeight()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v4, v1}, Lcom/htc/android/htcime/ui/TipsBubble;->show(II)V

    .line 123
    sput-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->sTipTutoring:Z

    goto/16 :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2BubbleRotate:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2BubbleRotate:Lcom/htc/android/htcime/ui/TipsBubble;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/TipsBubble;->getHeight()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, p2, v4, v1}, Lcom/htc/android/htcime/ui/TipsBubble;->show(Landroid/view/View;II)V

    .line 128
    sput-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->sTipTutoring:Z

    goto/16 :goto_0

    .line 133
    :pswitch_3
    iget v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTipStatus:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2BubbleTrust:Lcom/htc/android/htcime/ui/TipsBubble;

    if-nez v0, :cond_3

    .line 135
    new-instance v0, Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mContext:Landroid/content/Context;

    const v3, 0x7f030058

    move-object v2, p2

    move v5, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/htc/android/htcime/ui/TipsBubble;-><init>(Landroid/content/Context;Landroid/view/View;IIIII)V

    iput-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2BubbleTrust:Lcom/htc/android/htcime/ui/TipsBubble;

    .line 138
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2BubbleTrust:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->tip2_trust_listener:Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;

    iget-object v2, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->tip2_trust_listener:Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/TipsBubble;->setListener(Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;Lcom/htc/android/htcime/ui/TipsBubble$onClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2BubbleTrust:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2BubbleTrust:Lcom/htc/android/htcime/ui/TipsBubble;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/TipsBubble;->getHeight()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v4, v1}, Lcom/htc/android/htcime/ui/TipsBubble;->show(II)V

    .line 140
    sput-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->sTipTutoring:Z

    goto/16 :goto_0

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2BubbleTrust:Lcom/htc/android/htcime/ui/TipsBubble;

    iget-object v1, p0, Lcom/htc/android/htcime/tutorial/TipSystem;->mTip2BubbleTrust:Lcom/htc/android/htcime/ui/TipsBubble;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/TipsBubble;->getHeight()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, p2, v4, v1}, Lcom/htc/android/htcime/ui/TipsBubble;->show(Landroid/view/View;II)V

    .line 145
    sput-boolean v10, Lcom/htc/android/htcime/HTCIMMData;->sTipTutoring:Z

    goto/16 :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
