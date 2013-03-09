.class public Lcom/htc/android/mail/pim/vcard/VCardParser;
.super Ljava/lang/Object;
.source "VCardParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCardParser"

.field public static final VERSION_VCARD21:Ljava/lang/String; = "vcard2.1"

.field public static final VERSION_VCARD21_INT:I = 0x1

.field public static final VERSION_VCARD30:Ljava/lang/String; = "vcard3.0"

.field public static final VERSION_VCARD30_INT:I = 0x2


# instance fields
.field mParser:Lcom/htc/android/mail/pim/VParser;

.field mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/htc/android/mail/pim/vcard/VCardParser;->mParser:Lcom/htc/android/mail/pim/VParser;

    .line 40
    iput-object v0, p0, Lcom/htc/android/mail/pim/vcard/VCardParser;->mVersion:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private judgeVersion(Ljava/lang/String;)V
    .locals 4
    .parameter "vcardStr"

    .prologue
    .line 56
    iget-object v2, p0, Lcom/htc/android/mail/pim/vcard/VCardParser;->mVersion:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 57
    const-string v2, "\nVERSION:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 58
    .local v0, verIdx:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 59
    const-string v2, "vcard2.1"

    iput-object v2, p0, Lcom/htc/android/mail/pim/vcard/VCardParser;->mVersion:Ljava/lang/String;

    .line 71
    .end local v0           #verIdx:I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/android/mail/pim/vcard/VCardParser;->mVersion:Ljava/lang/String;

    const-string v3, "vcard2.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    new-instance v2, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;

    invoke-direct {v2}, Lcom/htc/android/mail/pim/vcard/VCardParser_V21;-><init>()V

    iput-object v2, p0, Lcom/htc/android/mail/pim/vcard/VCardParser;->mParser:Lcom/htc/android/mail/pim/VParser;

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/pim/vcard/VCardParser;->mVersion:Ljava/lang/String;

    const-string v3, "vcard3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    new-instance v2, Lcom/htc/android/mail/pim/vcard/VCardParser_V30;

    invoke-direct {v2}, Lcom/htc/android/mail/pim/vcard/VCardParser_V30;-><init>()V

    iput-object v2, p0, Lcom/htc/android/mail/pim/vcard/VCardParser;->mParser:Lcom/htc/android/mail/pim/VParser;

    .line 75
    :cond_2
    return-void

    .line 61
    .restart local v0       #verIdx:I
    :cond_3
    const-string v2, "\n"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, verStr:Ljava/lang/String;
    const-string v2, "2.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    .line 64
    const-string v2, "vcard2.1"

    iput-object v2, p0, Lcom/htc/android/mail/pim/vcard/VCardParser;->mVersion:Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_4
    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    .line 66
    const-string v2, "vcard3.0"

    iput-object v2, p0, Lcom/htc/android/mail/pim/vcard/VCardParser;->mVersion:Ljava/lang/String;

    goto :goto_0

    .line 68
    :cond_5
    const-string v2, "vcard2.1"

    iput-object v2, p0, Lcom/htc/android/mail/pim/vcard/VCardParser;->mVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method private setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/android/mail/pim/vcard/VCardParser;->mVersion:Ljava/lang/String;

    .line 112
    return-void
.end method

.method private verifyVCard(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "vcardStr"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser;->judgeVersion(Ljava/lang/String;)V

    .line 101
    return-object p1
.end method


# virtual methods
.method public parse(Ljava/lang/String;Lcom/htc/android/mail/pim/VDataBuilder;)Z
    .locals 3
    .parameter "vcardStr"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/pim/vcard/VCardException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardParser;->verifyVCard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    iget-object v1, p0, Lcom/htc/android/mail/pim/vcard/VCardParser;->mParser:Lcom/htc/android/mail/pim/VParser;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/mail/pim/VParser;->parse(Ljava/lang/String;Lcom/htc/android/mail/pim/VBuilder;)Z

    move-result v0

    .line 131
    .local v0, isSuccess:Z
    if-nez v0, :cond_1

    .line 132
    iget-object v1, p0, Lcom/htc/android/mail/pim/vcard/VCardParser;->mVersion:Ljava/lang/String;

    const-string v2, "vcard2.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const-string v1, "VCardParser"

    const-string v2, "Parse failed for vCard 2.1 parser. Try to use 3.0 parser."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v1, "vcard3.0"

    invoke-direct {p0, v1}, Lcom/htc/android/mail/pim/vcard/VCardParser;->setVersion(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/pim/vcard/VCardParser;->parse(Ljava/lang/String;Lcom/htc/android/mail/pim/VDataBuilder;)Z

    move-result v1

    .line 143
    :goto_0
    return v1

    .line 141
    :cond_0
    new-instance v1, Lcom/htc/android/mail/pim/vcard/VCardException;

    const-string v2, "parse failed.(even use 3.0 parser)"

    invoke-direct {v1, v2}, Lcom/htc/android/mail/pim/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
