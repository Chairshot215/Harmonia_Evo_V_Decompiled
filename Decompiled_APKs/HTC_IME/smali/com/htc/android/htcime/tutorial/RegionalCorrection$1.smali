.class Lcom/htc/android/htcime/tutorial/RegionalCorrection$1;
.super Ljava/lang/Object;
.source "RegionalCorrection.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/tutorial/RegionalCorrection;->keyboardTypeLayoutCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/tutorial/RegionalCorrection;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tutorial/RegionalCorrection;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/android/htcime/tutorial/RegionalCorrection$1;->this$0:Lcom/htc/android/htcime/tutorial/RegionalCorrection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method
