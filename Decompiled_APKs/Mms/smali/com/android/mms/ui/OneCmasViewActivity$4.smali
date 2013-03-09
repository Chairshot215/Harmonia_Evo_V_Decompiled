.class synthetic Lcom/android/mms/ui/OneCmasViewActivity$4;
.super Ljava/lang/Object;
.source "OneCmasViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/OneCmasViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$mms$ui$OneCmasViewActivity$ERecordType1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 456
    invoke-static {}, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->values()[Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/mms/ui/OneCmasViewActivity$4;->$SwitchMap$com$android$mms$ui$OneCmasViewActivity$ERecordType1:[I

    :try_start_0
    sget-object v0, Lcom/android/mms/ui/OneCmasViewActivity$4;->$SwitchMap$com$android$mms$ui$OneCmasViewActivity$ERecordType1:[I

    sget-object v1, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->CMAE_CATEGORY:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    invoke-virtual {v1}, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/mms/ui/OneCmasViewActivity$4;->$SwitchMap$com$android$mms$ui$OneCmasViewActivity$ERecordType1:[I

    sget-object v1, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->CMAE_RESPONSE_TYPE:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    invoke-virtual {v1}, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/mms/ui/OneCmasViewActivity$4;->$SwitchMap$com$android$mms$ui$OneCmasViewActivity$ERecordType1:[I

    sget-object v1, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->CMAE_SEVERITY:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    invoke-virtual {v1}, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/mms/ui/OneCmasViewActivity$4;->$SwitchMap$com$android$mms$ui$OneCmasViewActivity$ERecordType1:[I

    sget-object v1, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->CMAE_URGENCY:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    invoke-virtual {v1}, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/mms/ui/OneCmasViewActivity$4;->$SwitchMap$com$android$mms$ui$OneCmasViewActivity$ERecordType1:[I

    sget-object v1, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->CMAE_CERTAINTY:Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;

    invoke-virtual {v1}, Lcom/android/mms/ui/OneCmasViewActivity$ERecordType1;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
