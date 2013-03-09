.class Lcom/android/browser/Tab$6;
.super Landroid/os/Handler;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab;-><init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter

    .prologue
    .line 1462
    iput-object p1, p0, Lcom/android/browser/Tab$6;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 1465
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1470
    :goto_0
    return-void

    .line 1467
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/Tab$6;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->capture()V

    goto :goto_0

    .line 1465
    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch
.end method
