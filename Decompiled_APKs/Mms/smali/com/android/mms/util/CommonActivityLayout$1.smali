.class synthetic Lcom/android/mms/util/CommonActivityLayout$1;
.super Ljava/lang/Object;
.source "CommonActivityLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/CommonActivityLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$mms$util$CommonActivityLayout$BarImageType:[I

.field static final synthetic $SwitchMap$com$android$mms$util$CommonActivityLayout$BarInputFieldType:[I

.field static final synthetic $SwitchMap$com$android$mms$util$CommonActivityLayout$HeaderHeight:[I

.field static final synthetic $SwitchMap$com$android$mms$util$CommonActivityLayout$HeaderMemberType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 409
    invoke-static {}, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;->values()[Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$BarInputFieldType:[I

    :try_start_0
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$BarInputFieldType:[I

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;->SEARCHBOX:Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$BarInputFieldType:[I

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;->SPINNERBOX:Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;

    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$BarInputFieldType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    .line 370
    :goto_1
    invoke-static {}, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->values()[Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$BarImageType:[I

    :try_start_2
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$BarImageType:[I

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->LABEL:Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$BarImageType:[I

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->BUTTON:Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$BarImageType:[I

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->FRAME:Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$BarImageType:[I

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->QUICK_CONTACT:Lcom/android/mms/util/CommonActivityLayout$BarImageType;

    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$BarImageType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    .line 185
    :goto_5
    invoke-static {}, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->values()[Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$HeaderHeight:[I

    :try_start_6
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$HeaderHeight:[I

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_6
    :try_start_7
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$HeaderHeight:[I

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_MIDDLE:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$HeaderHeight:[I

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_TALL:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    .line 58
    :goto_8
    invoke-static {}, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->values()[Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$HeaderMemberType:[I

    :try_start_9
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$HeaderMemberType:[I

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->TEXT:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_9
    :try_start_a
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$HeaderMemberType:[I

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->IMAGE:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_a
    :try_start_b
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$HeaderMemberType:[I

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->INPUT_FIELD:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_b
    :try_start_c
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$HeaderMemberType:[I

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->DROP_DOWN:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_c
    :try_start_d
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$HeaderMemberType:[I

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->FOOTER_BUTTON:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_d
    :try_start_e
    sget-object v0, Lcom/android/mms/util/CommonActivityLayout$1;->$SwitchMap$com$android$mms$util$CommonActivityLayout$HeaderMemberType:[I

    sget-object v1, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->BUTTON:Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;

    invoke-virtual {v1}, Lcom/android/mms/util/CommonActivityLayout$HeaderMemberType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_e
    return-void

    :catch_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_9

    .line 185
    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_7

    :catch_8
    move-exception v0

    goto :goto_6

    .line 370
    :catch_9
    move-exception v0

    goto/16 :goto_5

    :catch_a
    move-exception v0

    goto/16 :goto_4

    :catch_b
    move-exception v0

    goto/16 :goto_3

    :catch_c
    move-exception v0

    goto/16 :goto_2

    .line 409
    :catch_d
    move-exception v0

    goto/16 :goto_1

    :catch_e
    move-exception v0

    goto/16 :goto_0
.end method
