.class public abstract enum Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Leniency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum EXACT_GROUPING:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum STRICT_GROUPING:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum VALID:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 409
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$1;

    const-string v1, "POSSIBLE"

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    .line 420
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$2;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    .line 440
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;

    const-string v1, "STRICT_GROUPING"

    invoke-direct {v0, v1, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->STRICT_GROUPING:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    .line 494
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$4;

    const-string v1, "EXACT_GROUPING"

    invoke-direct {v0, v1, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->EXACT_GROUPING:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    .line 403
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->STRICT_GROUPING:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->EXACT_GROUPING:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->$VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

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
    .line 403
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/i18n/phonenumbers/PhoneNumberUtil$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 403
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 403
    invoke-static {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->containsOnlyValidXChars(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    invoke-static {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->containsMoreThanOneSlash(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 403
    invoke-static {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->getNationalNumberGroups(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static containsMoreThanOneSlash(Ljava/lang/String;)Z
    .locals 3
    .parameter "candidate"

    .prologue
    .line 556
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 557
    .local v0, firstSlashIndex:I
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static containsOnlyValidXChars(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 8
    .parameter "number"
    .parameter "candidate"
    .parameter "util"

    .prologue
    const/16 v7, 0x78

    const/16 v6, 0x58

    const/4 v3, 0x0

    .line 567
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_5

    .line 568
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 569
    .local v0, charAtIndex:C
    if-eq v0, v7, :cond_0

    if-ne v0, v6, :cond_4

    .line 570
    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 571
    .local v1, charAtNextIndex:C
    if-eq v1, v7, :cond_1

    if-ne v1, v6, :cond_3

    .line 574
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 575
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, p0, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v4

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-eq v4, v5, :cond_4

    .line 586
    .end local v0           #charAtIndex:C
    .end local v1           #charAtNextIndex:C
    :cond_2
    :goto_1
    return v3

    .line 580
    .restart local v0       #charAtIndex:C
    .restart local v1       #charAtNextIndex:C
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 567
    .end local v1           #charAtNextIndex:C
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 586
    .end local v0           #charAtIndex:C
    :cond_5
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static getNationalNumberGroups(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)[Ljava/lang/String;
    .locals 5
    .parameter "util"
    .parameter "number"

    .prologue
    .line 543
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, rfc3966Format:Ljava/lang/String;
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 547
    .local v0, endIndex:I
    if-gez v0, :cond_0

    .line 548
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 551
    :cond_0
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 552
    .local v2, startIndex:I
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .locals 1
    .parameter "name"

    .prologue
    .line 403
    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    return-object v0
.end method

.method public static values()[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .locals 1

    .prologue
    .line 403
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->$VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    invoke-virtual {v0}, [Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    return-object v0
.end method


# virtual methods
.method abstract verify(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z
.end method
