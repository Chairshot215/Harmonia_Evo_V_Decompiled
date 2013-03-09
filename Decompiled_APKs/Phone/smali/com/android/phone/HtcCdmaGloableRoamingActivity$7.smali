.class Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;
.super Landroid/os/Handler;
.source "HtcCdmaGloableRoamingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCdmaGloableRoamingActivity;
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
    .line 192
    iput-object p1, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, -0x1

    const/16 v5, 0xf

    .line 196
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    iget-object v3, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    #getter for: Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->access$000(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->localGetGlobalRoamingOption(Lcom/android/internal/telephony/Phone;)I

    move-result v3

    iput v3, v2, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mCurrentOption:I

    .line 197
    invoke-static {}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentOption:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    iget v4, v4, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mCurrentOption:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 254
    invoke-static {}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialogType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    invoke-virtual {v2}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->finish()V

    .line 259
    :goto_0
    return-void

    .line 204
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->showDialog(I)V

    .line 205
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    #getter for: Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->access$200(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x20200ab

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 206
    .local v0, mLL:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_1

    .line 208
    invoke-static {}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mLL is exist"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    iget-object v2, v2, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 210
    .local v1, tv:Landroid/widget/TextView;
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    iget-object v2, v2, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mContext:Landroid/content/Context;

    const v3, 0x1010040

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 212
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v1, v5, v5, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 213
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_0

    .line 214
    const v2, 0x7f0e01ba

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 217
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 216
    :cond_0
    const v2, 0x7f0e01be

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 220
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_1
    invoke-static {}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mLL is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    .end local v0           #mLL:Landroid/widget/LinearLayout;
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->showDialog(I)V

    goto :goto_0

    .line 226
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    #getter for: Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->access$200(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    if-eqz v2, :cond_2

    sget v2, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialogType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 228
    invoke-static {}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "close activity !!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sput v6, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialogType:I

    .line 230
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    #getter for: Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->access$200(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 231
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    invoke-virtual {v2}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->finish()V

    goto/16 :goto_0

    .line 235
    :cond_2
    invoke-static {}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialogType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    invoke-virtual {v2}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->finish()V

    goto/16 :goto_0

    .line 240
    :pswitch_3
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    #getter for: Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->access$200(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    if-eqz v2, :cond_3

    sget v2, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialogType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 242
    invoke-static {}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "close activity !!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sput v6, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialogType:I

    .line 244
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    #getter for: Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->access$200(Lcom/android/phone/HtcCdmaGloableRoamingActivity;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 245
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    invoke-virtual {v2}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->finish()V

    goto/16 :goto_0

    .line 249
    :cond_3
    invoke-static {}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->mDialogType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v2, p0, Lcom/android/phone/HtcCdmaGloableRoamingActivity$7;->this$0:Lcom/android/phone/HtcCdmaGloableRoamingActivity;

    invoke-virtual {v2}, Lcom/android/phone/HtcCdmaGloableRoamingActivity;->finish()V

    goto/16 :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
