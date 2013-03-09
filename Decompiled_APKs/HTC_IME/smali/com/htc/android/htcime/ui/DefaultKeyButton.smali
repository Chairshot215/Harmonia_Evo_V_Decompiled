.class public Lcom/htc/android/htcime/ui/DefaultKeyButton;
.super Landroid/widget/TextView;
.source "DefaultKeyButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/ui/DefaultKeyButton$1;,
        Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;
    }
.end annotation


# static fields
.field private static AUTO_PRESS_DELAY_TIME:I

.field private static AUTO_PRESS_FIRST_DELAY_TIME:I

.field private static LONG_PRESS_DELAY_TIME:I

.field private static MSG_AUTO_PRESS:I

.field private static MSG_LONG_PRESS_DECTECT:I


# instance fields
.field private mEnableAutoPress:Z

.field private mEnableLongPress:Z

.field private mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

.field private mKeyDisableBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyDisableTextColor:I

.field private mKeyDownBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyDownTextColor:I

.field private mKeyPaddingBottom:I

.field private mKeyPaddingLeft:I

.field private mKeyPaddingRight:I

.field private mKeyPaddingTop:I

.field private mKeyUpBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyUpTextColor:I

.field private mMsg:Landroid/os/Message;

.field private mNextTime:J

.field private mOnKeyButtonListener:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput v0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->MSG_LONG_PRESS_DECTECT:I

    .line 38
    const/4 v0, 0x2

    sput v0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->MSG_AUTO_PRESS:I

    .line 40
    const/16 v0, 0x3e8

    sput v0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->LONG_PRESS_DELAY_TIME:I

    .line 41
    const/16 v0, 0x7d0

    sput v0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->AUTO_PRESS_FIRST_DELAY_TIME:I

    .line 42
    const/16 v0, 0xc8

    sput v0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->AUTO_PRESS_DELAY_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-object v1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mOnKeyButtonListener:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    .line 46
    iput-object v1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyUpBackground:Landroid/graphics/drawable/Drawable;

    .line 47
    iput-object v1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyDownBackground:Landroid/graphics/drawable/Drawable;

    .line 48
    iput-object v1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyDisableBackground:Landroid/graphics/drawable/Drawable;

    .line 50
    iput v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyUpTextColor:I

    .line 51
    iput v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyDownTextColor:I

    .line 52
    iput v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyDisableTextColor:I

    .line 54
    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mEnableLongPress:Z

    .line 55
    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mEnableAutoPress:Z

    .line 58
    iput v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyPaddingLeft:I

    .line 59
    iput v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyPaddingTop:I

    .line 60
    iput v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyPaddingRight:I

    .line 61
    iput v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyPaddingBottom:I

    .line 63
    new-instance v0, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;-><init>(Lcom/htc/android/htcime/ui/DefaultKeyButton;Lcom/htc/android/htcime/ui/DefaultKeyButton$1;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    .line 64
    iput-object v1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mMsg:Landroid/os/Message;

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mNextTime:J

    .line 76
    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->MSG_LONG_PRESS_DECTECT:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->clickButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/ui/DefaultKeyButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mEnableAutoPress:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/ui/DefaultKeyButton;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/android/htcime/ui/DefaultKeyButton;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mMsg:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->MSG_AUTO_PRESS:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/android/htcime/ui/DefaultKeyButton;)Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/android/htcime/ui/DefaultKeyButton;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mNextTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/htc/android/htcime/ui/DefaultKeyButton;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mNextTime:J

    return-wide p1
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->AUTO_PRESS_FIRST_DELAY_TIME:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->AUTO_PRESS_DELAY_TIME:I

    return v0
.end method

.method private clickButton()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mOnKeyButtonListener:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mOnKeyButtonListener:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    invoke-interface {v0, p0}, Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;->onKeyPress(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V

    .line 307
    :cond_0
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 131
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v7

    .line 134
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 137
    :pswitch_0
    iget-object v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mOnKeyButtonListener:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    if-eqz v3, :cond_2

    .line 138
    iget-object v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mOnKeyButtonListener:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    invoke-interface {v3, p0}, Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;->onKeyButtonDown(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V

    .line 140
    :cond_2
    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mEnableLongPress:Z

    if-ne v3, v7, :cond_4

    .line 142
    iget-object v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    sget v4, Lcom/htc/android/htcime/ui/DefaultKeyButton;->MSG_LONG_PRESS_DECTECT:I

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mMsg:Landroid/os/Message;

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sget v5, Lcom/htc/android/htcime/ui/DefaultKeyButton;->LONG_PRESS_DELAY_TIME:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mNextTime:J

    .line 144
    iget-object v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mMsg:Landroid/os/Message;

    iget-wide v5, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mNextTime:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 154
    :cond_3
    :goto_1
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setPressed(Z)V

    goto :goto_0

    .line 147
    :cond_4
    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mEnableAutoPress:Z

    if-ne v3, v7, :cond_3

    .line 149
    iget-object v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    sget v4, Lcom/htc/android/htcime/ui/DefaultKeyButton;->MSG_AUTO_PRESS:I

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mMsg:Landroid/os/Message;

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sget v5, Lcom/htc/android/htcime/ui/DefaultKeyButton;->AUTO_PRESS_FIRST_DELAY_TIME:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mNextTime:J

    .line 151
    iget-object v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mMsg:Landroid/os/Message;

    iget-wide v5, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mNextTime:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1

    .line 157
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setPressed(Z)V

    goto :goto_0

    .line 160
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 161
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 164
    .local v2, y:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    .line 165
    .local v0, slop:I
    rsub-int/lit8 v3, v0, 0x0

    if-lt v1, v3, :cond_5

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_5

    rsub-int/lit8 v3, v0, 0x0

    if-lt v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-lt v2, v3, :cond_6

    .line 168
    :cond_5
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setPressed(Z)V

    .line 170
    iget-object v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    sget v4, Lcom/htc/android/htcime/ui/DefaultKeyButton;->MSG_LONG_PRESS_DECTECT:I

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->removeMessages(I)V

    .line 171
    iget-object v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    sget v4, Lcom/htc/android/htcime/ui/DefaultKeyButton;->MSG_AUTO_PRESS:I

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 175
    :cond_6
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->isPressed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setPressed(Z)V

    goto/16 :goto_0

    .line 182
    .end local v0           #slop:I
    .end local v1           #x:I
    .end local v2           #y:I
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 183
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->clickButton()V

    .line 185
    :cond_7
    iget-object v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mOnKeyButtonListener:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    if-eqz v3, :cond_8

    .line 186
    iget-object v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mOnKeyButtonListener:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    invoke-interface {v3, p0}, Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;->onKeyButtonUp(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V

    .line 188
    :cond_8
    iget-object v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    sget v4, Lcom/htc/android/htcime/ui/DefaultKeyButton;->MSG_LONG_PRESS_DECTECT:I

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->removeMessages(I)V

    .line 189
    iget-object v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    sget v4, Lcom/htc/android/htcime/ui/DefaultKeyButton;->MSG_AUTO_PRESS:I

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->removeMessages(I)V

    .line 191
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setPressed(Z)V

    goto/16 :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(I)V
    .locals 5
    .parameter "action"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 211
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 217
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mOnKeyButtonListener:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mOnKeyButtonListener:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    invoke-interface {v0, p0}, Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;->onKeyButtonDown(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V

    .line 220
    :cond_2
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mEnableLongPress:Z

    if-ne v0, v4, :cond_4

    .line 222
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    sget v1, Lcom/htc/android/htcime/ui/DefaultKeyButton;->MSG_LONG_PRESS_DECTECT:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mMsg:Landroid/os/Message;

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget v2, Lcom/htc/android/htcime/ui/DefaultKeyButton;->LONG_PRESS_DELAY_TIME:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mNextTime:J

    .line 224
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mMsg:Landroid/os/Message;

    iget-wide v2, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mNextTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 234
    :cond_3
    :goto_1
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setPressed(Z)V

    goto :goto_0

    .line 227
    :cond_4
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mEnableAutoPress:Z

    if-ne v0, v4, :cond_3

    .line 229
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    sget v1, Lcom/htc/android/htcime/ui/DefaultKeyButton;->MSG_AUTO_PRESS:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mMsg:Landroid/os/Message;

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget v2, Lcom/htc/android/htcime/ui/DefaultKeyButton;->AUTO_PRESS_FIRST_DELAY_TIME:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mNextTime:J

    .line 231
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mMsg:Landroid/os/Message;

    iget-wide v2, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mNextTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1

    .line 239
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setPressed(Z)V

    .line 241
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    sget v1, Lcom/htc/android/htcime/ui/DefaultKeyButton;->MSG_LONG_PRESS_DECTECT:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->removeMessages(I)V

    .line 242
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    sget v1, Lcom/htc/android/htcime/ui/DefaultKeyButton;->MSG_AUTO_PRESS:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->removeMessages(I)V

    goto :goto_0

    .line 246
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 247
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->clickButton()V

    .line 249
    :cond_5
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mOnKeyButtonListener:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    if-eqz v0, :cond_6

    .line 250
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mOnKeyButtonListener:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    invoke-interface {v0, p0}, Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;->onKeyButtonUp(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V

    .line 252
    :cond_6
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    sget v1, Lcom/htc/android/htcime/ui/DefaultKeyButton;->MSG_LONG_PRESS_DECTECT:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->removeMessages(I)V

    .line 253
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mIMMHandler:Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;

    sget v1, Lcom/htc/android/htcime/ui/DefaultKeyButton;->MSG_AUTO_PRESS:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/DefaultKeyButton$KeyButtonHandler;->removeMessages(I)V

    .line 255
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setPressed(Z)V

    goto/16 :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 283
    if-eqz p1, :cond_2

    .line 284
    iget v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyUpTextColor:I

    if-eqz v0, :cond_0

    .line 285
    iget v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyUpTextColor:I

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setTextColor(I)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyUpBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyUpBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    :cond_1
    :goto_0
    iget v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyPaddingLeft:I

    iget v1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyPaddingTop:I

    iget v2, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyPaddingRight:I

    iget v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setPadding(IIII)V

    .line 299
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 300
    return-void

    .line 291
    :cond_2
    iget v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyDisableTextColor:I

    if-eqz v0, :cond_3

    .line 292
    iget v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyDisableTextColor:I

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setTextColor(I)V

    .line 294
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyDisableBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyDisableBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setKeyDisableBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "img"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyDisableBackground:Landroid/graphics/drawable/Drawable;

    .line 116
    return-void
.end method

.method public setKeyDisableTextColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 96
    iput p1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyDisableTextColor:I

    .line 97
    return-void
.end method

.method public setKeyDownBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "img"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyDownBackground:Landroid/graphics/drawable/Drawable;

    .line 111
    return-void
.end method

.method public setKeyDownTextColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 91
    iput p1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyDownTextColor:I

    .line 92
    return-void
.end method

.method public setKeyPadding(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 120
    iput p1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyPaddingLeft:I

    .line 121
    iput p2, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyPaddingTop:I

    .line 122
    iput p3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyPaddingRight:I

    .line 123
    iput p4, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyPaddingBottom:I

    .line 125
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setPadding(IIII)V

    .line 126
    return-void
.end method

.method public setKeyUpBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "img"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyUpBackground:Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyPaddingLeft:I

    iget v1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyPaddingTop:I

    iget v2, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyPaddingRight:I

    iget v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setPadding(IIII)V

    .line 106
    return-void
.end method

.method public setKeyUpTextColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 85
    iput p1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyUpTextColor:I

    .line 86
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setTextColor(I)V

    .line 87
    return-void
.end method

.method public setOnKeyButtonListener(Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mOnKeyButtonListener:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    .line 81
    return-void
.end method

.method public setPressed(Z)V
    .locals 4
    .parameter "pressed"

    .prologue
    .line 262
    if-eqz p1, :cond_2

    .line 263
    iget v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyDownTextColor:I

    if-eqz v0, :cond_0

    .line 264
    iget v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyDownTextColor:I

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setTextColor(I)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyDownBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyDownBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    :cond_1
    :goto_0
    iget v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyPaddingLeft:I

    iget v1, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyPaddingTop:I

    iget v2, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyPaddingRight:I

    iget v3, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setPadding(IIII)V

    .line 278
    invoke-super {p0, p1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 279
    return-void

    .line 270
    :cond_2
    iget v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyUpTextColor:I

    if-eqz v0, :cond_3

    .line 271
    iget v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyUpTextColor:I

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setTextColor(I)V

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyUpBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/htc/android/htcime/ui/DefaultKeyButton;->mKeyUpBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
