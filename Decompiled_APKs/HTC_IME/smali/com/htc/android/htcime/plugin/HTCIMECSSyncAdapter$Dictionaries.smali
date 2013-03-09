.class final enum Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
.super Ljava/lang/Enum;
.source "HTCIMECSSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Dictionaries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

.field public static final enum ALPHABET:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

.field public static final enum CHINESE_HW_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

.field public static final enum CHINESE_HW_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

.field public static final enum CHINESE_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

.field public static final enum CHINESE_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

.field public static final enum TOTAL:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

.field private static curIdx:I


# instance fields
.field private idx:I

.field private mUDBName:Ljava/lang/String;

.field private mUUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    new-instance v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    const-string v1, "ALPHABET"

    invoke-direct {v0, v1, v4, v4}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->ALPHABET:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    .line 87
    new-instance v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    const-string v1, "CHINESE_TC"

    invoke-direct {v0, v1, v5, v5}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    .line 88
    new-instance v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    const-string v1, "CHINESE_SC"

    invoke-direct {v0, v1, v6, v6}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    .line 89
    new-instance v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    const-string v1, "CHINESE_HW_TC"

    invoke-direct {v0, v1, v7, v7}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    .line 90
    new-instance v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    const-string v1, "CHINESE_HW_SC"

    invoke-direct {v0, v1, v8, v8}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    .line 91
    new-instance v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    const-string v1, "TOTAL"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->TOTAL:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    .line 85
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    sget-object v1, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->ALPHABET:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    aput-object v1, v0, v7

    sget-object v1, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->TOTAL:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->$VALUES:[Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    .line 95
    sput v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->curIdx:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput-object v1, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->mUUID:Ljava/util/UUID;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    .line 96
    iput-object v1, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->mUDBName:Ljava/lang/String;

    .line 99
    iput p3, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    .line 100
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)Ljava/util/UUID;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getUUID()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getUDBData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getUDBName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->hasNext()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500()V
    .locals 0

    .prologue
    .line 85
    invoke-static {}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->reset()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->insertData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;Ljava/util/UUID;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->setUUID(Ljava/util/UUID;)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->setUDBName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->getNext()Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    move-result-object v0

    return-object v0
.end method

.method private static getNext()Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    .locals 3

    .prologue
    .line 103
    sget v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->curIdx:I

    sget-object v1, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->TOTAL:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    iget v1, v1, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    if-lt v0, v1, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->values()[Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    move-result-object v0

    sget v1, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->curIdx:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->curIdx:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private getTimestamp()J
    .locals 7

    .prologue
    .line 159
    const-wide/16 v1, 0x0

    .line 160
    .local v1, timestamp:J
    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->getInstance()Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;
    invoke-static {}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->access$000()Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;

    move-result-object v0

    .line 162
    .local v0, adapter:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;
    if-nez v0, :cond_0

    move-wide v3, v1

    .line 177
    .end local v1           #timestamp:J
    .local v3, timestamp:J
    :goto_0
    return-wide v3

    .line 165
    .end local v3           #timestamp:J
    .restart local v1       #timestamp:J
    :cond_0
    iget v5, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    sget-object v6, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->ALPHABET:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    iget v6, v6, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    if-ne v5, v6, :cond_2

    .line 166
    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->querryAlphabetUDBTimestamp()J
    invoke-static {v0}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->access$300(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;)J

    move-result-wide v1

    :cond_1
    :goto_1
    move-wide v3, v1

    .line 177
    .end local v1           #timestamp:J
    .restart local v3       #timestamp:J
    goto :goto_0

    .line 167
    .end local v3           #timestamp:J
    .restart local v1       #timestamp:J
    :cond_2
    iget v5, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    sget-object v6, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    iget v6, v6, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    if-ne v5, v6, :cond_3

    .line 168
    const-string v5, "1"

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->querryChineseUDBTimestamp(Ljava/lang/String;)J
    invoke-static {v0, v5}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->access$400(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_1

    .line 169
    :cond_3
    iget v5, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    sget-object v6, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    iget v6, v6, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    if-ne v5, v6, :cond_4

    .line 170
    const-string v5, "2"

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->querryChineseUDBTimestamp(Ljava/lang/String;)J
    invoke-static {v0, v5}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->access$400(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_1

    .line 171
    :cond_4
    iget v5, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    sget-object v6, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    iget v6, v6, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    if-ne v5, v6, :cond_5

    .line 172
    const-string v5, "3"

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->querryChineseUDBTimestamp(Ljava/lang/String;)J
    invoke-static {v0, v5}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->access$400(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_1

    .line 173
    :cond_5
    iget v5, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    sget-object v6, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    iget v6, v6, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    if-ne v5, v6, :cond_1

    .line 174
    const-string v5, "4"

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->querryChineseUDBTimestamp(Ljava/lang/String;)J
    invoke-static {v0, v5}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->access$400(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_1
.end method

.method private getUDBData()Ljava/lang/String;
    .locals 5

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, data:Ljava/lang/String;
    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->getInstance()Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;
    invoke-static {}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->access$000()Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;

    move-result-object v0

    .line 140
    .local v0, adapter:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;
    if-nez v0, :cond_0

    move-object v2, v1

    .line 155
    .end local v1           #data:Ljava/lang/String;
    .local v2, data:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 143
    .end local v2           #data:Ljava/lang/String;
    .restart local v1       #data:Ljava/lang/String;
    :cond_0
    iget v3, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    sget-object v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->ALPHABET:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    iget v4, v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    if-ne v3, v4, :cond_2

    .line 144
    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->querryAlphabetUserDictionary()Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->access$100(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    move-object v2, v1

    .line 155
    .end local v1           #data:Ljava/lang/String;
    .restart local v2       #data:Ljava/lang/String;
    goto :goto_0

    .line 145
    .end local v2           #data:Ljava/lang/String;
    .restart local v1       #data:Ljava/lang/String;
    :cond_2
    iget v3, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    sget-object v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    iget v4, v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    if-ne v3, v4, :cond_3

    .line 146
    const-string v3, "1"

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->querryChineseUDBData(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->access$200(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 147
    :cond_3
    iget v3, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    sget-object v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    iget v4, v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    if-ne v3, v4, :cond_4

    .line 148
    const-string v3, "2"

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->querryChineseUDBData(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->access$200(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 149
    :cond_4
    iget v3, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    sget-object v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    iget v4, v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    if-ne v3, v4, :cond_5

    .line 150
    const-string v3, "3"

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->querryChineseUDBData(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->access$200(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 151
    :cond_5
    iget v3, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    sget-object v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    iget v4, v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    if-ne v3, v4, :cond_1

    .line 152
    const-string v3, "4"

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->querryChineseUDBData(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->access$200(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getUDBName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->mUDBName:Ljava/lang/String;

    return-object v0
.end method

.method private getUUID()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->mUUID:Ljava/util/UUID;

    return-object v0
.end method

.method private static hasNext()Z
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->TOTAL:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    iget v0, v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    if-lez v0, :cond_0

    sget v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->curIdx:I

    if-ltz v0, :cond_0

    sget v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->curIdx:I

    sget-object v1, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->TOTAL:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    iget v1, v1, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    if-ge v0, v1, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private insertData(Ljava/lang/String;)Z
    .locals 5
    .parameter "data"

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, retVal:Z
    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->getInstance()Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;
    invoke-static {}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->access$000()Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;

    move-result-object v0

    .line 184
    .local v0, adapter:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;
    if-nez v0, :cond_0

    move v2, v1

    .line 199
    .end local v1           #retVal:Z
    .local v2, retVal:I
    :goto_0
    return v2

    .line 187
    .end local v2           #retVal:I
    .restart local v1       #retVal:Z
    :cond_0
    iget v3, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    sget-object v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->ALPHABET:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    iget v4, v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    if-ne v3, v4, :cond_2

    .line 188
    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->insertAlphabetUserDictionary(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->access$500(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;Ljava/lang/String;)Z

    move-result v1

    :cond_1
    :goto_1
    move v2, v1

    .line 199
    .restart local v2       #retVal:I
    goto :goto_0

    .line 189
    .end local v2           #retVal:I
    :cond_2
    iget v3, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    sget-object v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    iget v4, v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    if-ne v3, v4, :cond_3

    .line 190
    const/4 v3, 0x1

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->insertChineseUDBData(ILjava/lang/String;)Z
    invoke-static {v0, v3, p1}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->access$600(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;ILjava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 191
    :cond_3
    iget v3, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    sget-object v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    iget v4, v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    if-ne v3, v4, :cond_4

    .line 192
    const/4 v3, 0x2

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->insertChineseUDBData(ILjava/lang/String;)Z
    invoke-static {v0, v3, p1}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->access$600(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;ILjava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 193
    :cond_4
    iget v3, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    sget-object v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_TC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    iget v4, v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    if-ne v3, v4, :cond_5

    .line 194
    const/4 v3, 0x3

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->insertChineseUDBData(ILjava/lang/String;)Z
    invoke-static {v0, v3, p1}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->access$600(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;ILjava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 195
    :cond_5
    iget v3, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    sget-object v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->CHINESE_HW_SC:Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    iget v4, v4, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->idx:I

    if-ne v3, v4, :cond_1

    .line 196
    const/4 v3, 0x4

    #calls: Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->insertChineseUDBData(ILjava/lang/String;)Z
    invoke-static {v0, v3, p1}, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;->access$600(Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter;ILjava/lang/String;)Z

    move-result v1

    goto :goto_1
.end method

.method private static reset()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->curIdx:I

    .line 118
    return-void
.end method

.method private setUDBName(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->mUDBName:Ljava/lang/String;

    .line 134
    return-void
.end method

.method private setUUID(Ljava/util/UUID;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->mUUID:Ljava/util/UUID;

    .line 122
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    .locals 1
    .parameter "name"

    .prologue
    .line 85
    const-class v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->$VALUES:[Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    invoke-virtual {v0}, [Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/htcime/plugin/HTCIMECSSyncAdapter$Dictionaries;

    return-object v0
.end method
