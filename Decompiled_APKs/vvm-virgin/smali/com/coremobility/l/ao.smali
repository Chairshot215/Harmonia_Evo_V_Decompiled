.class final Lcom/coremobility/l/ao;
.super Ljava/lang/Object;


# static fields
.field protected static final a:[Lcom/coremobility/j/o;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/coremobility/j/o;

    new-instance v1, Lcom/coremobility/j/o;

    const-string v2, "V2T"

    invoke-direct {v1, v2, v3}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/coremobility/j/o;

    const-string v2, "guid"

    invoke-direct {v1, v2, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/coremobility/j/o;

    const-string v2, "transcription"

    invoke-direct {v1, v2, v5}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/coremobility/j/o;

    const-string v2, "provider"

    invoke-direct {v1, v2, v6}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/coremobility/j/o;

    const-string v2, "qos"

    invoke-direct {v1, v2, v7}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "technology"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "extendedStatusCode"

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "comment"

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "transcriptionProcessing"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "messageCount"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "transcriptionMessage"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "languageCode"

    const/16 v4, 0xb

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "confidenceLevel"

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "text"

    const/16 v4, 0xd

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "parsedText"

    const/16 v4, 0xe

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "word"

    const/16 v4, 0xf

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "start"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "duration"

    const/16 v4, 0x11

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "token"

    const/16 v4, 0x12

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "confidenceWord"

    const/16 v4, 0x13

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "advertisement"

    const/16 v4, 0x14

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "id"

    const/16 v4, 0x15

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "type"

    const/16 v4, 0x16

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "picture"

    const/16 v4, 0x17

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "video"

    const/16 v4, 0x18

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "url"

    const/16 v4, 0x19

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/l/ao;->a:[Lcom/coremobility/j/o;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
