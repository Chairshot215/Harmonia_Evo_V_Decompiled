.class public Lcom/htc/opensense2/album/util/IndexerAlphabet;
.super Ljava/lang/Object;
.source "IndexerAlphabet.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final SUPPORT_SECTIONFOOTER:[Ljava/lang/String;

.field private final SUPPORT_SECTIONHEADER:[Ljava/lang/String;

.field private final SUPPORT_SECTIONINDEXER:[Ljava/lang/String;

.field private mEnableHashTop:Z

.field private mIndexer4List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field mMapSection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNextPosition:I

.field private mlistIndex:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->SUPPORT_SECTIONHEADER:[Ljava/lang/String;

    .line 17
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "Z"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->SUPPORT_SECTIONFOOTER:[Ljava/lang/String;

    .line 19
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "B"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->SUPPORT_SECTIONINDEXER:[Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mIndexer4List:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mMapSection:Ljava/util/Map;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mlistIndex:[Ljava/lang/Object;

    .line 30
    iput-boolean v3, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mEnableHashTop:Z

    .line 31
    iput v3, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mNextPosition:I

    .line 35
    return-void
.end method


# virtual methods
.method public enableHashBottom(I)V
    .locals 4
    .parameter "nPosition"

    .prologue
    const/4 v3, 0x0

    .line 93
    sget-object v0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][IndexerAlphabet][enableHashBottom]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mMapSection:Ljava/util/Map;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->SUPPORT_SECTIONFOOTER:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    aget-char v1, v1, v3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mIndexer4List:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->SUPPORT_SECTIONFOOTER:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    aget-char v1, v1, v3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public enableHashTop(I)V
    .locals 4
    .parameter "nPosition"

    .prologue
    const/4 v3, 0x0

    .line 85
    sget-object v0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][IndexerAlphabet][enableHashTop]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mEnableHashTop:Z

    .line 87
    iput p1, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mNextPosition:I

    .line 88
    iget-object v0, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mMapSection:Ljava/util/Map;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->SUPPORT_SECTIONHEADER:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    aget-char v1, v1, v3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mIndexer4List:Ljava/util/List;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->SUPPORT_SECTIONHEADER:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    aget-char v1, v1, v3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mIndexer4List:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mIndexer4List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 139
    :cond_0
    return v0
.end method

.method public getPositionForSection(I)I
    .locals 4
    .parameter "nIndex"

    .prologue
    .line 99
    const/4 v0, -0x1

    .line 101
    .local v0, nPosition:I
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->initListIndex()V

    .line 105
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mMapSection:Ljava/util/Map;

    iget-object v3, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mlistIndex:[Ljava/lang/Object;

    aget-object v3, v3, p1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 106
    iget-object v1, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mMapSection:Ljava/util/Map;

    iget-object v2, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mlistIndex:[Ljava/lang/Object;

    aget-object v2, v2, p1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 108
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->initListIndex()V

    .line 130
    iget-object v0, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mlistIndex:[Ljava/lang/Object;

    return-object v0
.end method

.method public initListIndex()V
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mlistIndex:[Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mIndexer4List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mlistIndex:[Ljava/lang/Object;

    .line 147
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    iget-object v1, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mIndexer4List:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mlistIndex:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mIndexer4List:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v0           #nIndex:I
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mlistIndex:[Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mMapSection:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 40
    iget-object v0, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mIndexer4List:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    return-void
.end method

.method public setSyncSection(Ljava/lang/String;I)V
    .locals 8
    .parameter "szID"
    .parameter "nPosition"

    .prologue
    const/4 v7, 0x0

    .line 44
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 49
    .local v0, letter:Ljava/lang/Character;
    const/4 v1, 0x0

    .line 50
    .local v1, letterIndex:Ljava/lang/Character;
    const/4 v3, 0x0

    .line 51
    .local v3, nSectionIndex:I
    move v4, p2

    .line 54
    .local v4, nSectionPosition:I
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_1
    iget-object v5, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->SUPPORT_SECTIONINDEXER:[Ljava/lang/String;

    array-length v5, v5

    if-le v5, v2, :cond_0

    .line 56
    iget-object v5, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->SUPPORT_SECTIONINDEXER:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    aget-char v5, v5, v7

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 54
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 64
    :cond_3
    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mEnableHashTop:Z

    if-ne v5, v6, :cond_4

    .line 65
    add-int/lit8 v3, v2, 0x1

    .line 69
    :goto_2
    iget-object v5, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mMapSection:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 71
    iget-object v5, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mMapSection:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v5, p0, Lcom/htc/opensense2/album/util/IndexerAlphabet;->mIndexer4List:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_4
    move v3, v2

    goto :goto_2
.end method
