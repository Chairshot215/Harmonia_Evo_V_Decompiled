.class Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$1;
.super Landroid/os/Handler;
.source "HtcDefaultPhoneNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$1;->this$0:Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$1;->this$0:Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;

    #getter for: Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->mPendingNotification:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->access$000(Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$1;->this$0:Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;

    #getter for: Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->mPendingNotification:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->access$000(Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;

    iget-object v0, p0, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$1;->this$0:Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;

    iget v1, v6, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;->event:I

    iget-object v2, v6, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;->sender:Lcom/android/internal/telephony/Phone;

    iget-object v3, v6, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;->reason:Ljava/lang/String;

    iget-object v4, v6, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;->apnType:Ljava/lang/String;

    iget-object v5, v6, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$PendingNotification;->state:Lcom/android/internal/telephony/Phone$DataState;

    #calls: Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->dispatchQueueEvent(ILcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;->access$100(Lcom/android/internal/telephony/HtcDefaultPhoneNotifier;ILcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    const/4 v0, 0x1

    if-le v7, v0, :cond_0

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/HtcDefaultPhoneNotifier$1;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
