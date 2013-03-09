.class public Lcom/google/android/voicesearch/tcp/StunAttributeType;
.super Ljava/lang/Object;
.source "StunAttributeType.java"


# static fields
.field public static final STUN_ATTR_ALTERNATE_SERVER:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field public static final STUN_ATTR_BANDWIDTH:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field public static final STUN_ATTR_CHANGED_ADDRESS:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field public static final STUN_ATTR_CHANGE_REQUEST:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field public static final STUN_ATTR_DATA:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field public static final STUN_ATTR_DESTINATION_ADDRESS:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field public static final STUN_ATTR_ERROR_CODE:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field public static final STUN_ATTR_LIFETIME:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field public static final STUN_ATTR_MAGIC_COOKIE:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field public static final STUN_ATTR_MAPPED_ADDRESS:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field public static final STUN_ATTR_MESSAGE_INTEGRITY:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field public static final STUN_ATTR_OPTIONS:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field public static final STUN_ATTR_PASSWORD:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field public static final STUN_ATTR_REFLECTED_FROM:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field public static final STUN_ATTR_RESPONSE_ADDRESS:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field public static final STUN_ATTR_SOURCE_ADDRESS:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field public static final STUN_ATTR_SOURCE_ADDRESS2:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field public static final STUN_ATTR_TRANSPORT_PREFERENCES:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field public static final STUN_ATTR_UNKNOWN:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field public static final STUN_ATTR_UNKNOWN_ATTRIBUTES:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field public static final STUN_ATTR_USERNAME:Lcom/google/android/voicesearch/tcp/StunAttributeType;

.field private static final wireMappings:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/voicesearch/tcp/StunAttributeType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final stringValue:Ljava/lang/String;

.field private final wireValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->wireMappings:Ljava/util/Hashtable;

    .line 53
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const/4 v1, 0x1

    const-string v2, "STUN_ATTR_MAPPED_ADDRESS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_MAPPED_ADDRESS:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 55
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const/4 v1, 0x2

    const-string v2, "STUN_ATTR_RESPONSE_ADDRESS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_RESPONSE_ADDRESS:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 57
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const/4 v1, 0x3

    const-string v2, "STUN_ATTR_CHANGE_REQUEST"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_CHANGE_REQUEST:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 59
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const/4 v1, 0x4

    const-string v2, "STUN_ATTR_SOURCE_ADDRESS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_SOURCE_ADDRESS:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 61
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const/4 v1, 0x5

    const-string v2, "STUN_ATTR_CHANGED_ADDRESS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_CHANGED_ADDRESS:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 63
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const/4 v1, 0x6

    const-string v2, "STUN_ATTR_USERNAME"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_USERNAME:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 65
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const/4 v1, 0x7

    const-string v2, "STUN_ATTR_PASSWORD"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_PASSWORD:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 67
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const/16 v1, 0x8

    const-string v2, "STUN_ATTR_MESSAGE_INTEGRITY"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_MESSAGE_INTEGRITY:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 69
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const/16 v1, 0x9

    const-string v2, "STUN_ATTR_ERROR_CODE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_ERROR_CODE:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 71
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const/16 v1, 0xa

    const-string v2, "STUN_ATTR_UNKNOWN_ATTRIBUTES"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_UNKNOWN_ATTRIBUTES:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 73
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const/16 v1, 0xb

    const-string v2, "STUN_ATTR_REFLECTED_FROM"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_REFLECTED_FROM:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 75
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const/16 v1, 0xc

    const-string v2, "STUN_ATTR_TRANSPORT_PREFERENCES"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_TRANSPORT_PREFERENCES:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 77
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const/16 v1, 0xd

    const-string v2, "STUN_ATTR_LIFETIME"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_LIFETIME:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 79
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const/16 v1, 0xe

    const-string v2, "STUN_ATTR_ALTERNATE_SERVER"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_ALTERNATE_SERVER:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 81
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const/16 v1, 0xf

    const-string v2, "STUN_ATTR_MAGIC_COOKIE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_MAGIC_COOKIE:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 83
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const/16 v1, 0x10

    const-string v2, "STUN_ATTR_BANDWIDTH"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_BANDWIDTH:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 85
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const/16 v1, 0x11

    const-string v2, "STUN_ATTR_DESTINATION_ADDRESS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_DESTINATION_ADDRESS:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 87
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const/16 v1, 0x12

    const-string v2, "STUN_ATTR_SOURCE_ADDRESS2"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_SOURCE_ADDRESS2:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 89
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const/16 v1, 0x13

    const-string v2, "STUN_ATTR_DATA"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_DATA:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 91
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const v1, 0x8001

    const-string v2, "STUN_ATTR_OPTIONS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_OPTIONS:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 97
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    const/4 v1, 0x0

    const-string v2, "STUN_ATTR_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_UNKNOWN:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 2
    .parameter "wireValue"
    .parameter "stringValue"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->wireValue:I

    .line 36
    iput-object p2, p0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->stringValue:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->wireMappings:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public static fromWireValue(I)Lcom/google/android/voicesearch/tcp/StunAttributeType;
    .locals 2
    .parameter "wv"

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->wireMappings:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/tcp/StunAttributeType;

    return-object v0
.end method


# virtual methods
.method public getWireValue()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->wireValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttributeType;->stringValue:Ljava/lang/String;

    return-object v0
.end method
