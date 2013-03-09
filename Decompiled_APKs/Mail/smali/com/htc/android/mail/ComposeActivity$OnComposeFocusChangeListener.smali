.class public Lcom/htc/android/mail/ComposeActivity$OnComposeFocusChangeListener;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnComposeFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 12387
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$OnComposeFocusChangeListener;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 12389
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$OnComposeFocusChangeListener;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mWeb:Lcom/htc/android/mail/HtcEditableWebView;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$7400(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/HtcEditableWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 12390
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$OnComposeFocusChangeListener;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mWeb:Lcom/htc/android/mail/HtcEditableWebView;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$7400(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/HtcEditableWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/HtcEditableWebView;->onEndSelect()V

    .line 12392
    :cond_0
    return-void
.end method
