.class Lcom/android/settings/wifi/WpsDialog$WifiServiceHandler;
.super Landroid/os/Handler;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WpsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WpsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog$WifiServiceHandler;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WpsDialog$WifiServiceHandler;-><init>(Lcom/android/settings/wifi/WpsDialog;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 428
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 430
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    .line 434
    const-string v0, "WpsDialog"

    const-string v1, "Failed to establish AsyncChannel connection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_0
    .end packed-switch
.end method
