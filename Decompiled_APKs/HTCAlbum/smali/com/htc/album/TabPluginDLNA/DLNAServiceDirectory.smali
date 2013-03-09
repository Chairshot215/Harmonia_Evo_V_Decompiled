.class public Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
.super Ljava/lang/Object;
.source "DLNAServiceDirectory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mIndexFolder:I

.field private mListFolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->LOG_TAG:Ljava/lang/String;

    .line 303
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory$1;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory$1;-><init>()V

    sput-object v0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    .line 16
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    .line 21
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 316
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    .line 16
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    .line 317
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->readFromParcel(Landroid/os/Parcel;)V

    .line 318
    return-void
.end method

.method public static createEmtpyDirectory(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .locals 1
    .parameter "szID"
    .parameter "szName"

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;-><init>()V

    .line 38
    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    invoke-virtual {v0, p0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->setID(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->setName(Ljava/lang/String;)V

    .line 41
    return-object v0
.end method

.method public static exportDirectoriesToStringURI(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, objList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v1, "/"

    .line 25
    .local v1, szLocation:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 27
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 32
    .end local v0           #i:I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public addLastestAccess(Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .locals 8
    .parameter "directory"

    .prologue
    .line 219
    move-object v0, p1

    .line 220
    .local v0, dirInfoAccess:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    const/4 v1, 0x0

    .line 222
    .local v1, dirInfoCached:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 224
    .local v3, nDirSize:I
    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    .line 225
    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    if-gt v3, v5, :cond_1

    .line 227
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNAServiceDirectory][getNext]: new directory1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_0
    :goto_0
    return-object v0

    .line 232
    :cond_1
    if-eqz v3, :cond_0

    .line 234
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #dirInfoCached:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .line 236
    .restart local v1       #dirInfoCached:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNAServiceDirectory][getNext]: old directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_2
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNAServiceDirectory][getNext]: new directory2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    add-int/lit8 v2, v5, -0x1

    .line 245
    .local v2, nCountEnd:I
    add-int/lit8 v4, v3, -0x1

    .local v4, nIndex:I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 247
    sget-object v5, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][DLNAServiceDirectory][getNext]: remove: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 245
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 250
    :cond_3
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public exportDirectories()Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 96
    .local v3, nDirSize:I
    if-nez v3, :cond_0

    move-object v2, v1

    .line 124
    .end local v1           #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .local v2, exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_0
    return-object v2

    .line 99
    .end local v2           #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v1       #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_0
    const/4 v0, 0x0

    .line 100
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .restart local v1       #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    add-int/lit8 v5, v3, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    const/4 v4, 0x0

    .local v4, nIndex:I
    :goto_1
    if-le v3, v4, :cond_2

    .line 108
    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-nez v0, :cond_1

    .line 106
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getCurrentPageIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->exportPages()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v2, v1

    .line 124
    .end local v1           #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v2       #exportInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method public getCurrent()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .locals 5

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 202
    .local v2, nDirectorySize:I
    if-nez v2, :cond_0

    move-object v1, v0

    .line 210
    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .local v1, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :goto_0
    return-object v1

    .line 205
    .end local v1           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :cond_0
    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    if-gt v2, v3, :cond_1

    .line 206
    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    .line 208
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    move-object v1, v0

    .line 210
    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v1       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    goto :goto_0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    return v0
.end method

.method public getDirectories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInfo(I)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .locals 4
    .parameter "nIndex"

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 175
    .local v2, nDirectorySize:I
    if-nez v2, :cond_0

    move-object v1, v0

    .line 182
    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .local v1, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :goto_0
    return-object v1

    .line 178
    .end local v1           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :cond_0
    if-gt v2, p1, :cond_1

    move-object v1, v0

    .line 179
    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v1       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    goto :goto_0

    .line 181
    .end local v1           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    move-object v1, v0

    .line 182
    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v1       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    goto :goto_0
.end method

.method public getNext(Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .locals 1
    .parameter "directory"

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->addLastestAccess(Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPrevious()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .locals 5

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 290
    .local v2, nDirSize:I
    if-nez v2, :cond_0

    move-object v1, v0

    .line 301
    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .local v1, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :goto_0
    return-object v1

    .line 293
    .end local v1           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :cond_0
    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    .line 294
    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    if-gez v3, :cond_1

    .line 296
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    move-object v1, v0

    .line 297
    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v1       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    goto :goto_0

    .line 300
    .end local v1           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    move-object v1, v0

    .line 301
    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v1       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    goto :goto_0
.end method

.method public getRoot()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .locals 5

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 189
    .local v2, nDirectorySize:I
    if-nez v2, :cond_0

    move-object v1, v0

    .line 195
    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .local v1, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :goto_0
    return-object v1

    .line 192
    .end local v1           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    .line 193
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .restart local v0       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    move-object v1, v0

    .line 195
    .end local v0           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    .restart local v1       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public importDirectories(Ljava/util/ArrayList;)V
    .locals 5
    .parameter "importInfo"

    .prologue
    .line 45
    if-nez p1, :cond_1

    .line 90
    :cond_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 49
    .local v2, nDirSize:I
    if-eqz v2, :cond_0

    .line 52
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 54
    const/4 v1, 0x0

    .line 56
    .local v1, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    const/4 v3, 0x0

    .local v3, nIndex:I
    :goto_0
    if-le v2, v3, :cond_0

    .line 61
    if-nez v3, :cond_2

    .line 63
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    .line 56
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    :cond_2
    new-instance v1, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .end local v1           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    invoke-direct {v1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;-><init>()V

    .line 70
    .restart local v1       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->setID(Ljava/lang/String;)V

    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->setName(Ljava/lang/String;)V

    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 78
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 81
    .local v0, currentIndex:I
    add-int/lit8 v3, v3, 0x1

    .line 82
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->importPages(Ljava/util/ArrayList;)V

    .line 85
    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->setCurrentPageIndex(I)V

    .line 87
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public printCurrentDirLog()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    .line 322
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 323
    return-void
.end method

.method public removeChildrenFolder(Ljava/lang/String;)Z
    .locals 5
    .parameter "id"

    .prologue
    .line 260
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 262
    .local v3, iter:Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 263
    .local v1, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    const/4 v0, 0x0

    .line 264
    .local v0, bDeleteChildren:Z
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 266
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    check-cast v1, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .line 268
    .restart local v1       #dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-eqz v1, :cond_0

    .line 271
    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 272
    const/4 v0, 0x1

    .line 274
    :cond_1
    if-eqz v0, :cond_0

    .line 275
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 278
    :cond_2
    iget-object v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 279
    .local v2, folderSize:I
    if-lez v2, :cond_3

    .line 280
    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    .line 283
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 282
    :cond_3
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    goto :goto_1
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 155
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    .line 156
    return-void
.end method

.method public setDirectories(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, directories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 165
    return-void
.end method

.method public setDirectory(Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;)V
    .locals 1
    .parameter "directory"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 332
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mIndexFolder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->mListFolder:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 334
    return-void
.end method
