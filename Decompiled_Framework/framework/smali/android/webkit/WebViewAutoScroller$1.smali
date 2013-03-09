.class Landroid/webkit/WebViewAutoScroller$1;
.super Landroid/os/Handler;
.source "WebViewAutoScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewAutoScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewAutoScroller;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewAutoScroller;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebViewAutoScroller$1;->this$0:Landroid/webkit/WebViewAutoScroller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewAutoScroller$1;->this$0:Landroid/webkit/WebViewAutoScroller;

    #calls: Landroid/webkit/WebViewAutoScroller;->doAutoScroll(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/webkit/WebViewAutoScroller;->access$000(Landroid/webkit/WebViewAutoScroller;Landroid/os/Message;)V

    :cond_0
    return-void
.end method
