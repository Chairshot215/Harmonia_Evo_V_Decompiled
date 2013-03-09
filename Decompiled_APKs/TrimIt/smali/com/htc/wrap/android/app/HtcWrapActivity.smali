.class public Lcom/htc/wrap/android/app/HtcWrapActivity;
.super Landroid/app/Activity;
.source "HtcWrapActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 8
    return-void
.end method

.method public static overrideRotateAnimation(Landroid/app/Activity;I)V
    .locals 0
    .parameter "activity"
    .parameter "type"

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Activity;->overrideRotateAnimation(I)V

    .line 22
    return-void
.end method


# virtual methods
.method public overrideRotateAnimation(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->overrideRotateAnimation(I)V

    .line 18
    return-void
.end method
