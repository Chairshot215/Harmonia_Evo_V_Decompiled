.class public interface abstract Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EditStyledTextNotifier"
.end annotation


# virtual methods
.method public abstract cancelViewManager()V
.end method

.method public abstract isButtonsFocused()Z
.end method

.method public abstract onStateChanged(II)V
.end method

.method public abstract sendHintMsg(I)V
.end method

.method public abstract sendOnTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract showInsertImageSelectAlertDialog()Z
.end method

.method public abstract showMenuAlertDialog()Z
.end method

.method public abstract showPreview()Z
.end method
