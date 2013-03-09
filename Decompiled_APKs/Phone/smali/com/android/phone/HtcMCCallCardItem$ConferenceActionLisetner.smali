.class final Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;
.super Ljava/lang/Object;
.source "HtcMCCallCardItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcMCCallCardItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConferenceActionLisetner"
.end annotation


# static fields
.field static final MAX_ACTION:I = 0x3


# instance fields
.field actionArray:[Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

.field private mConn:Lcom/android/internal/telephony/Connection;

.field private mRecordNum:J

.field private mUserId:J

.field final synthetic this$0:Lcom/android/phone/HtcMCCallCardItem;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcMCCallCardItem;Lcom/android/internal/telephony/Connection;JJ)V
    .locals 1
    .parameter
    .parameter "conn"
    .parameter "id"
    .parameter "recordNum"

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;->this$0:Lcom/android/phone/HtcMCCallCardItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 568
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    iput-object v0, p0, Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;->actionArray:[Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    .line 569
    iput-object p2, p0, Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;->mConn:Lcom/android/internal/telephony/Connection;

    .line 570
    iput-wide p3, p0, Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;->mUserId:J

    .line 571
    iput-wide p5, p0, Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;->mRecordNum:J

    .line 572
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const-wide/16 v5, 0x0

    .line 583
    iget-object v2, p0, Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;->actionArray:[Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    aget-object v0, v2, p2

    .line 586
    .local v0, action:Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;
    const-string v2, "HtcMCCallCardItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conference action, which: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    sget-object v2, Lcom/android/phone/HtcMCCallCardItem$1;->$SwitchMap$com$android$phone$HtcMCCallCardItem$MCItemConferenceAction:[I

    invoke-virtual {v0}, Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 590
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;->mConn:Lcom/android/internal/telephony/Connection;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->separateCall(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 593
    :pswitch_1
    iget-wide v2, p0, Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;->mUserId:J

    cmp-long v2, v2, v5

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;->mRecordNum:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_0

    .line 594
    :cond_1
    iget-wide v2, p0, Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;->mUserId:J

    iget-wide v4, p0, Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;->mRecordNum:J

    iget-object v6, p0, Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;->mConn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/util/contacts/PhoneUtils;->getViewContactIntent(JJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 597
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;->this$0:Lcom/android/phone/HtcMCCallCardItem;

    invoke-virtual {v2}, Lcom/android/phone/HtcMCCallCardItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 602
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;->mConn:Lcom/android/internal/telephony/Connection;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 588
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setActionAt(Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;I)V
    .locals 1
    .parameter "action"
    .parameter "position"

    .prologue
    .line 575
    const/4 v0, 0x3

    if-le p2, v0, :cond_0

    .line 579
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCardItem$ConferenceActionLisetner;->actionArray:[Lcom/android/phone/HtcMCCallCardItem$MCItemConferenceAction;

    aput-object p1, v0, p2

    goto :goto_0
.end method
