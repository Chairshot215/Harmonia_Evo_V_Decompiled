.class public interface abstract Lcom/android/browser/view/PieMenu$PieView;
.super Ljava/lang/Object;
.source "PieMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/view/PieMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PieView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/view/PieMenu$PieView$OnLayoutListener;
    }
.end annotation


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public abstract layout(IIZF)V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setLayoutListener(Lcom/android/browser/view/PieMenu$PieView$OnLayoutListener;)V
.end method
