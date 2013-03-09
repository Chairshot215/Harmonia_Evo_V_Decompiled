.class Lcom/android/phone/HtcWorldPhoneOptions$6;
.super Ljava/lang/Object;
.source "HtcWorldPhoneOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcWorldPhoneOptions;->quickSelectPreferredNetworkMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcWorldPhoneOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcWorldPhoneOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/android/phone/HtcWorldPhoneOptions$6;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1024
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions$6;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    #getter for: Lcom/android/phone/HtcWorldPhoneOptions;->mHandlerForModeOperation:Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;
    invoke-static {v1}, Lcom/android/phone/HtcWorldPhoneOptions;->access$400(Lcom/android/phone/HtcWorldPhoneOptions;)Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/phone/HtcWorldPhoneOptions$HandlerForModeOperation;->removeMessages(I)V

    .line 1026
    const/4 v0, 0x7

    .line 1027
    .local v0, modeSelected:I
    packed-switch p2, :pswitch_data_0

    .line 1038
    :goto_0
    iget-object v1, p0, Lcom/android/phone/HtcWorldPhoneOptions$6;->this$0:Lcom/android/phone/HtcWorldPhoneOptions;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/HtcWorldPhoneOptions;->handlePreferredNetworkModeChange(Ljava/lang/Object;)Z
    invoke-static {v1, v2}, Lcom/android/phone/HtcWorldPhoneOptions;->access$1500(Lcom/android/phone/HtcWorldPhoneOptions;Ljava/lang/Object;)Z

    .line 1040
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1041
    return-void

    .line 1029
    :pswitch_0
    const/4 v0, 0x7

    .line 1030
    goto :goto_0

    .line 1032
    :pswitch_1
    const/4 v0, 0x4

    .line 1033
    goto :goto_0

    .line 1035
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1027
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
