.class public final Lcom/coremobility/integration/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/i/a;
.implements Lcom/coremobility/integration/k;


# static fields
.field protected static a:[Lcom/coremobility/integration/a/i;

.field private static final c:[Ljava/lang/String;

.field private static e:Lcom/coremobility/integration/aa;

.field private static f:Lcom/coremobility/integration/a/a;


# instance fields
.field private b:Ljava/util/Hashtable;

.field private d:Lcom/coremobility/integration/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/coremobility/integration/a/i;

    const/4 v1, 0x0

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "sdk"

    invoke-direct {v2, v3, v7, v7}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/coremobility/integration/a/i;

    const-string v2, "HERO200"

    invoke-direct {v1, v2, v5, v5}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/coremobility/integration/a/i;

    const-string v2, "SPH-M900"

    invoke-direct {v1, v2, v6, v6}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/coremobility/integration/a/i;

    const-string v2, "PC36100"

    invoke-direct {v1, v2, v8, v5}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/coremobility/integration/a/i;

    const-string v2, "SPH-M910"

    invoke-direct {v1, v2, v9, v6}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/coremobility/integration/a/i;

    const-string v2, "SPH-D700"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3, v6}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v9

    const/4 v1, 0x6

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "PG06100"

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4, v5}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "LS670"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4, v8}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "SPH-M920"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4, v6}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "PG86100"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4, v5}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "SPH-D600"

    const/16 v4, 0xb

    invoke-direct {v2, v3, v4, v6}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "MB855"

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4, v9}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "SPH-D710"

    const/16 v4, 0xd

    invoke-direct {v2, v3, v4, v6}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "PH44100"

    const/16 v4, 0xe

    invoke-direct {v2, v3, v4, v5}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "EVO"

    const/16 v4, 0xf

    invoke-direct {v2, v3, v4, v5}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "HTCEVODesign4G"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4, v5}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/coremobility/integration/a/i;

    const-string v3, "HTCEVOV4G"

    const/16 v4, 0x11

    invoke-direct {v2, v3, v4, v5}, Lcom/coremobility/integration/a/i;-><init>(Ljava/lang/String;II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/integration/a/a;->a:[Lcom/coremobility/integration/a/i;

    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cmconfigstring"

    aput-object v2, v0, v1

    const-string v1, "cmconfigvalue"

    aput-object v1, v0, v7

    const-string v1, "cmconfigdata"

    aput-object v1, v0, v5

    sput-object v0, Lcom/coremobility/integration/a/a;->c:[Ljava/lang/String;

    invoke-static {}, Lcom/coremobility/integration/aa;->a()Lcom/coremobility/integration/aa;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/a/a;->e:Lcom/coremobility/integration/aa;

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/a/a;->f:Lcom/coremobility/integration/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    return-void
.end method

.method public static a()Lcom/coremobility/integration/a/a;
    .locals 12

    const/4 v11, 0x3

    const/4 v6, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/coremobility/integration/a/a;->f:Lcom/coremobility/integration/a/a;

    if-nez v0, :cond_7

    new-instance v4, Lcom/coremobility/integration/a/a;

    invoke-direct {v4}, Lcom/coremobility/integration/a/a;-><init>()V

    sput-object v4, Lcom/coremobility/integration/a/a;->f:Lcom/coremobility/integration/a/a;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coremobility/integration/a/g;

    invoke-direct {v0, v4}, Lcom/coremobility/integration/a/g;-><init>(Lcom/coremobility/integration/a/a;)V

    iput-object v0, v4, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    :cond_0
    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "SIM_CONFIG_VALUE_FAKE_SMS_IP"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x405

    invoke-direct {v3, v4, v5, v6}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "SIM_CONFIG_VALUE_FAKE_SMS_PORT"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x406

    invoke-direct {v3, v4, v5, v6}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "SIM_CONFIG_VALUE_FAKE_SMS_PING_TIME"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x408

    invoke-direct {v3, v4, v5, v6}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "INTERNAL_CONFIG_STR_MMS_LOCATOR_URL"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x1300

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "INTERNAL_CONFIG_STR_MMS_URL_0"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x1320

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "INTERNAL_CONFIG_STR_MMS_URL_1"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x1321

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "INTERNAL_CONFIG_STR_MMS_URL_2"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x1322

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "INTERNAL_CONFIG_STR_MMS_URL_3"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x1323

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "INTERNAL_CONFIG_STR_REST_LOCATOR_URL"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x1800

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "INTERNAL_CONFIG_STR_REST_URL_0"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x1820

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_LOGIN_NAI"

    new-instance v3, Lcom/coremobility/integration/a/d;

    invoke-direct {v3, v4, v6, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_LOGIN_NAI_PW"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_LOGIN_NAI_DOMAIN"

    new-instance v3, Lcom/coremobility/integration/a/d;

    invoke-direct {v3, v4, v11, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_SLOT_NAI"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_SLOT_NAI_PW"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_SLOT_NAI_DOMAIN"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/4 v5, 0x6

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_LOGIN_MDN"

    new-instance v3, Lcom/coremobility/integration/a/d;

    invoke-direct {v3, v4, v2, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_MSID"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0xf

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_MEID"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x12

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_ESN"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0xe

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "SIM_CONFIG_VALUE_ENABLE_FAKE_SMS"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x404

    invoke-direct {v3, v4, v5, v6}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_DEVICE_MODEL"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0xc

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_DEVICE_REVISION"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0xd

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_CARRIER"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x11

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    const-string v1, "TARGET_CONFIG_STR_DEVICE_PLATFORM"

    new-instance v3, Lcom/coremobility/integration/a/d;

    const/16 v5, 0x18

    invoke-direct {v3, v4, v5, v2}, Lcom/coremobility/integration/a/d;-><init>(Lcom/coremobility/integration/a/a;II)V

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v0, Lcom/coremobility/integration/a/e;

    invoke-direct {v0, v4}, Lcom/coremobility/integration/a/e;-><init>(Lcom/coremobility/integration/a/a;)V

    iget-object v1, v4, Lcom/coremobility/integration/a/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/e;->a(Ljava/util/Hashtable;)V

    invoke-virtual {v0}, Lcom/coremobility/integration/a/e;->a()Lcom/coremobility/integration/a/g;

    move-result-object v5

    move v3, v2

    :goto_0
    if-ge v3, v11, :cond_5

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/a/a;->c:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    move v1, v2

    :goto_1
    array-length v0, v6

    if-ge v1, v0, :cond_4

    aget-object v0, v6, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/integration/a/a;->b(Ljava/lang/String;)I

    move-result v8

    invoke-static {v0}, Lcom/coremobility/integration/a/a;->c(Ljava/lang/String;)I

    move-result v9

    if-ltz v8, :cond_2

    if-ltz v9, :cond_2

    aget-object v0, v7, v1

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    aget-object v0, v7, v1

    check-cast v0, Ljava/lang/Integer;

    iget-object v10, v4, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    invoke-virtual {v10, v3}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v8, v9, v0}, Lcom/coremobility/integration/a/f;->a(IILjava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    aget-object v0, v7, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v10

    aget-object v0, v7, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v8, v9, v0}, Lcom/coremobility/integration/a/f;->a(IILjava/lang/String;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    :goto_3
    if-ge v2, v11, :cond_6

    iget-object v0, v4, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    invoke-virtual {v0, v2}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v0

    invoke-virtual {v5, v2}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/f;->a(Lcom/coremobility/integration/a/f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/coremobility/integration/d;->a()Lcom/coremobility/integration/d;

    invoke-static {}, Lcom/coremobility/i/b;->a()Lcom/coremobility/i/b;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/a/a;->f:Lcom/coremobility/integration/a/a;

    invoke-virtual {v0, v1}, Lcom/coremobility/i/b;->a(Lcom/coremobility/i/a;)V

    :cond_7
    sget-object v0, Lcom/coremobility/integration/a/a;->f:Lcom/coremobility/integration/a/a;

    return-object v0
.end method

.method private a(II[B)Z
    .locals 5

    const/4 v3, 0x2

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, p3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/coremobility/integration/a/f;->a(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v3}, Lcom/coremobility/integration/a/a;->f(I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/coremobility/integration/a/a;->b(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    const/16 v1, 0x35

    const/4 v2, 0x0

    const/4 v3, 0x3

    shl-int/lit8 v4, p2, 0x10

    or-int/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(III)I
    .locals 5

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    invoke-virtual {v1, v3}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/coremobility/integration/a/f;->a(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberFormatException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v1, v3, [I

    invoke-static {p1, p2, v1}, Lcom/coremobility/integration/aa;->a(II[I)Z

    move-result v2

    if-ne v2, v3, :cond_1

    aget p3, v1, v0

    :cond_1
    move v0, p3

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v0, -0x1

    const/16 v1, 0x5f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/4 v2, 0x5

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberFormatException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v6, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static b(II)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/a/a;->f:Lcom/coremobility/integration/a/a;

    return-void
.end method

.method private static c(Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v0, -0x1

    const/16 v1, 0x5f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/4 v2, 0x5

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberFormatException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v6, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static e(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    ushr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p0, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static f(I)Landroid/content/SharedPreferences$Editor;
    .locals 3

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/a/a;->c:[Ljava/lang/String;

    aget-object v1, v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/coremobility/integration/aa;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()V
    .locals 1

    sget-object v0, Lcom/coremobility/integration/a/a;->e:Lcom/coremobility/integration/aa;

    invoke-virtual {v0}, Lcom/coremobility/integration/aa;->b()V

    return-void
.end method

.method public static h()V
    .locals 1

    sget-object v0, Lcom/coremobility/integration/a/a;->e:Lcom/coremobility/integration/aa;

    invoke-virtual {v0}, Lcom/coremobility/integration/aa;->c()V

    return-void
.end method


# virtual methods
.method public final a(III)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/coremobility/integration/a/a;->b(III)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/coremobility/i/g;)I
    .locals 6

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/coremobility/i/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CFG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/coremobility/i/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/i/d;->a(Ljava/lang/String;)Lcom/coremobility/i/d;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/coremobility/i/d;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/i/e;

    if-eqz v0, :cond_1

    iget-char v3, v0, Lcom/coremobility/i/e;->a:C

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    :try_start_0
    iget v3, v0, Lcom/coremobility/i/e;->b:I

    iget v4, v0, Lcom/coremobility/i/e;->c:I

    iget-object v0, v0, Lcom/coremobility/i/e;->d:Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v3, v4, v0}, Lcom/coremobility/integration/a/a;->a(II[B)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :sswitch_1
    iget v3, v0, Lcom/coremobility/i/e;->b:I

    iget v4, v0, Lcom/coremobility/i/e;->c:I

    iget-object v0, v0, Lcom/coremobility/i/e;->d:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;Z)Z

    goto :goto_1

    :sswitch_2
    iget v3, v0, Lcom/coremobility/i/e;->b:I

    iget v4, v0, Lcom/coremobility/i/e;->c:I

    iget v0, v0, Lcom/coremobility/i/e;->e:I

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/coremobility/integration/a/a;->a(IIIZ)Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x73 -> :sswitch_1
        0x76 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(IILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILjava/lang/String;[I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    aput v2, p4, v2

    :cond_0
    iget-object v0, p0, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    invoke-virtual {v0, v2}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/coremobility/integration/a/f;->a(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object p3, v0

    :cond_1
    :goto_0
    return-object p3

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1, p2, v0}, Lcom/coremobility/integration/aa;->a(IILjava/lang/StringBuffer;)Z

    move-result v1

    if-ne v1, v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_1

    aput v3, p4, v2

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coremobility/integration/a/f;->a(I)V

    invoke-static {v1}, Lcom/coremobility/integration/a/a;->f(I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1, v1}, Lcom/coremobility/integration/a/a;->b(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final a(II)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/coremobility/integration/a/a;->a(IIIZ)Z

    move-result v0

    return v0
.end method

.method public final a(IIIZ)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    invoke-virtual {v0, v4}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/coremobility/integration/a/f;->a(IILjava/lang/String;)V

    invoke-static {v4}, Lcom/coremobility/integration/a/a;->f(I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/coremobility/integration/a/a;->b(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    const/16 v1, 0x35

    const/4 v2, 0x0

    shl-int/lit8 v3, p2, 0x10

    or-int/2addr v3, p1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_0
    return v4
.end method

.method public final a(IILjava/lang/String;Z)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/coremobility/integration/a/f;->a(IILjava/lang/String;)V

    invoke-static {v1}, Lcom/coremobility/integration/a/a;->f(I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/coremobility/integration/a/a;->b(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    const/16 v1, 0x35

    const/4 v2, 0x0

    const/4 v3, 0x2

    shl-int/lit8 v4, p2, 0x10

    or-int/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b(I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coremobility/integration/a/f;->a(I)V

    invoke-static {v1}, Lcom/coremobility/integration/a/a;->f(I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/coremobility/integration/a/a;->b(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final b(IILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    sget-object v3, Lcom/coremobility/integration/a/a;->a:[Lcom/coremobility/integration/a/i;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/coremobility/integration/a/a;->a:[Lcom/coremobility/integration/a/i;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/coremobility/integration/a/i;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    sget-object v1, Lcom/coremobility/integration/a/a;->a:[Lcom/coremobility/integration/a/i;

    aget-object v0, v1, v0

    iget v1, v0, Lcom/coremobility/integration/a/i;->b:I

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final c(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/a/a;->d:Lcom/coremobility/integration/a/g;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/coremobility/integration/a/f;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    sget-object v3, Lcom/coremobility/integration/a/a;->a:[Lcom/coremobility/integration/a/i;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/coremobility/integration/a/a;->a:[Lcom/coremobility/integration/a/i;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/coremobility/integration/a/i;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    sget-object v1, Lcom/coremobility/integration/a/a;->a:[Lcom/coremobility/integration/a/i;

    aget-object v0, v1, v0

    iget v1, v0, Lcom/coremobility/integration/a/i;->c:I

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final d(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x404

    invoke-direct {p0, v2, v1, v1}, Lcom/coremobility/integration/a/a;->b(III)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final i()V
    .locals 14

    const/4 v13, 0x5

    const/4 v0, 0x2

    const/4 v12, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v9

    const/16 v3, 0x502

    invoke-virtual {p0, v3, v2, v12, v12}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p0, v2, v2, v4, v12}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v10

    const/16 v4, 0x503

    invoke-virtual {p0, v4, v2, v12, v12}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {p0, v1, v2, v5, v12}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;[I)Ljava/lang/String;

    move-result-object v11

    if-eqz v3, :cond_6

    invoke-virtual {v10, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_6

    move v6, v1

    :goto_0
    if-eqz v4, :cond_7

    invoke-virtual {v11, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_7

    move v5, v1

    :goto_1
    if-nez v3, :cond_10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_10

    move v8, v1

    :goto_2
    if-nez v4, :cond_f

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_f

    move v7, v1

    :goto_3
    if-nez v8, :cond_0

    if-eqz v7, :cond_1

    :cond_0
    if-eqz v8, :cond_9

    invoke-static {v10}, Lcom/coremobility/j/s;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v6, v0

    :goto_4
    if-eqz v7, :cond_c

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    move v5, v1

    :goto_5
    if-eqz v5, :cond_b

    :goto_6
    const/16 v1, 0x3c

    invoke-virtual {v9, v1, v12, v6, v0}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_1
    if-eqz v3, :cond_2

    if-eqz v8, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v3, :cond_d

    move-object v0, v3

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v13, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x502

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;Z)Z

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v7, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nai "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v4, :cond_e

    move-object v0, v4

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v13, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x503

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/coremobility/integration/a/a;->a(IILjava/lang/String;Z)Z

    :cond_5
    return-void

    :cond_6
    move v6, v2

    goto/16 :goto_0

    :cond_7
    move v5, v2

    goto/16 :goto_1

    :cond_8
    move v6, v1

    goto :goto_4

    :cond_9
    move v6, v2

    goto :goto_4

    :cond_a
    move v5, v2

    goto :goto_5

    :cond_b
    move v0, v1

    goto :goto_6

    :cond_c
    move v0, v2

    goto :goto_6

    :cond_d
    const-string v0, "null"

    goto :goto_7

    :cond_e
    const-string v0, "null"

    goto :goto_8

    :cond_f
    move v7, v5

    goto/16 :goto_3

    :cond_10
    move v8, v6

    goto/16 :goto_2
.end method
