.class public Lcom/android/htcdialer/search/DialerIndexer;
.super Landroid/database/DataSetObserver;
.source "DialerIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
#the value of this static final field might be set in the static constructor
.field public static final INDEX_ANONYMOUS:I = 0x0

.field public static final INDEX_CALLLOG:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final INDEX_CONTACT_A:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final INDEX_CONTACT_Z:I = 0x0

.field public static final INDEX_FAVORITE:I = 0x1

.field private static final mSections:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSectionCount:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v1, 0x33

    const/4 v2, 0x0

    .line 14
    sget-boolean v0, Lcom/android/htcdialer/DialerApp;->USE_KOREAN_INDEX:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "\u260e"

    aput-object v3, v0, v2

    const-string v3, "\u2665"

    aput-object v3, v0, v4

    const-string v3, "\u3131"

    aput-object v3, v0, v5

    const-string v3, "\u3132"

    aput-object v3, v0, v6

    const/4 v3, 0x4

    const-string v4, "\u3134"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "\u3137"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "\u3138"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "\u3139"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "\u3141"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "\u3142"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "\u3143"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "\u3145"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "\u3146"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "\u3147"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "\u3148"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "\u3149"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "\u314a"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "\u314b"

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const-string v4, "\u314c"

    aput-object v4, v0, v3

    const/16 v3, 0x13

    const-string v4, "\u314d"

    aput-object v4, v0, v3

    const/16 v3, 0x14

    const-string v4, "\u314e"

    aput-object v4, v0, v3

    const/16 v3, 0x15

    const-string v4, "\u3140"

    aput-object v4, v0, v3

    const/16 v3, 0x16

    const-string v4, "\u3144"

    aput-object v4, v0, v3

    const/16 v3, 0x17

    const-string v4, "\u314f"

    aput-object v4, v0, v3

    const/16 v3, 0x18

    const-string v4, "\u3150"

    aput-object v4, v0, v3

    const/16 v3, 0x19

    const-string v4, "\u3151"

    aput-object v4, v0, v3

    const/16 v3, 0x1a

    const-string v4, "\u3152"

    aput-object v4, v0, v3

    const/16 v3, 0x1b

    const-string v4, "\u3153"

    aput-object v4, v0, v3

    const/16 v3, 0x1c

    const-string v4, "\u3154"

    aput-object v4, v0, v3

    const/16 v3, 0x1d

    const-string v4, "\u3155"

    aput-object v4, v0, v3

    const/16 v3, 0x1e

    const-string v4, "\u3156"

    aput-object v4, v0, v3

    const/16 v3, 0x1f

    const-string v4, "\u3157"

    aput-object v4, v0, v3

    const/16 v3, 0x20

    const-string v4, "\u3158"

    aput-object v4, v0, v3

    const/16 v3, 0x21

    const-string v4, "\u3159"

    aput-object v4, v0, v3

    const/16 v3, 0x22

    const-string v4, "\u315a"

    aput-object v4, v0, v3

    const/16 v3, 0x23

    const-string v4, "\u315b"

    aput-object v4, v0, v3

    const/16 v3, 0x24

    const-string v4, "\u315c"

    aput-object v4, v0, v3

    const/16 v3, 0x25

    const-string v4, "\u315d"

    aput-object v4, v0, v3

    const/16 v3, 0x26

    const-string v4, "\u315e"

    aput-object v4, v0, v3

    const/16 v3, 0x27

    const-string v4, "\u315f"

    aput-object v4, v0, v3

    const/16 v3, 0x28

    const-string v4, "\u3160"

    aput-object v4, v0, v3

    const/16 v3, 0x29

    const-string v4, "\u3161"

    aput-object v4, v0, v3

    const/16 v3, 0x2a

    const-string v4, "\u3162"

    aput-object v4, v0, v3

    const/16 v3, 0x2b

    const-string v4, "\u3163"

    aput-object v4, v0, v3

    const/16 v3, 0x2c

    const-string v4, "\u3133"

    aput-object v4, v0, v3

    const/16 v3, 0x2d

    const-string v4, "\u3135"

    aput-object v4, v0, v3

    const/16 v3, 0x2e

    const-string v4, "\u3136"

    aput-object v4, v0, v3

    const/16 v3, 0x2f

    const-string v4, "\u313a"

    aput-object v4, v0, v3

    const/16 v3, 0x30

    const-string v4, "\u313b"

    aput-object v4, v0, v3

    const/16 v3, 0x31

    const-string v4, "\u313c"

    aput-object v4, v0, v3

    const/16 v3, 0x32

    const-string v4, "\u313d"

    aput-object v4, v0, v3

    const-string v3, "\u313e"

    aput-object v3, v0, v1

    const/16 v3, 0x34

    const-string v4, "\u313f"

    aput-object v4, v0, v3

    const/16 v3, 0x35

    const-string v4, "#"

    aput-object v4, v0, v3

    const/16 v3, 0x36

    const-string v4, "A"

    aput-object v4, v0, v3

    const/16 v3, 0x37

    const-string v4, "B"

    aput-object v4, v0, v3

    const/16 v3, 0x38

    const-string v4, "C"

    aput-object v4, v0, v3

    const/16 v3, 0x39

    const-string v4, "D"

    aput-object v4, v0, v3

    const/16 v3, 0x3a

    const-string v4, "E"

    aput-object v4, v0, v3

    const/16 v3, 0x3b

    const-string v4, "F"

    aput-object v4, v0, v3

    const/16 v3, 0x3c

    const-string v4, "G"

    aput-object v4, v0, v3

    const/16 v3, 0x3d

    const-string v4, "H"

    aput-object v4, v0, v3

    const/16 v3, 0x3e

    const-string v4, "I"

    aput-object v4, v0, v3

    const/16 v3, 0x3f

    const-string v4, "J"

    aput-object v4, v0, v3

    const/16 v3, 0x40

    const-string v4, "K"

    aput-object v4, v0, v3

    const/16 v3, 0x41

    const-string v4, "L"

    aput-object v4, v0, v3

    const/16 v3, 0x42

    const-string v4, "M"

    aput-object v4, v0, v3

    const/16 v3, 0x43

    const-string v4, "N"

    aput-object v4, v0, v3

    const/16 v3, 0x44

    const-string v4, "O"

    aput-object v4, v0, v3

    const/16 v3, 0x45

    const-string v4, "P"

    aput-object v4, v0, v3

    const/16 v3, 0x46

    const-string v4, "Q"

    aput-object v4, v0, v3

    const/16 v3, 0x47

    const-string v4, "R"

    aput-object v4, v0, v3

    const/16 v3, 0x48

    const-string v4, "S"

    aput-object v4, v0, v3

    const/16 v3, 0x49

    const-string v4, "T"

    aput-object v4, v0, v3

    const/16 v3, 0x4a

    const-string v4, "U"

    aput-object v4, v0, v3

    const/16 v3, 0x4b

    const-string v4, "V"

    aput-object v4, v0, v3

    const/16 v3, 0x4c

    const-string v4, "W"

    aput-object v4, v0, v3

    const/16 v3, 0x4d

    const-string v4, "X"

    aput-object v4, v0, v3

    const/16 v3, 0x4e

    const-string v4, "Y"

    aput-object v4, v0, v3

    const/16 v3, 0x4f

    const-string v4, "Z"

    aput-object v4, v0, v3

    :goto_0
    sput-object v0, Lcom/android/htcdialer/search/DialerIndexer;->mSections:[Ljava/lang/String;

    .line 33
    sget-boolean v0, Lcom/android/htcdialer/DialerApp;->USE_KOREAN_INDEX:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/htcdialer/search/DialerIndexer;->INDEX_ANONYMOUS:I

    .line 34
    sget-boolean v0, Lcom/android/htcdialer/DialerApp;->USE_KOREAN_INDEX:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/htcdialer/search/DialerIndexer;->INDEX_CONTACT_A:I

    .line 35
    sget-boolean v0, Lcom/android/htcdialer/DialerApp;->USE_KOREAN_INDEX:Z

    if-eqz v0, :cond_3

    :goto_3
    add-int/lit8 v0, v1, 0x1c

    sput v0, Lcom/android/htcdialer/search/DialerIndexer;->INDEX_CONTACT_Z:I

    return-void

    .line 14
    :cond_0
    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "\u260e"

    aput-object v3, v0, v2

    const-string v3, "\u2665"

    aput-object v3, v0, v4

    const-string v3, "#"

    aput-object v3, v0, v5

    const-string v3, "A"

    aput-object v3, v0, v6

    const/4 v3, 0x4

    const-string v4, "B"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "C"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "D"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "E"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "F"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "G"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "H"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "I"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "J"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "K"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "L"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "M"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "N"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "O"

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const-string v4, "P"

    aput-object v4, v0, v3

    const/16 v3, 0x13

    const-string v4, "Q"

    aput-object v4, v0, v3

    const/16 v3, 0x14

    const-string v4, "R"

    aput-object v4, v0, v3

    const/16 v3, 0x15

    const-string v4, "S"

    aput-object v4, v0, v3

    const/16 v3, 0x16

    const-string v4, "T"

    aput-object v4, v0, v3

    const/16 v3, 0x17

    const-string v4, "U"

    aput-object v4, v0, v3

    const/16 v3, 0x18

    const-string v4, "V"

    aput-object v4, v0, v3

    const/16 v3, 0x19

    const-string v4, "W"

    aput-object v4, v0, v3

    const/16 v3, 0x1a

    const-string v4, "X"

    aput-object v4, v0, v3

    const/16 v3, 0x1b

    const-string v4, "Y"

    aput-object v4, v0, v3

    const/16 v3, 0x1c

    const-string v4, "Z"

    aput-object v4, v0, v3

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 33
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 34
    goto/16 :goto_2

    :cond_3
    move v1, v2

    .line 35
    goto/16 :goto_3
.end method

.method public constructor <init>(Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "adapter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/SearchableObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, mList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/android/htcdialer/search/DialerIndexer;->updateIndexer(Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;Ljava/util/ArrayList;)V

    .line 41
    invoke-virtual {p1}, Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/search/DialerIndexer;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 3
    .parameter "sectionIndex"

    .prologue
    const/4 v0, 0x0

    .line 51
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/htcdialer/search/DialerIndexer;->mSectionCount:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htcdialer/search/DialerIndexer;->mSectionCount:[I

    array-length v1, v1

    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/android/htcdialer/search/DialerIndexer;->mSectionCount:[I

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 55
    iget-object v1, p0, Lcom/android/htcdialer/search/DialerIndexer;->mSectionCount:[I

    array-length v1, v1

    add-int/lit8 p1, v1, -0x1

    .line 58
    :cond_2
    if-eqz p1, :cond_0

    .line 63
    :goto_1
    sget v0, Lcom/android/htcdialer/search/DialerIndexer;->INDEX_CONTACT_Z:I

    if-gt p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/htcdialer/search/DialerIndexer;->mSectionCount:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/htcdialer/search/DialerIndexer;->mSectionCount:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    if-ne v0, v1, :cond_3

    .line 64
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/android/htcdialer/search/DialerIndexer;->mSectionCount:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/htcdialer/search/DialerIndexer;->updateSections()V

    .line 46
    sget-object v0, Lcom/android/htcdialer/search/DialerIndexer;->mSections:[Ljava/lang/String;

    return-object v0
.end method

.method public updateIndexer(Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "adapter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htcdialer/BaseSmartSearchList$SearchListAdapter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/SearchableObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, mList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htcdialer/search/SearchableObject;>;"
    invoke-virtual {p0}, Lcom/android/htcdialer/search/DialerIndexer;->updateSections()V

    .line 84
    sget-object v4, Lcom/android/htcdialer/search/DialerIndexer;->mSections:[Ljava/lang/String;

    array-length v3, v4

    .line 85
    .local v3, sectionCount:I
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerIndexer;->mSectionCount:[I

    if-nez v4, :cond_0

    .line 86
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/htcdialer/search/DialerIndexer;->mSectionCount:[I

    .line 89
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 90
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerIndexer;->mSectionCount:[I

    const/4 v5, 0x0

    aput v5, v4, v2

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_1
    if-nez p2, :cond_3

    .line 110
    :cond_2
    return-void

    .line 97
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 98
    .local v0, count:I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_6

    .line 99
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htcdialer/search/SearchableObject;

    iget v1, v4, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 100
    .local v1, curIndex:I
    if-lt v1, v3, :cond_4

    .line 101
    add-int/lit8 v1, v3, -0x1

    .line 103
    :cond_4
    if-ltz v1, :cond_5

    if-ge v1, v3, :cond_5

    .line 104
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerIndexer;->mSectionCount:[I

    aget v5, v4, v1

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v1

    .line 98
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    .end local v1           #curIndex:I
    :cond_6
    const/4 v2, 0x1

    :goto_2
    if-ge v2, v3, :cond_2

    .line 108
    iget-object v4, p0, Lcom/android/htcdialer/search/DialerIndexer;->mSectionCount:[I

    aget v5, v4, v2

    iget-object v6, p0, Lcom/android/htcdialer/search/DialerIndexer;->mSectionCount:[I

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    aput v5, v4, v2

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public updateSections()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/htcdialer/search/DialerIndexer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/android/htcdialer/search/DialerIndexer;->mSections:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/htcdialer/search/DialerIndexer;->mContext:Landroid/content/Context;

    const v3, 0x7f09007f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 77
    sget-object v0, Lcom/android/htcdialer/search/DialerIndexer;->mSections:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/htcdialer/search/DialerIndexer;->mContext:Landroid/content/Context;

    const v3, 0x7f090027

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 79
    :cond_0
    return-void
.end method
