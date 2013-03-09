.class public interface abstract Lcom/google/android/gm/ConversationViewable;
.super Ljava/lang/Object;
.source "ConversationViewable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;
    }
.end annotation


# virtual methods
.method public abstract editDraft(J)V
.end method

.method public abstract forward(J)V
.end method

.method public abstract handleTouchEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract hideUndoView(Z)V
.end method

.method public abstract onDestructiveCommand()V
.end method

.method public abstract onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V
.end method

.method public abstract onMarkUnread()V
.end method

.method public abstract onMenuItemSelected(ILcom/google/android/gm/CommandListener;)Z
.end method

.method public abstract reply(J)V
.end method

.method public abstract replyAll(J)V
.end method

.method public abstract resetViews()V
.end method

.method public abstract setStarOnMessage(JJZ)V
.end method

.method public abstract showUndoView(Lcom/google/android/gm/UndoOperation;Z)V
.end method

.method public abstract toggleStar()V
.end method

.method public abstract unstarAllMessages()V
.end method
