.class Lcom/android/settings/wifi/RedirectDialog$WifiServiceHandler;
.super Landroid/os/Handler;
.source "RedirectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/RedirectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/RedirectDialog;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/RedirectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/wifi/RedirectDialog$WifiServiceHandler;->this$0:Lcom/android/settings/wifi/RedirectDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/RedirectDialog;Lcom/android/settings/wifi/RedirectDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/RedirectDialog$WifiServiceHandler;-><init>(Lcom/android/settings/wifi/RedirectDialog;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 94
    return-void
.end method
