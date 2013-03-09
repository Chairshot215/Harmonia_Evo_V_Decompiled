.class public Landroid/net/rtp/AudioCodec;
.super Ljava/lang/Object;
.source "AudioCodec.java"


# static fields
.field public static final AMR:Landroid/net/rtp/AudioCodec;

.field public static final GSM:Landroid/net/rtp/AudioCodec;

.field public static final GSM_EFR:Landroid/net/rtp/AudioCodec;

.field public static final PCMA:Landroid/net/rtp/AudioCodec;

.field public static final PCMU:Landroid/net/rtp/AudioCodec;

.field private static final sCodecs:[Landroid/net/rtp/AudioCodec;


# instance fields
.field public final fmtp:Ljava/lang/String;

.field public final rtpmap:Ljava/lang/String;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroid/net/rtp/AudioCodec;

    const-string v1, "PCMU/8000"

    invoke-direct {v0, v4, v1, v3}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/rtp/AudioCodec;->PCMU:Landroid/net/rtp/AudioCodec;

    new-instance v0, Landroid/net/rtp/AudioCodec;

    const/16 v1, 0x8

    const-string v2, "PCMA/8000"

    invoke-direct {v0, v1, v2, v3}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/rtp/AudioCodec;->PCMA:Landroid/net/rtp/AudioCodec;

    new-instance v0, Landroid/net/rtp/AudioCodec;

    const-string v1, "GSM/8000"

    invoke-direct {v0, v5, v1, v3}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/rtp/AudioCodec;->GSM:Landroid/net/rtp/AudioCodec;

    new-instance v0, Landroid/net/rtp/AudioCodec;

    const/16 v1, 0x60

    const-string v2, "GSM-EFR/8000"

    invoke-direct {v0, v1, v2, v3}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/rtp/AudioCodec;->GSM_EFR:Landroid/net/rtp/AudioCodec;

    new-instance v0, Landroid/net/rtp/AudioCodec;

    const/16 v1, 0x61

    const-string v2, "AMR/8000"

    invoke-direct {v0, v1, v2, v3}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/rtp/AudioCodec;->AMR:Landroid/net/rtp/AudioCodec;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/rtp/AudioCodec;

    sget-object v1, Landroid/net/rtp/AudioCodec;->GSM_EFR:Landroid/net/rtp/AudioCodec;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    sget-object v2, Landroid/net/rtp/AudioCodec;->AMR:Landroid/net/rtp/AudioCodec;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/net/rtp/AudioCodec;->GSM:Landroid/net/rtp/AudioCodec;

    aput-object v2, v0, v1

    sget-object v1, Landroid/net/rtp/AudioCodec;->PCMU:Landroid/net/rtp/AudioCodec;

    aput-object v1, v0, v5

    const/4 v1, 0x4

    sget-object v2, Landroid/net/rtp/AudioCodec;->PCMA:Landroid/net/rtp/AudioCodec;

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/rtp/AudioCodec;->sCodecs:[Landroid/net/rtp/AudioCodec;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/rtp/AudioCodec;->type:I

    iput-object p2, p0, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    return-void
.end method

.method public static getCodec(ILjava/lang/String;Ljava/lang/String;)Landroid/net/rtp/AudioCodec;
    .locals 9

    const/4 v7, 0x0

    if-ltz p0, :cond_0

    const/16 v8, 0x7f

    if-le p0, v8, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    const/4 v4, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Landroid/net/rtp/AudioCodec;->sCodecs:[Landroid/net/rtp/AudioCodec;

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v3, v0, v5

    iget-object v8, v3, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v3, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "/1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    move-object v4, v3

    :cond_3
    :goto_2
    if-eqz v4, :cond_0

    sget-object v8, Landroid/net/rtp/AudioCodec;->AMR:Landroid/net/rtp/AudioCodec;

    if-ne v4, v8, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v8, "crc=1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "robust-sorting=1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "interleaving="

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_4
    new-instance v7, Landroid/net/rtp/AudioCodec;

    invoke-direct {v7, p0, p1, p2}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    const/16 v8, 0x60

    if-ge p0, v8, :cond_3

    sget-object v0, Landroid/net/rtp/AudioCodec;->sCodecs:[Landroid/net/rtp/AudioCodec;

    array-length v6, v0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_3

    aget-object v3, v0, v5

    iget v8, v3, Landroid/net/rtp/AudioCodec;->type:I

    if-ne p0, v8, :cond_7

    move-object v4, v3

    iget-object p1, v3, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    goto :goto_2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public static getCodecs()[Landroid/net/rtp/AudioCodec;
    .locals 2

    sget-object v0, Landroid/net/rtp/AudioCodec;->sCodecs:[Landroid/net/rtp/AudioCodec;

    sget-object v1, Landroid/net/rtp/AudioCodec;->sCodecs:[Landroid/net/rtp/AudioCodec;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/rtp/AudioCodec;

    return-object v0
.end method
