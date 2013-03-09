.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/Object;I)V
    .locals 0
    .parameter "info"
    .parameter "action"

    .prologue
    .line 290
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->addAction(Ljava/lang/Object;I)V

    .line 291
    return-void
.end method

.method public addChild(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .parameter "info"
    .parameter "child"

    .prologue
    .line 295
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->addChild(Ljava/lang/Object;Landroid/view/View;)V

    .line 296
    return-void
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "info"
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActions(Ljava/lang/Object;)I
    .locals 1
    .parameter "info"

    .prologue
    .line 305
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getActions(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "info"
    .parameter "outBounds"

    .prologue
    .line 310
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 311
    return-void
.end method

.method public getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "info"
    .parameter "outBounds"

    .prologue
    .line 315
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 316
    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2
    .parameter "info"
    .parameter "index"

    .prologue
    .line 320
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getChild(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 272
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;->getChild(Ljava/lang/Object;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 1
    .parameter "info"

    .prologue
    .line 325
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getChildCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 330
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 335
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 340
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getParent(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2
    .parameter "info"

    .prologue
    .line 345
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->access$000()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;->getParent(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 350
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getWindowId(Ljava/lang/Object;)I
    .locals 1
    .parameter "info"

    .prologue
    .line 355
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->getWindowId(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCheckable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 360
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isCheckable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isChecked(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 365
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isChecked(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isClickable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 370
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isClickable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 375
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFocusable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 380
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isFocusable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFocused(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 385
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isFocused(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLongClickable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 390
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isLongClickable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPassword(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 395
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isPassword(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isScrollable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 400
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isScrollable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelected(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 405
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->isSelected(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 275
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->obtain()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public obtain(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .parameter "source"

    .prologue
    .line 280
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->obtain(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "info"

    .prologue
    .line 285
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public performAction(Ljava/lang/Object;I)Z
    .locals 1
    .parameter "info"
    .parameter "action"

    .prologue
    .line 410
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->performAction(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 505
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->recycle(Ljava/lang/Object;)V

    .line 506
    return-void
.end method

.method public setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "info"
    .parameter "bounds"

    .prologue
    .line 415
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 416
    return-void
.end method

.method public setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "info"
    .parameter "bounds"

    .prologue
    .line 420
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 421
    return-void
.end method

.method public setCheckable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "checkable"

    .prologue
    .line 425
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setCheckable(Ljava/lang/Object;Z)V

    .line 426
    return-void
.end method

.method public setChecked(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "checked"

    .prologue
    .line 430
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setChecked(Ljava/lang/Object;Z)V

    .line 431
    return-void
.end method

.method public setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "info"
    .parameter "className"

    .prologue
    .line 435
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 436
    return-void
.end method

.method public setClickable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "clickable"

    .prologue
    .line 440
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setClickable(Ljava/lang/Object;Z)V

    .line 441
    return-void
.end method

.method public setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "info"
    .parameter "contentDescription"

    .prologue
    .line 445
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 446
    return-void
.end method

.method public setEnabled(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "enabled"

    .prologue
    .line 450
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setEnabled(Ljava/lang/Object;Z)V

    .line 451
    return-void
.end method

.method public setFocusable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "focusable"

    .prologue
    .line 455
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setFocusable(Ljava/lang/Object;Z)V

    .line 456
    return-void
.end method

.method public setFocused(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "focused"

    .prologue
    .line 460
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setFocused(Ljava/lang/Object;Z)V

    .line 461
    return-void
.end method

.method public setLongClickable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "longClickable"

    .prologue
    .line 465
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setLongClickable(Ljava/lang/Object;Z)V

    .line 466
    return-void
.end method

.method public setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "info"
    .parameter "packageName"

    .prologue
    .line 470
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 471
    return-void
.end method

.method public setParent(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .parameter "info"
    .parameter "parent"

    .prologue
    .line 475
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setParent(Ljava/lang/Object;Landroid/view/View;)V

    .line 476
    return-void
.end method

.method public setPassword(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "password"

    .prologue
    .line 480
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setPassword(Ljava/lang/Object;Z)V

    .line 481
    return-void
.end method

.method public setScrollable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "scrollable"

    .prologue
    .line 485
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setScrollable(Ljava/lang/Object;Z)V

    .line 486
    return-void
.end method

.method public setSelected(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "selected"

    .prologue
    .line 490
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setSelected(Ljava/lang/Object;Z)V

    .line 491
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .parameter "info"
    .parameter "source"

    .prologue
    .line 495
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setSource(Ljava/lang/Object;Landroid/view/View;)V

    .line 496
    return-void
.end method

.method public setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "info"
    .parameter "text"

    .prologue
    .line 500
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;->setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 501
    return-void
.end method
