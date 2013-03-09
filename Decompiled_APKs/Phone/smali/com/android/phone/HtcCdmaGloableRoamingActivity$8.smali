.class Lcom/android/phone/HtcCdmaGloableRoamingActivity$8;
.super Ljava/lang/Object;
.source "HtcCdmaGloableRoamingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcCdmaGloableRoamingActivity;->initFullOptionClickListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$8;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 267
    packed-switch p2, :pswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 270
    :pswitch_0
    sget v0, Lcom/android/phone/HtcCdmaPhoneApp;->nHomeRoaming:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$8;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    iget-object v0, v0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->getMobileDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$8;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    #getter for: Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->access$000(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->localGetGlobalRoamingOption(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$8;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    invoke-virtual {v0, v2}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->showDialog(I)V

    .line 275
    sput-boolean v1, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->hasShowAllowDialog:Z

    .line 279
    :goto_1
    iget-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$8;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    #getter for: Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->access$000(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->localSetGlobalRoamingOption(Lcom/android/internal/telephony/Phone;I)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$8;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    invoke-virtual {v0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->finish()V

    goto :goto_1

    .line 284
    :pswitch_1
    sget v0, Lcom/android/phone/HtcCdmaPhoneApp;->nHomeRoaming:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$8;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    iget-object v0, v0, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->getMobileDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$8;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    #getter for: Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->access$000(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->localGetGlobalRoamingOption(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$8;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    invoke-virtual {v0, v2}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->showDialog(I)V

    .line 289
    sput-boolean v1, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->hasShowAllowDialog:Z

    .line 293
    :goto_2
    iget-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$8;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    #getter for: Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->access$000(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->localSetGlobalRoamingOption(Lcom/android/internal/telephony/Phone;I)V

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$8;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    invoke-virtual {v0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->finish()V

    goto :goto_2

    .line 296
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$8;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    #getter for: Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->access$000(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->localSetGlobalRoamingOption(Lcom/android/internal/telephony/Phone;I)V

    .line 297
    iget-object v0, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$8;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    invoke-virtual {v0}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->finish()V

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
