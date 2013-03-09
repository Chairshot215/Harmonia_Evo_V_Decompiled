.class Lcom/android/phone/CallCard$1;
.super Ljava/lang/Object;
.source "CallCard.java"

# interfaces
.implements Lcom/android/phone/CallCard$OnRichPhoneCanvasQueryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallCard;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCard;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRichPhoneCanvasQueryComplete(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 430
    sget-boolean v0, Lcom/android/phone/widget/SNStatusPanel;->ENABLE_CALLER_ID_ENHANCEMENT:Z

    if-eqz v0, :cond_3

    .line 431
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->SN_status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mSNStatusPanel:Lcom/android/phone/widget/SNStatusPanel;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$100(Lcom/android/phone/CallCard;)Lcom/android/phone/widget/SNStatusPanel;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->SN_status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/SNStatusPanel;->setStatus(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mSNStatusPanel:Lcom/android/phone/widget/SNStatusPanel;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$100(Lcom/android/phone/CallCard;)Lcom/android/phone/widget/SNStatusPanel;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/phone/widget/SNStatusPanel;->setVisibility(I)V

    .line 438
    :goto_0
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->SN_icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mSNStatusPanel:Lcom/android/phone/widget/SNStatusPanel;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$100(Lcom/android/phone/CallCard;)Lcom/android/phone/widget/SNStatusPanel;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->SN_icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/SNStatusPanel;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mSNStatusPanel:Lcom/android/phone/widget/SNStatusPanel;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$100(Lcom/android/phone/CallCard;)Lcom/android/phone/widget/SNStatusPanel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->SN_timestamp:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->SN_label_clause:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mSNStatusPanel:Lcom/android/phone/widget/SNStatusPanel;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$100(Lcom/android/phone/CallCard;)Lcom/android/phone/widget/SNStatusPanel;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->SN_timestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->SN_label_clause:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/widget/SNStatusPanel;->setTimestampLabel(JLjava/lang/CharSequence;)V

    .line 465
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->date:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 466
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mEvent:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$400(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mEventLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$500(Lcom/android/phone/CallCard;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 471
    :goto_2
    return-void

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mSNStatusPanel:Lcom/android/phone/widget/SNStatusPanel;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$100(Lcom/android/phone/CallCard;)Lcom/android/phone/widget/SNStatusPanel;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/phone/widget/SNStatusPanel;->setVisibility(I)V

    goto :goto_0

    .line 448
    :cond_3
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->SN_status:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 449
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$200(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->SN_status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$200(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$200(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 452
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->startSNStatusMarquee()V

    .line 458
    :goto_3
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->SN_icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->SN_icon:Landroid/graphics/drawable/Drawable;

    #calls: Lcom/android/phone/CallCard;->setPhotoImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/CallCard;->access$300(Lcom/android/phone/CallCard;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 454
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$200(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 469
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallCard$1;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mEventLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/phone/CallCard;->access$500(Lcom/android/phone/CallCard;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method
