.class public Lcom/android/server/accessibility/AccessibilityInputFilter;
.super Lcom/android/server/wm/InputFilter;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityInputFilter$Explorer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AccessibilityInputFilter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

.field private mTouchscreenSourceDeviceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/InputFilter;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v2

    const/16 v3, 0x1002

    if-ne v2, v3, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v0

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchscreenSourceDeviceId:I

    if-eq v2, v0, :cond_0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchscreenSourceDeviceId:I

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    :cond_0
    const/high16 v2, 0x4000

    and-int/2addr v2, p2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->onMotionEvent(Landroid/view/MotionEvent;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0
.end method

.method public onInstalled()V
    .locals 2

    new-instance v0, Lcom/android/server/accessibility/TouchExplorer;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/TouchExplorer;-><init>(Lcom/android/server/wm/InputFilter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-super {p0}, Lcom/android/server/wm/InputFilter;->onInstalled()V

    return-void
.end method

.method public onUninstalled()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Lcom/android/server/accessibility/TouchExplorer;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer;->clear()V

    invoke-super {p0}, Lcom/android/server/wm/InputFilter;->onUninstalled()V

    return-void
.end method
