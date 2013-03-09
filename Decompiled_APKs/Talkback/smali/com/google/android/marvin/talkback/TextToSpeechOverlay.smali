.class public Lcom/google/android/marvin/talkback/TextToSpeechOverlay;
.super Lcom/googlecode/eyesfree/widget/SimpleOverlay;
.source "TextToSpeechOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/TextToSpeechOverlay$OverlayHandler;
    }
.end annotation


# static fields
.field private static final MSG_CLEAR_TEXT:I = 0x1


# instance fields
.field private final mHandler:Lcom/google/android/marvin/talkback/TextToSpeechOverlay$OverlayHandler;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, -0x2

    const/16 v3, 0xa

    .line 40
    invoke-direct {p0, p1}, Lcom/googlecode/eyesfree/widget/SimpleOverlay;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v1, Lcom/google/android/marvin/talkback/TextToSpeechOverlay$OverlayHandler;

    invoke-direct {v1, p0}, Lcom/google/android/marvin/talkback/TextToSpeechOverlay$OverlayHandler;-><init>(Lcom/google/android/marvin/talkback/TextToSpeechOverlay;)V

    iput-object v1, p0, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;->mHandler:Lcom/google/android/marvin/talkback/TextToSpeechOverlay$OverlayHandler;

    .line 42
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 43
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7da

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 44
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 45
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 46
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 47
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 48
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 49
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 50
    const/16 v1, 0x51

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 51
    invoke-virtual {p0, v0}, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;->setParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 53
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;->mText:Landroid/widget/TextView;

    .line 54
    iget-object v1, p0, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;->mText:Landroid/widget/TextView;

    const/high16 v2, 0x60ff

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 55
    iget-object v1, p0, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 56
    iget-object v1, p0, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;->mText:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 58
    iget-object v1, p0, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;->setContentView(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/TextToSpeechOverlay;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;->mText:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public speak(Ljava/lang/String;)V
    .locals 5
    .parameter "text"

    .prologue
    const/4 v4, 0x1

    .line 62
    invoke-virtual {p0}, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;->show()V

    .line 64
    const/16 v2, 0x7d0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v0, v2

    .line 66
    .local v0, displayTime:J
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;->mHandler:Lcom/google/android/marvin/talkback/TextToSpeechOverlay$OverlayHandler;

    invoke-virtual {v2, v4}, Lcom/google/android/marvin/talkback/TextToSpeechOverlay$OverlayHandler;->removeMessages(I)V

    .line 67
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;->mText:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v2, p0, Lcom/google/android/marvin/talkback/TextToSpeechOverlay;->mHandler:Lcom/google/android/marvin/talkback/TextToSpeechOverlay$OverlayHandler;

    invoke-virtual {v2, v4, v0, v1}, Lcom/google/android/marvin/talkback/TextToSpeechOverlay$OverlayHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 69
    return-void
.end method
