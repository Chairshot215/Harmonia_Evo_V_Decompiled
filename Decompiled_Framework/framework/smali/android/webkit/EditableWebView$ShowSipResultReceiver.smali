.class Landroid/webkit/EditableWebView$ShowSipResultReceiver;
.super Landroid/os/ResultReceiver;
.source "EditableWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShowSipResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/EditableWebView;


# direct methods
.method public constructor <init>(Landroid/webkit/EditableWebView;)V
    .locals 1

    iput-object p1, p0, Landroid/webkit/EditableWebView$ShowSipResultReceiver;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {p1}, Landroid/webkit/EditableWebView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebView$ShowSipResultReceiver;->this$0:Landroid/webkit/EditableWebView;

    const/4 v1, 0x1

    #setter for: Landroid/webkit/EditableWebView;->predrawForSIPShown:Z
    invoke-static {v0, v1}, Landroid/webkit/EditableWebView;->access$002(Landroid/webkit/EditableWebView;Z)Z

    iget-object v0, p0, Landroid/webkit/EditableWebView$ShowSipResultReceiver;->this$0:Landroid/webkit/EditableWebView;

    #calls: Landroid/webkit/EditableWebView;->registerForPreDraw()V
    invoke-static {v0}, Landroid/webkit/EditableWebView;->access$100(Landroid/webkit/EditableWebView;)V

    :cond_0
    return-void
.end method
