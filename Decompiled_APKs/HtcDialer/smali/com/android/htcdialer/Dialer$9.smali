.class Lcom/android/htcdialer/Dialer$9;
.super Ljava/lang/Object;
.source "Dialer.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/Dialer;->setupContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/Dialer;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/Dialer;)V
    .locals 0
    .parameter

    .prologue
    .line 2005
    iput-object p1, p0, Lcom/android/htcdialer/Dialer$9;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 2007
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$9;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mDigits:Lcom/android/htcdialer/widget/AccumulatorText;
    invoke-static {v1}, Lcom/android/htcdialer/Dialer;->access$700(Lcom/android/htcdialer/Dialer;)Lcom/android/htcdialer/widget/AccumulatorText;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/htcdialer/Dialer$9;->this$0:Lcom/android/htcdialer/Dialer;

    #getter for: Lcom/android/htcdialer/Dialer;->mDigitsMode:I
    invoke-static {v1}, Lcom/android/htcdialer/Dialer;->access$2000(Lcom/android/htcdialer/Dialer;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2008
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/16 v1, 0x17

    if-ne p2, v1, :cond_1

    .line 2010
    iget-object v0, p0, Lcom/android/htcdialer/Dialer$9;->this$0:Lcom/android/htcdialer/Dialer;

    invoke-virtual {v0}, Lcom/android/htcdialer/Dialer;->placeCall()V

    .line 2019
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2012
    :cond_1
    const/16 v1, 0x15

    if-eq p2, v1, :cond_2

    const/16 v1, 0x16

    if-ne p2, v1, :cond_0

    .line 2014
    :cond_2
    iget-object v1, p0, Lcom/android/htcdialer/Dialer$9;->this$0:Lcom/android/htcdialer/Dialer;

    iget-boolean v1, v1, Lcom/android/htcdialer/Dialer;->mIsEditMode:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/htcdialer/BaseSmartSearchList;->IS_TMO_PROJECT:Z

    if-nez v1, :cond_0

    goto :goto_0
.end method
