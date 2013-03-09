.class final enum Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;
.super Ljava/lang/Enum;
.source "ProtoBufStreamParserImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

.field public static final enum ERROR:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

.field public static final enum READ_DATA:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

.field public static final enum READ_LENGTH:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

.field public static final enum READ_TAG:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

.field public static final enum START:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->START:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    .line 26
    new-instance v0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    const-string v1, "READ_TAG"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->READ_TAG:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    .line 27
    new-instance v0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    const-string v1, "READ_LENGTH"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->READ_LENGTH:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    .line 28
    new-instance v0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    const-string v1, "READ_DATA"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->READ_DATA:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    .line 29
    new-instance v0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->ERROR:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->START:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->READ_TAG:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->READ_LENGTH:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->READ_DATA:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->ERROR:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->$VALUES:[Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->$VALUES:[Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    invoke-virtual {v0}, [Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamParserImpl$State;

    return-object v0
.end method
