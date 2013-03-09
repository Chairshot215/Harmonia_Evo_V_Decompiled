.class public Lcom/google/android/voicesearch/tcp/StunMessageType;
.super Ljava/lang/Object;
.source "StunMessageType.java"


# static fields
.field public static final STUN_ALLOCATE_ERROR_RESPONSE:Lcom/google/android/voicesearch/tcp/StunMessageType;

.field public static final STUN_ALLOCATE_REQUEST:Lcom/google/android/voicesearch/tcp/StunMessageType;

.field public static final STUN_ALLOCATE_RESPONSE:Lcom/google/android/voicesearch/tcp/StunMessageType;

.field public static final STUN_BINDING_ERROR_RESPONSE:Lcom/google/android/voicesearch/tcp/StunMessageType;

.field public static final STUN_BINDING_REQUEST:Lcom/google/android/voicesearch/tcp/StunMessageType;

.field public static final STUN_BINDING_RESPONSE:Lcom/google/android/voicesearch/tcp/StunMessageType;

.field public static final STUN_DATA_INDICATION:Lcom/google/android/voicesearch/tcp/StunMessageType;

.field public static final STUN_SEND_ERROR_RESPONSE:Lcom/google/android/voicesearch/tcp/StunMessageType;

.field public static final STUN_SEND_REQUEST:Lcom/google/android/voicesearch/tcp/StunMessageType;

.field public static final STUN_SEND_RESPONSE:Lcom/google/android/voicesearch/tcp/StunMessageType;

.field public static final STUN_SHARED_SECRET_ERROR_RESPONSE:Lcom/google/android/voicesearch/tcp/StunMessageType;

.field public static final STUN_SHARED_SECRET_REQUEST:Lcom/google/android/voicesearch/tcp/StunMessageType;

.field public static final STUN_SHARED_SECRET_RESPONSE:Lcom/google/android/voicesearch/tcp/StunMessageType;

.field private static final wireMappings:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/voicesearch/tcp/StunMessageType;",
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
    .line 25
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunMessageType;->wireMappings:Ljava/util/Hashtable;

    .line 50
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunMessageType;

    const/4 v1, 0x1

    const-string v2, "STUN_BINDING_REQUEST"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunMessageType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_BINDING_REQUEST:Lcom/google/android/voicesearch/tcp/StunMessageType;

    .line 52
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunMessageType;

    const/16 v1, 0x101

    const-string v2, "STUN_BINDING_RESPONSE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunMessageType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_BINDING_RESPONSE:Lcom/google/android/voicesearch/tcp/StunMessageType;

    .line 54
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunMessageType;

    const/16 v1, 0x111

    const-string v2, "STUN_BINDING_ERROR_RESPONSE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunMessageType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_BINDING_ERROR_RESPONSE:Lcom/google/android/voicesearch/tcp/StunMessageType;

    .line 56
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunMessageType;

    const/4 v1, 0x2

    const-string v2, "STUN_SHARED_SECRET_REQUEST"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunMessageType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_SHARED_SECRET_REQUEST:Lcom/google/android/voicesearch/tcp/StunMessageType;

    .line 58
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunMessageType;

    const/16 v1, 0x102

    const-string v2, "STUN_SHARED_SECRET_RESPONSE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunMessageType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_SHARED_SECRET_RESPONSE:Lcom/google/android/voicesearch/tcp/StunMessageType;

    .line 60
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunMessageType;

    const/16 v1, 0x112

    const-string v2, "STUN_SHARED_SECRET_ERROR_RESPONSE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunMessageType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_SHARED_SECRET_ERROR_RESPONSE:Lcom/google/android/voicesearch/tcp/StunMessageType;

    .line 62
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunMessageType;

    const/4 v1, 0x3

    const-string v2, "STUN_ALLOCATE_REQUEST"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunMessageType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_ALLOCATE_REQUEST:Lcom/google/android/voicesearch/tcp/StunMessageType;

    .line 64
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunMessageType;

    const/16 v1, 0x103

    const-string v2, "STUN_ALLOCATE_RESPONSE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunMessageType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_ALLOCATE_RESPONSE:Lcom/google/android/voicesearch/tcp/StunMessageType;

    .line 66
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunMessageType;

    const/16 v1, 0x113

    const-string v2, "STUN_ALLOCATE_ERROR_RESPONSE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunMessageType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_ALLOCATE_ERROR_RESPONSE:Lcom/google/android/voicesearch/tcp/StunMessageType;

    .line 68
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunMessageType;

    const/4 v1, 0x4

    const-string v2, "STUN_SEND_REQUEST"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunMessageType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_SEND_REQUEST:Lcom/google/android/voicesearch/tcp/StunMessageType;

    .line 70
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunMessageType;

    const/16 v1, 0x104

    const-string v2, "STUN_SEND_RESPONSE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunMessageType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_SEND_RESPONSE:Lcom/google/android/voicesearch/tcp/StunMessageType;

    .line 72
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunMessageType;

    const/16 v1, 0x114

    const-string v2, "STUN_SEND_ERROR_RESPONSE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunMessageType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_SEND_ERROR_RESPONSE:Lcom/google/android/voicesearch/tcp/StunMessageType;

    .line 74
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunMessageType;

    const/16 v1, 0x115

    const-string v2, "STUN_DATA_INDICATION"

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/tcp/StunMessageType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/voicesearch/tcp/StunMessageType;->STUN_DATA_INDICATION:Lcom/google/android/voicesearch/tcp/StunMessageType;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 2
    .parameter "wireValue"
    .parameter "stringValue"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/google/android/voicesearch/tcp/StunMessageType;->wireValue:I

    .line 37
    iput-object p2, p0, Lcom/google/android/voicesearch/tcp/StunMessageType;->stringValue:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/google/android/voicesearch/tcp/StunMessageType;->wireMappings:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public static fromWireValue(I)Lcom/google/android/voicesearch/tcp/StunMessageType;
    .locals 2
    .parameter "wv"

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/voicesearch/tcp/StunMessageType;->wireMappings:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/tcp/StunMessageType;

    return-object v0
.end method


# virtual methods
.method public getWireValue()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/voicesearch/tcp/StunMessageType;->wireValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunMessageType;->stringValue:Ljava/lang/String;

    return-object v0
.end method
