.class Lcom/htc/android/mail/ComposeActivity$103;
.super Lcom/htc/android/mail/ComposeActivity$OnComposeFocusChangeListener;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 12398
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$103;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {p0, p1}, Lcom/htc/android/mail/ComposeActivity$OnComposeFocusChangeListener;-><init>(Lcom/htc/android/mail/ComposeActivity;)V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 12400
    invoke-super {p0, p1, p2}, Lcom/htc/android/mail/ComposeActivity$OnComposeFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 12401
    return-void
.end method
