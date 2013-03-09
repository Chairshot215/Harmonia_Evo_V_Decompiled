.class Lcom/googlecode/android/wifi/tether/TetherApplication$2;
.super Landroid/os/Handler;
.source "TetherApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/android/wifi/tether/TetherApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/TetherApplication;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/TetherApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/TetherApplication$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherApplication;

    .line 551
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherApplication$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherApplication;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/TetherApplication;->showShutdownNotification()V

    .line 554
    return-void
.end method
