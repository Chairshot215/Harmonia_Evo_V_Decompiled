.class public Lcom/redbend/vdmc/HandleDMAcc;
.super Ljava/lang/Object;
.source "HandleDMAcc.java"


# static fields
.field public static final ClientAthData:I = 0x3

.field public static final ClientAthName:I = 0x5

.field public static final ClientAthSecret:I = 0x4

.field public static final ProxyAddress:I = 0x9

.field public static final ProxyPort:I = 0xa

.field public static final ServerAdrAddress:I = 0x1

.field public static final ServerAdrPort:I = 0x2

.field public static final ServerAthData:I = 0x6

.field public static final ServerAthName:I = 0x8

.field public static final ServerAthSecret:I = 0x7

.field private static mContext:Landroid/content/Context;

.field private static me:Lcom/redbend/vdmc/HandleDMAcc;


# instance fields
.field mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/redbend/vdmc/HandleDMAcc;->me:Lcom/redbend/vdmc/HandleDMAcc;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sput-object p1, Lcom/redbend/vdmc/HandleDMAcc;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/redbend/vdmc/HandleDMAcc;
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    sget-object v0, Lcom/redbend/vdmc/HandleDMAcc;->me:Lcom/redbend/vdmc/HandleDMAcc;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/redbend/vdmc/HandleDMAcc;

    invoke-direct {v0, p0}, Lcom/redbend/vdmc/HandleDMAcc;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/redbend/vdmc/HandleDMAcc;->me:Lcom/redbend/vdmc/HandleDMAcc;

    .line 28
    :cond_0
    sget-object v0, Lcom/redbend/vdmc/HandleDMAcc;->me:Lcom/redbend/vdmc/HandleDMAcc;

    return-object v0
.end method


# virtual methods
.method public GetValue(I)Ljava/lang/String;
    .locals 3
    .parameter "nID"

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-static {}, Lcom/redbend/vdmc/Sprint/DMAcc;->getInstance()Lcom/redbend/vdmc/Sprint/DMAcc;

    move-result-object v0

    iput-object v0, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    .line 75
    iget-object v0, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    .line 77
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerAddr(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerPort(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lcom/redbend/vdmc/Sprint/DMAcc;->ClientPassword(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lcom/redbend/vdmc/Sprint/DMAcc;->ClientNonce(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 90
    iget-object v0, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lcom/redbend/vdmc/Sprint/DMAcc;->ClientName(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 93
    iget-object v0, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerPassword(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_6
    const/4 v0, 0x7

    if-ne p1, v0, :cond_7

    .line 96
    iget-object v0, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerNonce(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    .line 99
    iget-object v0, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerName(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_8
    const/16 v0, 0x9

    if-ne p1, v0, :cond_9

    .line 102
    iget-object v0, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lcom/redbend/vdmc/Sprint/DMAcc;->ProxyAddr(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_9
    const/16 v0, 0xa

    if-ne p1, v0, :cond_a

    .line 105
    iget-object v0, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lcom/redbend/vdmc/Sprint/DMAcc;->ProxyPort(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_a
    const-string v0, ""

    goto :goto_0
.end method

.method public SetValue(ILjava/lang/String;)Z
    .locals 3
    .parameter "nID"
    .parameter "szValue"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 36
    invoke-static {}, Lcom/redbend/vdmc/Sprint/DMAcc;->getInstance()Lcom/redbend/vdmc/Sprint/DMAcc;

    move-result-object v2

    iput-object v2, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    .line 37
    iget-object v2, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    if-nez v2, :cond_1

    move v0, v1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    if-ne p1, v0, :cond_2

    .line 41
    iget-object v2, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    invoke-virtual {v2, v0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerAddr(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 43
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 44
    iget-object v2, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    invoke-virtual {v2, v0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerPort(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 46
    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 47
    iget-object v2, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    invoke-virtual {v2, v0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->ClientPassword(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 49
    :cond_4
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    .line 50
    iget-object v2, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    invoke-virtual {v2, v0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->ClientNonce(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 52
    :cond_5
    const/4 v2, 0x5

    if-ne p1, v2, :cond_6

    .line 53
    iget-object v2, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    invoke-virtual {v2, v0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->ClientName(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 55
    :cond_6
    const/4 v2, 0x6

    if-ne p1, v2, :cond_7

    .line 56
    iget-object v2, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    invoke-virtual {v2, v0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerPassword(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 58
    :cond_7
    const/4 v2, 0x7

    if-ne p1, v2, :cond_8

    .line 59
    iget-object v2, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    invoke-virtual {v2, v0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerNonce(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 61
    :cond_8
    const/16 v2, 0x8

    if-ne p1, v2, :cond_9

    .line 62
    iget-object v2, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    invoke-virtual {v2, v0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerName(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 64
    :cond_9
    const/16 v2, 0x9

    if-ne p1, v2, :cond_a

    .line 65
    iget-object v2, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    invoke-virtual {v2, v0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->ProxyAddr(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    .line 67
    :cond_a
    const/16 v2, 0xa

    if-ne p1, v2, :cond_b

    .line 68
    iget-object v2, p0, Lcom/redbend/vdmc/HandleDMAcc;->mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;

    invoke-virtual {v2, v0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->ProxyPort(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_b
    move v0, v1

    .line 70
    goto/16 :goto_0
.end method
