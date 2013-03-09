.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$StatusBarHandler;
.super Landroid/os/Handler;
.source "PhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusBarHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "PhoneStatusBarPolicy"

    const-string v1, "StatusBarHandler, EVENT_FORCE_UPDATE_DATA_ICON"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$StatusBarHandler;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch
.end method
