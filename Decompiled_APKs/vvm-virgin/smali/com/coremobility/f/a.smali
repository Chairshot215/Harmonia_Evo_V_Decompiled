.class public final Lcom/coremobility/f/a;
.super Ljava/lang/Object;


# static fields
.field protected static final a:[Lcom/coremobility/f/c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/coremobility/f/c;

    new-instance v1, Lcom/coremobility/f/c;

    const-string v2, "Forward-V"

    invoke-direct {v1, v3, v2}, Lcom/coremobility/f/c;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/coremobility/f/c;

    const-string v2, "Download-V"

    invoke-direct {v1, v4, v2}, Lcom/coremobility/f/c;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/coremobility/f/c;

    const-string v2, "Download-M"

    invoke-direct {v1, v5, v2}, Lcom/coremobility/f/c;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/coremobility/f/c;

    const-string v2, "Download-N"

    invoke-direct {v1, v6, v2}, Lcom/coremobility/f/c;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/coremobility/f/c;

    const-string v2, "Acknowledge-V"

    invoke-direct {v1, v7, v2}, Lcom/coremobility/f/c;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-instance v2, Lcom/coremobility/f/c;

    const/4 v3, 0x5

    const-string v4, "Acknowledge-M"

    invoke-direct {v2, v3, v4}, Lcom/coremobility/f/c;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/coremobility/f/c;

    const/4 v3, 0x6

    const-string v4, "Acknowledge-N"

    invoke-direct {v2, v3, v4}, Lcom/coremobility/f/c;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/coremobility/f/c;

    const/4 v3, 0x7

    const-string v4, "Upload-V"

    invoke-direct {v2, v3, v4}, Lcom/coremobility/f/c;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/coremobility/f/c;

    const/16 v3, 0x8

    const-string v4, "Upload-M"

    invoke-direct {v2, v3, v4}, Lcom/coremobility/f/c;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/coremobility/f/c;

    const/16 v3, 0x9

    const-string v4, "Upload-N"

    invoke-direct {v2, v3, v4}, Lcom/coremobility/f/c;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/coremobility/f/c;

    const/16 v3, 0xa

    const-string v4, "Rating-T"

    invoke-direct {v2, v3, v4}, Lcom/coremobility/f/c;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/coremobility/f/c;

    const/16 v3, 0xb

    const-string v4, "SetPreference-T"

    invoke-direct {v2, v3, v4}, Lcom/coremobility/f/c;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/coremobility/f/c;

    const/16 v3, 0xc

    const-string v4, "GetPreference-T"

    invoke-direct {v2, v3, v4}, Lcom/coremobility/f/c;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/coremobility/f/c;

    const/16 v3, 0xd

    const-string v4, "SetGreeting-T"

    invoke-direct {v2, v3, v4}, Lcom/coremobility/f/c;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/coremobility/f/c;

    const/16 v3, 0xe

    const-string v4, "DeleteSubscription-T"

    invoke-direct {v2, v3, v4}, Lcom/coremobility/f/c;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/coremobility/f/c;

    const/16 v3, 0xf

    const-string v4, "GetSubscription-T"

    invoke-direct {v2, v3, v4}, Lcom/coremobility/f/c;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/coremobility/f/c;

    const/16 v3, 0x10

    const-string v4, "SetSubscription-T"

    invoke-direct {v2, v3, v4}, Lcom/coremobility/f/c;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/coremobility/f/c;

    const/16 v3, 0x11

    const-string v4, "GetPlans-T"

    invoke-direct {v2, v3, v4}, Lcom/coremobility/f/c;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/coremobility/f/c;

    const/16 v3, 0x12

    const-string v4, "GetVMSInfo-T"

    invoke-direct {v2, v3, v4}, Lcom/coremobility/f/c;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/coremobility/f/c;

    const/16 v3, 0x13

    const-string v4, "GetMiniSvc-T"

    invoke-direct {v2, v3, v4}, Lcom/coremobility/f/c;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/f/a;->a:[Lcom/coremobility/f/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/coremobility/f/b;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    sget-object v0, Lcom/coremobility/f/a;->a:[Lcom/coremobility/f/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    add-int v1, v2, v0

    div-int/lit8 v1, v1, 0x2

    sget-object v4, Lcom/coremobility/f/a;->a:[Lcom/coremobility/f/c;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/coremobility/f/c;->a:I

    iget v5, p0, Lcom/coremobility/f/b;->a:I

    if-ge v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/coremobility/f/a;->a:[Lcom/coremobility/f/c;

    aget-object v0, v1, v0

    iget v1, v0, Lcom/coremobility/f/c;->a:I

    iget v2, p0, Lcom/coremobility/f/b;->a:I

    if-eq v1, v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    const-string v1, "VU="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "+1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "+1"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";PC="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".1"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";ID="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p2}, Lcom/coremobility/g/l;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";NA="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/coremobility/f/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
