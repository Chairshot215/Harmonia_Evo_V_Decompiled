.class Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;
.super Landroid/text/method/DigitsKeyListener;
.source "DTMFTwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DTMFTwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DTMFKeyListener"
.end annotation


# instance fields
.field public final DTMF_CHARACTERS:[C

.field private mAccepted:[C

.field final synthetic this$0:Lcom/android/phone/DTMFTwelveKeyDialer;


# direct methods
.method private constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialer;Landroid/widget/EditText;)V
    .locals 1
    .parameter
    .parameter "display"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 282
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;-><init>()V

    .line 275
    const/16 v0, 0xf

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->DTMF_CHARACTERS:[C

    .line 283
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->DTMF_CHARACTERS:[C

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->mAccepted:[C

    .line 284
    return-void

    .line 275
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x70t 0x0t
        0x77t 0x0t
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialer;Landroid/widget/EditText;Lcom/android/phone/DTMFTwelveKeyDialer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;-><init>(Lcom/android/phone/DTMFTwelveKeyDialer;Landroid/widget/EditText;)V

    return-void
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 301
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isHardKeyboardHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DigitsKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->mAccepted:[C

    return-object v0
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 351
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isHardKeyboardHidden()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$300(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/phone/widget/AccumulatorText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$400(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/phone/DTMFTwelveKeyDialerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->openOrCloseKeypad()V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$300(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/phone/widget/AccumulatorText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/widget/AccumulatorText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$300(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/phone/widget/AccumulatorText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/widget/AccumulatorText;->requestFocus()Z

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$300(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/phone/widget/AccumulatorText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;
    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$300(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/phone/widget/AccumulatorText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 313
    invoke-virtual {p0, p4, p2}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v1

    int-to-char v0, v1

    .line 316
    .local v0, c:C
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMFKeyListener reading \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' from input."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->processDtmf(C)V
    invoke-static {v1, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$100(Lcom/android/phone/DTMFTwelveKeyDialer;C)V

    .line 325
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DigitsKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 320
    :cond_1
    invoke-virtual {p4}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    .line 323
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DTMFKeyListener rejecting \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' from input."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyUp(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 373
    if-nez p1, :cond_0

    .line 375
    const-string v0, "Stopping the last played tone."

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$200(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    .line 377
    const/4 v0, 0x1

    .line 383
    :goto_0
    return v0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$300(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/phone/widget/AccumulatorText;

    move-result-object v0

    if-nez v0, :cond_1

    .line 381
    const/4 v0, 0x0

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$300(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/phone/widget/AccumulatorText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallDigits:Lcom/android/phone/widget/AccumulatorText;
    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$300(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/phone/widget/AccumulatorText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/widget/AccumulatorText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 335
    invoke-virtual {p0, p4, p2}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v1

    int-to-char v0, v1

    .line 336
    .local v0, c:C
    if-eqz v0, :cond_0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping the tone for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000(Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V
    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$200(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    .line 342
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DigitsKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method
