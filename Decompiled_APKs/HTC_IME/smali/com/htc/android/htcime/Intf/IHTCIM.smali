.class public interface abstract Lcom/htc/android/htcime/Intf/IHTCIM;
.super Ljava/lang/Object;
.source "IHTCIM.java"


# virtual methods
.method public abstract addUserWord(Ljava/lang/String;)V
.end method

.method public abstract buildWCL_AutoCompleteText([Landroid/view/inputmethod/CompletionInfo;)V
.end method

.method public abstract expandFullWCL()I
.end method

.method public abstract finishInput()V
.end method

.method public abstract getIMEStatus()I
.end method

.method public abstract getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;
.end method

.method public abstract getSpellCount()I
.end method

.method public abstract getSpellString(I)Ljava/lang/String;
.end method

.method public abstract getSpellType(I)I
.end method

.method public abstract getWCLCand(IIZ)Ljava/lang/String;
.end method

.method public abstract getWCLCount(IZ)I
.end method

.method public abstract init(Lcom/htc/android/htcime/HTCIMEService;)V
.end method

.method public abstract keyRegionCorrect(III)I
.end method

.method public abstract loadCommonCtrlValue()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onInterrupt()V
.end method

.method public abstract onKeyDown(Landroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyDown(Landroid/view/KeyEvent;II)Z
.end method

.method public abstract onKeyUp(Landroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(Landroid/view/KeyEvent;II)Z
.end method

.method public abstract onUpdateSelection(IIIIIII)I
.end method

.method public abstract preProcess()V
.end method

.method public abstract startInput()V
.end method
