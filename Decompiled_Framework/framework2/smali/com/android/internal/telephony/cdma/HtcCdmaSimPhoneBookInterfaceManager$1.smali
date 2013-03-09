.class Lcom/android/internal/telephony/cdma/HtcCdmaSimPhoneBookInterfaceManager$1;
.super Landroid/os/Handler;
.source "HtcCdmaSimPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaSimPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/HtcCdmaSimPhoneBookInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/HtcCdmaSimPhoneBookInterfaceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaSimPhoneBookInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDropEvent:Z

    if-eqz v0, :cond_0

    const-string v0, "CDMASimPhoneBook"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " HtcCdmaSimPhoneBookInterfaceManager drop event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaSimPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/HtcCdmaSimPhoneBookInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaSimPhoneBookInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/HtcCdmaSimPhoneBookInterfaceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
