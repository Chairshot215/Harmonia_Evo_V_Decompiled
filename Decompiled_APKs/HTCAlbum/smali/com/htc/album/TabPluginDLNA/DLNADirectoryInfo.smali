.class public Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
.super Ljava/lang/Object;
.source "DLNADirectoryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXPORT_PLACEHOLDER:Ljava/lang/String; = "###"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mID:Ljava/lang/String;

.field private mIndexPage:I

.field private mListPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    .line 338
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo$1;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo$1;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mID:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 18
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mID:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 18
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    .line 352
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 353
    return-void
.end method


# virtual methods
.method public addFilePage(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;)Z
    .locals 3
    .parameter "pageInfo"

    .prologue
    const/4 v1, 0x0

    .line 311
    if-nez p1, :cond_0

    .line 327
    :goto_0
    return v1

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 316
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 317
    .local v0, nPageSize:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    if-nez v0, :cond_2

    .line 320
    iput v1, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 325
    .end local v0           #nPageSize:I
    :cond_1
    :goto_1
    sget-object v1, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][DLNADirectoryInfo]Add File page"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v1, 0x1

    goto :goto_0

    .line 322
    .restart local v0       #nPageSize:I
    :cond_2
    iget v1, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    goto :goto_1
.end method

.method public createEmtpyPage()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .locals 4

    .prologue
    .line 27
    const/4 v1, 0x0

    .line 28
    .local v1, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 29
    .local v0, nPageSize:I
    new-instance v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 30
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    if-eqz v0, :cond_0

    .line 32
    iget v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 36
    :goto_0
    sget-object v2, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][DLNADirectoryInfo]Add New empty page..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-object v1

    .line 34
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public exportPages()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 78
    .local v3, nPageSize:I
    if-nez v3, :cond_0

    move-object v1, v0

    .line 99
    .end local v0           #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v1, exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 81
    .end local v1           #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0       #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x0

    .line 82
    .local v4, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .restart local v0       #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_1
    if-le v3, v2, :cond_2

    .line 85
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    check-cast v4, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .restart local v4       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    if-nez v4, :cond_1

    .line 83
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getMidIndex()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v1, v0

    .line 99
    .end local v0           #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1       #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public getCurrentPageIndex()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    return v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageCurrent()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .locals 5

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 169
    .local v1, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 171
    .local v0, nPageSize:I
    if-nez v0, :cond_0

    .line 173
    new-instance v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 174
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 176
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 179
    :cond_0
    sget-object v2, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][DLNADirectoryInfo][getPageCurrent]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    if-gt v0, v2, :cond_1

    .line 181
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .line 184
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    .line 185
    return-object v1
.end method

.method public getPageInfo(I)Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .locals 4
    .parameter "nIndex"

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 121
    .local v0, nPageSize:I
    if-nez v0, :cond_0

    move-object v2, v1

    .line 129
    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .local v2, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    :goto_0
    return-object v2

    .line 124
    .end local v2           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    :cond_0
    if-ltz p1, :cond_1

    if-gt v0, p1, :cond_2

    :cond_1
    move-object v2, v1

    .line 125
    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .restart local v2       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    goto :goto_0

    .line 127
    .end local v2           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    :cond_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    move-object v2, v1

    .line 129
    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .restart local v2       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    goto :goto_0
.end method

.method public getPageNext()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v2, 0x0

    .line 217
    .local v2, pageInfoNext:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 219
    .local v0, nPageSize:I
    if-nez v0, :cond_0

    .line 221
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Create first page..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 223
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 256
    :goto_0
    invoke-virtual {v1, v7}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 259
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: DirN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Dir: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Top: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Mid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getMidIndex()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Bot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v3, v7}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    move-object v3, v1

    .line 268
    :goto_1
    return-object v3

    .line 226
    :cond_0
    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v3, v3, 0x1

    if-le v0, v3, :cond_1

    .line 228
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Next page..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .line 230
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    goto/16 :goto_0

    .line 234
    :cond_1
    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    if-lt v3, v0, :cond_2

    .line 236
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: index is out of pagesize"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v3, 0x0

    goto :goto_1

    .line 240
    :cond_2
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: Create new page..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .line 246
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    new-instance v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v2           #pageInfoNext:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 247
    .restart local v2       #pageInfoNext:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    .line 248
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getMidIndex()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setMidIndex(J)V

    .line 249
    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    .line 250
    sget-object v3, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][DLNADirectoryInfo][getPageNext]: sync previous info"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    goto/16 :goto_0
.end method

.method public getPagePrevious()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 272
    const/4 v4, 0x0

    .line 273
    .local v4, pageInfoPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v1, 0x0

    .line 274
    .local v1, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v3, 0x0

    .line 276
    .local v3, pageInfoCached:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 278
    .local v0, nPageSize:I
    if-eqz v0, :cond_0

    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    if-gtz v5, :cond_1

    :cond_0
    move-object v2, v1

    .line 307
    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .local v2, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    :goto_0
    return-object v2

    .line 281
    .end local v2           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .line 282
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 284
    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    if-gt v9, v5, :cond_2

    .line 286
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #pageInfoPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    check-cast v4, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .line 289
    .restart local v4       #pageInfoPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    :cond_2
    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 290
    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    if-gez v5, :cond_3

    .line 291
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 293
    :cond_3
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: DirN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    if-eqz v4, :cond_4

    .line 296
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: Prev Bot: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setMidIndex(J)V

    .line 299
    :cond_4
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: Dir: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: Top: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: Mid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getMidIndex()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: Bot: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNADirectoryInfo][getPagePrevious]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-virtual {v5, v9}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    move-object v2, v1

    .line 307
    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .restart local v2       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    goto/16 :goto_0
.end method

.method public getPageRoot()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    .line 189
    const/4 v1, 0x0

    .line 191
    .local v1, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 192
    .local v0, nPageSize:I
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 194
    if-nez v0, :cond_0

    .line 196
    new-instance v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 197
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual {v1, v6}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    .line 198
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :goto_0
    return-object v1

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .line 203
    .restart local v1       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual {v1, v6}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    .line 204
    invoke-virtual {v1, v4, v5}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    .line 205
    invoke-virtual {v1, v4, v5}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setMidIndex(J)V

    .line 206
    invoke-virtual {v1, v4, v5}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    goto :goto_0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public importPages(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, importInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 72
    :cond_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 46
    .local v1, nPageSize:I
    if-eqz v1, :cond_0

    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    if-le v1, v0, :cond_0

    .line 52
    new-instance v2, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v2           #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 55
    .restart local v2       #pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setMidIndex(J)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    .line 69
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public printCurrentPageLog()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mID:Ljava/lang/String;

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 359
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    const-class v1, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 360
    return-void
.end method

.method public removeAllPages()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 335
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 337
    :cond_0
    return-void
.end method

.method public setCurrentPageIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 137
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    .line 138
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0
    .parameter "szID"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mID:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "szName"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 371
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mIndexPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->mListPages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 373
    return-void
.end method
