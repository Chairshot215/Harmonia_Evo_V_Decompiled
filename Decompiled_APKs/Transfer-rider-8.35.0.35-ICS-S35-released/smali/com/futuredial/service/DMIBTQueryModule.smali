.class public Lcom/futuredial/service/DMIBTQueryModule;
.super Lcom/futuredial/service/DMIFunctionModule;
.source "DMIBTQueryModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/service/DMIBTQueryModule$1;,
        Lcom/futuredial/service/DMIBTQueryModule$query_history_thread;,
        Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;,
        Lcom/futuredial/service/DMIBTQueryModule$SDPReceiver;
    }
.end annotation


# static fields
.field public static final DMI_BT_FETCHUUIDSWITHSDP_ACTION:I = 0x137

.field public static final DMI_BT_LOADPHONECFG_END_ACTION:I = 0x133

.field public static final DMI_BT_LOADPHONECFG_START_ACTION:I = 0x12f

.field public static final DMI_BT_NOT_SUPPORT_ACTION:I = 0x136

.field public static final DMI_BT_PHONE_CONFIG_ACTION:I = 0x132

.field public static final DMI_BT_PHONE_MODEL_ACTION:I = 0x130

.field public static final DMI_BT_PHONE_MOD_CONFIG_ACTION:I = 0x131

.field public static final DMI_BT_QUERY_FAIL_ACTION:I = 0x12d

.field public static final DMI_BT_QUERY_FAIL_TIMEOUT_ACTION:I = 0x12e

.field public static final DMI_BT_QUERY_START_ACTION:I = 0x12c

.field public static final DMI_DMI_HISTORY_ACTION:I = 0x134

.field public static final DMI_DMI_IMPORTED_MODS_ACTION:I = 0x135

.field static QUERY_FAIL_TIMEOUT_LIMIT:I


# instance fields
.field TAG:Ljava/lang/String;

.field listManufactures:[Ljava/lang/String;

.field m_apiRunner:Lcom/futuredial/service/BTHideAPIRunner;

.field m_bGotIt:Z

.field m_curPhoneModel:Ljava/lang/String;

.field m_failedCount:I

.field m_phone:Lcom/futuredial/service/DMIPhone;

.field m_phoneModel:Ljava/lang/String;

.field m_sdpRec:Lcom/futuredial/service/DMIBTQueryModule$SDPReceiver;

.field m_target:Lcom/futuredial/service/DMIBTDevice;

.field m_uuids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x3

    sput v0, Lcom/futuredial/service/DMIBTQueryModule;->QUERY_FAIL_TIMEOUT_LIMIT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 35
    invoke-direct {p0}, Lcom/futuredial/service/DMIFunctionModule;-><init>()V

    .line 37
    const-string v0, "DMI Service - Query"

    iput-object v0, p0, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    .line 55
    iput-object v3, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_target:Lcom/futuredial/service/DMIBTDevice;

    .line 56
    iput-object v3, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_phoneModel:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_curPhoneModel:Ljava/lang/String;

    .line 60
    iput v2, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_failedCount:I

    .line 61
    iput-object v3, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_apiRunner:Lcom/futuredial/service/BTHideAPIRunner;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_uuids:Ljava/util/Set;

    .line 64
    new-instance v0, Lcom/futuredial/service/DMIBTQueryModule$SDPReceiver;

    invoke-direct {v0, p0, v3}, Lcom/futuredial/service/DMIBTQueryModule$SDPReceiver;-><init>(Lcom/futuredial/service/DMIBTQueryModule;Lcom/futuredial/service/DMIBTQueryModule$1;)V

    iput-object v0, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_sdpRec:Lcom/futuredial/service/DMIBTQueryModule$SDPReceiver;

    .line 65
    iput-boolean v2, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_bGotIt:Z

    .line 66
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Nokia"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "BlackBerry"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Samsung"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "LG"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "HTC"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Sony Ericsson"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Motorola"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Sharp"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/futuredial/service/DMIBTQueryModule;->listManufactures:[Ljava/lang/String;

    .line 445
    iput-object v3, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_phone:Lcom/futuredial/service/DMIPhone;

    return-void
.end method

.method private IfInManufacturesList(Ljava/lang/String;)Z
    .locals 7
    .parameter "phonemodel"

    .prologue
    .line 170
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IfInManufacturesList?->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/futuredial/service/DMIBTQueryModule;->listManufactures:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 172
    .local v3, model:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    const/4 v4, 0x1

    .line 175
    .end local v3           #model:Ljava/lang/String;
    :goto_1
    return v4

    .line 171
    .restart local v3       #model:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v3           #model:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private IfInSpecialList(Ljava/lang/String;)Z
    .locals 3
    .parameter "phonemodel"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IfInSpecialList?->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nokia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sony ericsson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "htc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "blackberry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private IfIsRIM(Ljava/lang/String;)Z
    .locals 3
    .parameter "phonemodel"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IfIsRIM?->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "blackberry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/futuredial/service/DMIBTQueryModule;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/futuredial/service/DMIBTQueryModule;->has_dun(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/futuredial/service/DMIBTQueryModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/futuredial/service/DMIBTQueryModule;->query_xml()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/futuredial/service/DMIBTQueryModule;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/futuredial/service/DMIBTQueryModule;->IfInManufacturesList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/futuredial/service/DMIBTQueryModule;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/futuredial/service/DMIBTQueryModule;->IfInSpecialList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/futuredial/service/DMIBTQueryModule;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/futuredial/service/DMIBTQueryModule;->IfIsRIM(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/futuredial/service/DMIBTQueryModule;Ljava/util/ArrayList;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/futuredial/service/DMIBTQueryModule;->do_pbap(Ljava/util/ArrayList;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/futuredial/service/DMIBTQueryModule;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/futuredial/service/DMIBTQueryModule;->do_pbap(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private do_pbap(Ljava/util/ArrayList;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, uuidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    const-string v3, "do_pbap"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0, p1}, Lcom/futuredial/service/DMIBTQueryModule;->has_pbap(Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    const-string v3, "user rejected connection request, and there\'s no PBAP -> MUST resume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget v2, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_failedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_failedCount:I

    .line 184
    iget v2, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_failedCount:I

    sget v3, Lcom/futuredial/service/DMIBTQueryModule;->QUERY_FAIL_TIMEOUT_LIMIT:I

    if-lt v2, v3, :cond_0

    .line 185
    const/16 v2, 0x12e

    invoke-virtual {p0, v2}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(I)Z

    .line 200
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 187
    :cond_0
    const/16 v2, 0x12d

    invoke-virtual {p0, v2}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(I)Z

    goto :goto_0

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    const-string v3, "work with PBAP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    iget-object v2, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_service:Landroid/app/Service;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;-><init>(Landroid/app/Service;Ljava/lang/Integer;)V

    .line 192
    .local v0, pbMod:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    const-string v2, "default"

    iput-object v2, v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_policy:Ljava/lang/String;

    .line 193
    const/16 v2, 0x131

    invoke-virtual {p0, v2, v0}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(ILjava/lang/Object;)Z

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v1, phoneCfg:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "PBAP_TYPE_1"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    const/16 v2, 0x132

    invoke-virtual {p0, v2, v1}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(ILjava/lang/Object;)Z

    .line 198
    const/16 v2, 0x133

    invoke-virtual {p0, v2}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(I)Z

    goto :goto_0
.end method

.method private do_pbap(Ljava/util/ArrayList;Z)Z
    .locals 5
    .parameter
    .parameter "bToUI"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p1, uuidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 204
    invoke-direct {p0, p1}, Lcom/futuredial/service/DMIBTQueryModule;->has_pbap(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    iget-object v3, p0, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    const-string v4, "work with PBAP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    iget-object v3, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_service:Landroid/app/Service;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;-><init>(Landroid/app/Service;Ljava/lang/Integer;)V

    .line 209
    .local v0, pbMod:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    const-string v2, "default"

    iput-object v2, v0, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_policy:Ljava/lang/String;

    .line 210
    const/16 v2, 0x131

    invoke-virtual {p0, v2, v0}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(ILjava/lang/Object;)Z

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v1, phoneCfg:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "PBAP_TYPE_1"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    const/16 v2, 0x132

    invoke-virtual {p0, v2, v1}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(ILjava/lang/Object;)Z

    .line 215
    const/16 v2, 0x133

    invoke-virtual {p0, v2}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(I)Z

    .line 216
    const/4 v2, 0x1

    .line 221
    .end local v0           #pbMod:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    .end local v1           #phoneCfg:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return v2

    .line 218
    :cond_0
    iget-object v3, p0, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    const-string v4, "not supported phone model.(no modem, no pbap)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/16 v3, 0x136

    invoke-virtual {p0, v3}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(I)Z

    goto :goto_0
.end method

.method private has_dun(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, uuidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->DUN_UUID_STR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private has_pbap(Ljava/util/ArrayList;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, uuidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    const-string v1, "has_pbap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-object v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->PBAP_PSE_UUID_STR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/futuredial/bluetooth/BtQueryManufacturer;->BDCOM_PBAP_UUID_STR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private query_xml()Z
    .locals 18

    .prologue
    .line 227
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/service/DMIBTQueryModule;->m_service:Landroid/app/Service;

    invoke-virtual {v14}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 228
    .local v1, am:Landroid/content/res/AssetManager;
    const/4 v12, 0x0

    .line 231
    .local v12, returnStringXml:Ljava/io/InputStream;
    :try_start_0
    const-string v14, "ReturnString.xml"

    invoke-virtual {v1, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 232
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v13

    .line 233
    .local v13, xpath:Ljavax/xml/xpath/XPath;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 234
    .local v2, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 235
    .local v3, doc:Lorg/w3c/dom/Document;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/returnstrings/rs[@value=\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/futuredial/service/DMIBTQueryModule;->m_phoneModel:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\']"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v13, v14, v3, v15}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Node;

    .line 236
    .local v7, node:Lorg/w3c/dom/Node;
    if-nez v7, :cond_0

    .line 238
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    const-string v15, "not supported phone model.(no record in xml)"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #doc:Lorg/w3c/dom/Document;
    .end local v7           #node:Lorg/w3c/dom/Node;
    .end local v13           #xpath:Ljavax/xml/xpath/XPath;
    :goto_0
    const/4 v14, 0x0

    :goto_1
    return v14

    .line 243
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #doc:Lorg/w3c/dom/Document;
    .restart local v7       #node:Lorg/w3c/dom/Node;
    .restart local v13       #xpath:Ljavax/xml/xpath/XPath;
    :cond_0
    move-object v0, v7

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v4, v0

    .line 244
    .local v4, e:Lorg/w3c/dom/Element;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v9, phoneCfg:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v14, "communication"

    invoke-interface {v4, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, phoneProcType:Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v14, "info"

    invoke-interface {v4, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, phoneCfgInfo:Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    const/16 v14, 0x132

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v9}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(ILjava/lang/Object;)Z

    .line 251
    const/4 v5, 0x0

    .local v5, midx:I
    :goto_2
    sget-object v14, Lcom/futuredial/config/Constants;->supportedModXMLmarks:[Ljava/lang/String;

    array-length v14, v14

    if-ge v5, v14, :cond_2

    .line 253
    const-string v14, "module[@type=\'%s\']"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    sget-object v17, Lcom/futuredial/config/Constants;->supportedModXMLmarks:[Ljava/lang/String;

    aget-object v17, v17, v5

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v13, v14, v7, v15}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Node;

    .line 254
    .local v8, nodeMod:Lorg/w3c/dom/Node;
    if-eqz v8, :cond_1

    .line 256
    new-instance v6, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/futuredial/service/DMIBTQueryModule;->m_service:Landroid/app/Service;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v6, v14, v15}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;-><init>(Landroid/app/Service;Ljava/lang/Integer;)V

    .line 257
    .local v6, mod:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    check-cast v8, Lorg/w3c/dom/Element;

    .end local v8           #nodeMod:Lorg/w3c/dom/Node;
    const-string v14, "policy"

    invoke-interface {v8, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v6, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_policy:Ljava/lang/String;

    .line 258
    invoke-virtual {v6, v10}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->SetPhoneInfo(Ljava/lang/String;)V

    .line 259
    const/16 v14, 0x131

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(ILjava/lang/Object;)Z

    .line 251
    .end local v6           #mod:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 262
    :cond_2
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 263
    const/16 v14, 0x133

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/futuredial/service/DMIBTQueryModule;->SendMsg(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    const/4 v14, 0x1

    goto :goto_1

    .line 267
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #doc:Lorg/w3c/dom/Document;
    .end local v4           #e:Lorg/w3c/dom/Element;
    .end local v5           #midx:I
    .end local v7           #node:Lorg/w3c/dom/Node;
    .end local v9           #phoneCfg:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #phoneCfgInfo:Ljava/lang/String;
    .end local v11           #phoneProcType:Ljava/lang/String;
    .end local v13           #xpath:Ljavax/xml/xpath/XPath;
    :catch_0
    move-exception v4

    .line 269
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dmi_bt_query_phone_history(Lcom/futuredial/service/DMIBTDevice;Lcom/futuredial/service/DMIPhone;)V
    .locals 1
    .parameter "d"
    .parameter "phoneinfo"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_target:Lcom/futuredial/service/DMIBTDevice;

    .line 449
    iput-object p2, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_phone:Lcom/futuredial/service/DMIPhone;

    .line 450
    new-instance v0, Lcom/futuredial/service/DMIBTQueryModule$query_history_thread;

    invoke-direct {v0, p0}, Lcom/futuredial/service/DMIBTQueryModule$query_history_thread;-><init>(Lcom/futuredial/service/DMIBTQueryModule;)V

    invoke-virtual {v0}, Lcom/futuredial/service/DMIBTQueryModule$query_history_thread;->start()V

    .line 451
    return-void
.end method

.method public dmi_bt_query_phone_model(Lcom/futuredial/service/DMIBTDevice;)Z
    .locals 2
    .parameter "d"

    .prologue
    .line 440
    iput-object p1, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_target:Lcom/futuredial/service/DMIBTDevice;

    .line 441
    new-instance v0, Lcom/futuredial/service/BTHideAPIRunner;

    iget-object v1, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_target:Lcom/futuredial/service/DMIBTDevice;

    iget-object v1, v1, Lcom/futuredial/service/DMIBTDevice;->m_device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, v1}, Lcom/futuredial/service/BTHideAPIRunner;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    iput-object v0, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_apiRunner:Lcom/futuredial/service/BTHideAPIRunner;

    .line 442
    new-instance v0, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;

    invoke-direct {v0, p0}, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;-><init>(Lcom/futuredial/service/DMIBTQueryModule;)V

    invoke-virtual {v0}, Lcom/futuredial/service/DMIBTQueryModule$query_info_thread;->start()V

    .line 443
    const/4 v0, 0x1

    return v0
.end method

.method dmi_do_sdp()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_bGotIt:Z

    .line 122
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_apiRunner:Lcom/futuredial/service/BTHideAPIRunner;

    invoke-virtual {v4}, Lcom/futuredial/service/BTHideAPIRunner;->dmi_api_fetchUuidsWithSdp()Z

    .line 123
    const/16 v2, 0x64

    .line 124
    .local v2, timeouttick:I
    const/4 v3, 0x0

    .line 125
    .local v3, timetick:I
    :goto_0
    iget-boolean v4, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_bGotIt:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    if-ge v3, v2, :cond_0

    .line 128
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 129
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 135
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_0
    if-ne v3, v2, :cond_1

    .line 137
    const-string v4, "Bluetooth"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bluetooth Error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x6d

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule;->TAG:Ljava/lang/String;

    const-string v5, "fetch uuid timeout"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v0, db:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_uuids:Ljava/util/Set;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 142
    return-object v0
.end method

.method public dmi_set_phone_maker(Ljava/lang/String;)V
    .locals 0
    .parameter "maker"

    .prologue
    .line 454
    iput-object p1, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_curPhoneModel:Ljava/lang/String;

    .line 455
    return-void
.end method

.method public finalize_module()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_sdpRec:Lcom/futuredial/service/DMIBTQueryModule$SDPReceiver;

    invoke-virtual {p0, v0}, Lcom/futuredial/service/DMIBTQueryModule;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    return-void
.end method

.method public init_module()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bleutooth.device.action.UUID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "android.bluetooth.device.action.UUID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/futuredial/service/DMIBTQueryModule;->m_sdpRec:Lcom/futuredial/service/DMIBTQueryModule$SDPReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/futuredial/service/DMIBTQueryModule;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    return-void
.end method
