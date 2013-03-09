.class public Lorg/jivesoftware/smackx/packet/VCard;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "VCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/VCard$ContentBuilder;,
        Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;
    }
.end annotation


# instance fields
.field private avatar:[B

.field private emailHome:Ljava/lang/String;

.field private emailWork:Ljava/lang/String;

.field private encoded_avatar:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private hasModified:Z

.field private homeAddr:Ljava/util/Map;

.field private homePhones:Ljava/util/Map;

.field private lastName:Ljava/lang/String;

.field private localAvatarHash:Ljava/lang/String;

.field private middleName:Ljava/lang/String;

.field private modified:Z

.field private organization:Ljava/lang/String;

.field private organizationUnit:Ljava/lang/String;

.field private otherSimpleFields:Ljava/util/Map;

.field private otherUnescapableFields:Ljava/util/Map;

.field private workAddr:Ljava/util/Map;

.field private workPhones:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->homePhones:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->workPhones:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->homeAddr:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->workAddr:Ljava/util/Map;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->localAvatarHash:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherUnescapableFields:Ljava/util/Map;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/packet/VCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard;->hasContent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherUnescapableFields:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/jivesoftware/smackx/packet/VCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard;->hasOrganizationFields()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->organization:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->organizationUnit:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smackx/packet/VCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard;->hasNameField()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->workPhones:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->homePhones:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->workAddr:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lorg/jivesoftware/smackx/packet/VCard;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->homeAddr:Ljava/util/Map;

    return-object v0
.end method

.method private hasContent()Z
    .locals 1

    .prologue
    .line 678
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard;->hasNameField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/VCard;->hasOrganizationFields()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherUnescapableFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->homeAddr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->homePhones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->workAddr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->workPhones:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNameField()Z
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasOrganizationFields()Z
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->organization:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->organizationUnit:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 702
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    .line 742
    :cond_0
    :goto_0
    return v1

    .line 703
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 705
    check-cast v0, Lorg/jivesoftware/smackx/packet/VCard;

    .line 707
    .local v0, vCard:Lorg/jivesoftware/smackx/packet/VCard;
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 710
    :cond_2
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 713
    :cond_3
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 716
    :cond_4
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->homeAddr:Ljava/util/Map;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->homeAddr:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->homePhones:Ljava/util/Map;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->homePhones:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 722
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 725
    :cond_5
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 728
    :cond_6
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->organization:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->organization:Ljava/lang/String;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->organization:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 732
    :cond_7
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->organizationUnit:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->organizationUnit:Ljava/lang/String;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->organizationUnit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 736
    :cond_8
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 739
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->workAddr:Ljava/util/Map;

    iget-object v3, v0, Lorg/jivesoftware/smackx/packet/VCard;->workAddr:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 742
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->workPhones:Ljava/util/Map;

    iget-object v2, v0, Lorg/jivesoftware/smackx/packet/VCard;->workPhones:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0

    .line 707
    :cond_9
    iget-object v2, v0, Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 710
    :cond_a
    iget-object v2, v0, Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto/16 :goto_0

    .line 713
    :cond_b
    iget-object v2, v0, Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto/16 :goto_0

    .line 722
    :cond_c
    iget-object v2, v0, Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;

    if-eqz v2, :cond_5

    goto/16 :goto_0

    .line 725
    :cond_d
    iget-object v2, v0, Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;

    if-eqz v2, :cond_6

    goto/16 :goto_0

    .line 728
    :cond_e
    iget-object v2, v0, Lorg/jivesoftware/smackx/packet/VCard;->organization:Ljava/lang/String;

    if-eqz v2, :cond_7

    goto/16 :goto_0

    .line 732
    :cond_f
    iget-object v2, v0, Lorg/jivesoftware/smackx/packet/VCard;->organizationUnit:Ljava/lang/String;

    if-eqz v2, :cond_8

    goto/16 :goto_0
.end method

.method public getAvatar()[B
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->avatar:[B

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->avatar:[B

    .line 407
    :goto_0
    return-object v0

    .line 403
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->encoded_avatar:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 404
    const/4 v0, 0x0

    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->encoded_avatar:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getAvatarHash()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 453
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/VCard;->getAvatar()[B

    move-result-object v0

    .line 454
    .local v0, bytes:[B
    if-nez v0, :cond_0

    .line 468
    :goto_0
    return-object v3

    .line 460
    :cond_0
    :try_start_0
    const-string v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 467
    .local v1, digest:Ljava/security/MessageDigest;
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 468
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 462
    .end local v1           #digest:Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 463
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 587
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 588
    .local v0, sb:Ljava/lang/StringBuffer;
    new-instance v1, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;

    invoke-direct {v1, p0, v0}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;-><init>(Lorg/jivesoftware/smackx/packet/VCard;Ljava/lang/StringBuffer;)V

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/VCard$VCardWriter;->write()V

    .line 589
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 593
    sget-byte v4, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    if-ne v4, v5, :cond_0

    .line 594
    invoke-super {p0}, Lorg/jivesoftware/smack/packet/IQ;->getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 618
    :goto_0
    return-object v0

    .line 597
    :cond_0
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->EXTENSION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 598
    .local v0, extension:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v0, v5, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 601
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->VCARD:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 603
    .local v3, vcard:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/VCard;->avatar:[B

    if-eqz v4, :cond_2

    .line 605
    new-instance v2, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/android/gsf/gtalkservice/proto/GtalkExtensionsMessageTypes;->PHOTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 606
    .local v2, photo:Lcom/google/common/io/protocol/ProtoBuf;
    const-string v4, "image/jpeg"

    invoke-virtual {v2, v5, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 607
    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/VCard;->avatar:[B

    invoke-virtual {v2, v6, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setBytes(I[B)V

    .line 608
    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 617
    .end local v2           #photo:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    :goto_1
    invoke-virtual {v0, v6, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0

    .line 611
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/VCard;->getLocalAvatarHash()Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, localHash:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 613
    invoke-virtual {v3, v7, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public getLocalAvatarHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->localAvatarHash:Ljava/lang/String;

    return-object v0
.end method

.method public hasModified()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->hasModified:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 748
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->homePhones:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 749
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1d

    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/VCard;->workPhones:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 750
    mul-int/lit8 v1, v0, 0x1d

    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/VCard;->homeAddr:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 751
    mul-int/lit8 v1, v0, 0x1d

    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/VCard;->workAddr:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 752
    mul-int/lit8 v3, v0, 0x1d

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->firstName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 753
    mul-int/lit8 v3, v0, 0x1d

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->lastName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 754
    mul-int/lit8 v3, v0, 0x1d

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->middleName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v3, v1

    .line 755
    mul-int/lit8 v3, v0, 0x1d

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailHome:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int v0, v3, v1

    .line 756
    mul-int/lit8 v3, v0, 0x1d

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->emailWork:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int v0, v3, v1

    .line 757
    mul-int/lit8 v3, v0, 0x1d

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->organization:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/VCard;->organization:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int v0, v3, v1

    .line 758
    mul-int/lit8 v1, v0, 0x1d

    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/VCard;->organizationUnit:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->organizationUnit:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 759
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 760
    return v0

    :cond_1
    move v1, v2

    .line 752
    goto :goto_0

    :cond_2
    move v1, v2

    .line 753
    goto :goto_1

    :cond_3
    move v1, v2

    .line 754
    goto :goto_2

    :cond_4
    move v1, v2

    .line 755
    goto :goto_3

    :cond_5
    move v1, v2

    .line 756
    goto :goto_4

    :cond_6
    move v1, v2

    .line 757
    goto :goto_5
.end method

.method public isModified()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->modified:Z

    return v0
.end method

.method public setAvatar([B)V
    .locals 0
    .parameter "bytes"

    .prologue
    .line 352
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard;->avatar:[B

    .line 353
    return-void
.end method

.method public setAvatarForUpload([B)V
    .locals 5
    .parameter "bytes"

    .prologue
    const/4 v4, 0x1

    .line 356
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard;->avatar:[B

    .line 358
    sget-byte v1, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    if-ne v1, v4, :cond_0

    .line 359
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->encodeBase64([B)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, encodedImage:Ljava/lang/String;
    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->encoded_avatar:Ljava/lang/String;

    .line 361
    const-string v1, "PHOTO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<TYPE>image/jpeg</TYPE><BINVAL>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</BINVAL>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lorg/jivesoftware/smackx/packet/VCard;->setField(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 363
    .end local v0           #encodedImage:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "field"
    .parameter "value"
    .parameter "isUnescapable"

    .prologue
    .line 170
    if-nez p3, :cond_0

    .line 171
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherSimpleFields:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/VCard;->otherUnescapableFields:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setHasModified(Z)V
    .locals 0
    .parameter "hasModified"

    .prologue
    .line 503
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/packet/VCard;->hasModified:Z

    .line 504
    return-void
.end method

.method public setLocalAvatarHash(Ljava/lang/String;)V
    .locals 0
    .parameter "avatarHash"

    .prologue
    .line 476
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/VCard;->localAvatarHash:Ljava/lang/String;

    .line 477
    return-void
.end method

.method public setModified(Z)V
    .locals 0
    .parameter "modified"

    .prologue
    .line 491
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/packet/VCard;->modified:Z

    .line 492
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/VCard;->getChildElementXML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
