.class Lcom/android/phone/HtcCdmaRoamingOptions$MyHandler;
.super Landroid/os/Handler;
.source "HtcCdmaRoamingOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCdmaRoamingOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaRoamingOptions;


# direct methods
.method private constructor <init>(Lcom/android/phone/HtcCdmaRoamingOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/phone/HtcCdmaRoamingOptions$MyHandler;->this$0:Lcom/android/phone/HtcCdmaRoamingOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/HtcCdmaRoamingOptions;Lcom/android/phone/HtcCdmaRoamingOptions$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCdmaRoamingOptions$MyHandler;-><init>(Lcom/android/phone/HtcCdmaRoamingOptions;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 350
    iget v0, p1, Landroid/os/Message;->what:I

    .line 354
    return-void
.end method
