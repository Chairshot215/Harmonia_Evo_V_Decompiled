.class Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;
.super Ljava/lang/Object;
.source "HtcUsimPBRParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbrFile"
.end annotation


# static fields
.field public static final PBR_MAX_RECORDS:I = 0x4


# instance fields
.field anrNums:I

.field emailNums:I

.field mADNOrder:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mANRNums:I

.field mEmailNums:I

.field mFileIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field mIAPOrder:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mSFIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mSFIds:Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mADNOrder:Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mIAPOrder:Ljava/util/HashMap;

    iput v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mANRNums:I

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const/4 v4, 0x4

    if-lt v1, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v4, v3

    invoke-direct {v2, v3, v5, v4}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SimTlv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    const/4 v5, 0x1

    const-string v6, "HtcUsimPBRParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parentTag  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "HtcUsimPBRParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recNum  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v4

    const-string v6, "HtcUsimPBRParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tag  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_0
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0xa9

    if-ne p3, v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mIAPOrder:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mANRNums:I

    iget v7, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->anrNums:I

    if-ge v6, v7, :cond_3

    iget v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->anrNums:I

    iput v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mANRNums:I

    :cond_3
    iget v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mEmailNums:I

    iget v7, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->emailNums:I

    if-ge v6, v7, :cond_4

    iget v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->emailNums:I

    iput v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mEmailNums:I

    :cond_4
    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    const/4 v6, 0x0

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x1

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    or-int v1, v6, v7

    const/4 v2, 0x0

    iget v6, p1, Lcom/android/internal/telephony/gsm/SimTlv;->curDataLength:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    const/4 v6, 0x2

    aget-byte v6, v0, v6

    and-int/lit16 v2, v6, 0xff

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mSFIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mSFIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v6, "HtcUsimPBRParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "efsfi  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v6, "HtcUsimPBRParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "efid  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0xc4

    if-ne v4, v6, :cond_b

    iget v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->anrNums:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->anrNums:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->anrNums:I

    :goto_1
    const/16 v6, 0xc0

    if-ne v4, v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mADNOrder:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    add-int/lit8 v8, p4, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/16 v6, 0xa9

    if-ne p3, v6, :cond_a

    const/16 v6, 0xca

    if-ne v4, v6, :cond_8

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    #setter for: Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mEmailPresentInIAP:Ljava/lang/Boolean;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->access$002(Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :cond_8
    const/16 v6, 0xc4

    if-ne v4, v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    #getter for: Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mANRPresentInIAP:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->access$100(Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "HtcUsimPBRParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tagNumberWithinParentTag  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/16 v6, 0xa8

    if-ne p3, v6, :cond_1

    const/16 v6, 0xc4

    if-ne v4, v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    #getter for: Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mANRPresentInIAP:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->access$100(Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const/16 v6, 0xca

    if-ne v4, v6, :cond_d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->emailNums:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->emailNums:I

    goto/16 :goto_1

    :cond_d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .locals 7

    const/4 v6, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->anrNums:I

    iput v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->emailNums:I

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v5, v0

    invoke-direct {v2, v0, v6, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    invoke-virtual {p0, v2, v4, v1, p2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;II)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
