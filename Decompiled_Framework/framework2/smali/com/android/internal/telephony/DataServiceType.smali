.class public final enum Lcom/android/internal/telephony/DataServiceType;
.super Ljava/lang/Enum;
.source "DataServiceType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataServiceType$1;,
        Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataServiceType;

.field public static final enum SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

.field public static final enum SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

.field public static final enum SERVICE_TYPE_DUN:Lcom/android/internal/telephony/DataServiceType;

.field public static final enum SERVICE_TYPE_HIPRI:Lcom/android/internal/telephony/DataServiceType;

.field public static final enum SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

.field public static final enum SERVICE_TYPE_MMS:Lcom/android/internal/telephony/DataServiceType;

.field public static final enum SERVICE_TYPE_SUPL:Lcom/android/internal/telephony/DataServiceType;

.field public static final enum SERVICE_TYPE_VERIZON:Lcom/android/internal/telephony/DataServiceType;

.field private static final servComp:Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;


# instance fields
.field index:I

.field priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/android/internal/telephony/DataServiceType;

    const-string v1, "SERVICE_TYPE_DEFAULT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/android/internal/telephony/DataServiceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    new-instance v0, Lcom/android/internal/telephony/DataServiceType;

    const-string v1, "SERVICE_TYPE_MMS"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/android/internal/telephony/DataServiceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MMS:Lcom/android/internal/telephony/DataServiceType;

    new-instance v0, Lcom/android/internal/telephony/DataServiceType;

    const-string v1, "SERVICE_TYPE_SUPL"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/android/internal/telephony/DataServiceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_SUPL:Lcom/android/internal/telephony/DataServiceType;

    new-instance v0, Lcom/android/internal/telephony/DataServiceType;

    const-string v1, "SERVICE_TYPE_DUN"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/android/internal/telephony/DataServiceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DUN:Lcom/android/internal/telephony/DataServiceType;

    new-instance v0, Lcom/android/internal/telephony/DataServiceType;

    const-string v1, "SERVICE_TYPE_HIPRI"

    const/16 v2, 0x78

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/android/internal/telephony/DataServiceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_HIPRI:Lcom/android/internal/telephony/DataServiceType;

    new-instance v0, Lcom/android/internal/telephony/DataServiceType;

    const-string v1, "SERVICE_TYPE_VERIZON"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/16 v4, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/DataServiceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_VERIZON:Lcom/android/internal/telephony/DataServiceType;

    new-instance v0, Lcom/android/internal/telephony/DataServiceType;

    const-string v1, "SERVICE_TYPE_ADMIN"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0x8c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/DataServiceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    new-instance v0, Lcom/android/internal/telephony/DataServiceType;

    const-string v1, "SERVICE_TYPE_IMS"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x96

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/DataServiceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/DataServiceType;

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MMS:Lcom/android/internal/telephony/DataServiceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_SUPL:Lcom/android/internal/telephony/DataServiceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DUN:Lcom/android/internal/telephony/DataServiceType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_HIPRI:Lcom/android/internal/telephony/DataServiceType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_VERIZON:Lcom/android/internal/telephony/DataServiceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->$VALUES:[Lcom/android/internal/telephony/DataServiceType;

    new-instance v0, Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;-><init>(Lcom/android/internal/telephony/DataServiceType$1;)V

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->servComp:Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/internal/telephony/DataServiceType;->index:I

    iput p4, p0, Lcom/android/internal/telephony/DataServiceType;->priority:I

    return-void
.end method

.method public static apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;
    .locals 1

    const-string v0, "default"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DEFAULT:Lcom/android/internal/telephony/DataServiceType;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "mms"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MMS:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_0

    :cond_1
    const-string v0, "supl"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_SUPL:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_0

    :cond_2
    const-string v0, "dun"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_DUN:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_0

    :cond_3
    const-string v0, "hipri"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_HIPRI:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_0

    :cond_4
    const-string v0, "verizon"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_VERIZON:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_0

    :cond_5
    const-string v0, "admin"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_0

    :cond_6
    const-string v0, "ims"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPrioritySortedValues()[Lcom/android/internal/telephony/DataServiceType;
    .locals 2

    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    invoke-virtual {v1}, [Lcom/android/internal/telephony/DataServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataServiceType;

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->servComp:Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/DataServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataServiceType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/DataServiceType;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->$VALUES:[Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataServiceType;

    return-object v0
.end method


# virtual methods
.method public getid()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/DataServiceType;->index:I

    return v0
.end method

.method public getprio()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/DataServiceType;->priority:I

    return v0
.end method

.method public isHigherPriorityThan(Lcom/android/internal/telephony/DataServiceType;)Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/DataServiceType;->priority:I

    iget v1, p1, Lcom/android/internal/telephony/DataServiceType;->priority:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLowerPriorityThan(Lcom/android/internal/telephony/DataServiceType;)Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/DataServiceType;->priority:I

    iget v1, p1, Lcom/android/internal/telephony/DataServiceType;->priority:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setprio(I)I
    .locals 1

    iput p1, p0, Lcom/android/internal/telephony/DataServiceType;->priority:I

    iget v0, p0, Lcom/android/internal/telephony/DataServiceType;->priority:I

    return v0
.end method

.method protected toApnTypeString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/DataServiceType$1;->$SwitchMap$com$android$internal$telephony$DataServiceType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "default"

    goto :goto_0

    :pswitch_1
    const-string v0, "mms"

    goto :goto_0

    :pswitch_2
    const-string v0, "supl"

    goto :goto_0

    :pswitch_3
    const-string v0, "dun"

    goto :goto_0

    :pswitch_4
    const-string v0, "hipri"

    goto :goto_0

    :pswitch_5
    const-string v0, "verizon"

    goto :goto_0

    :pswitch_6
    const-string v0, "admin"

    goto :goto_0

    :pswitch_7
    const-string v0, "ims"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
