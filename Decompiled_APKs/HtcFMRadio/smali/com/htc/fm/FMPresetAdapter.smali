.class public Lcom/htc/fm/FMPresetAdapter;
.super Ljava/lang/Object;
.source "FMPresetAdapter.java"


# static fields
.field private static final PresetCols:[Ljava/lang/String;

.field public static mNowPlayingId:I


# instance fields
.field mContext:Landroid/content/Context;

.field private mIndex:I

.field private mPresetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fm/Preset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "composer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "is_music"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/fm/FMPresetAdapter;->PresetCols:[Ljava/lang/String;

    .line 26
    const/4 v0, -0x1

    sput v0, Lcom/htc/fm/FMPresetAdapter;->mNowPlayingId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fm/FMPresetAdapter;->mContext:Landroid/content/Context;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    .line 31
    iput-object p1, p0, Lcom/htc/fm/FMPresetAdapter;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private moveIndex(I)V
    .locals 5
    .parameter "freq"

    .prologue
    .line 80
    iget-object v4, p0, Lcom/htc/fm/FMPresetAdapter;->mPresetList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetAdapter;->getCount()I

    move-result v0

    .line 84
    .local v0, count:I
    if-nez v0, :cond_2

    .line 85
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    goto :goto_0

    .line 89
    :cond_2
    const/4 v3, 0x0

    .line 90
    .local v3, retPreset:Lcom/htc/fm/Preset;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 91
    iget-object v4, p0, Lcom/htc/fm/FMPresetAdapter;->mPresetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/fm/Preset;

    .line 92
    .local v2, preset:Lcom/htc/fm/Preset;
    iget v4, v2, Lcom/htc/fm/Preset;->freq:I

    if-ne v4, p1, :cond_3

    .line 93
    iput v1, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    goto :goto_0

    .line 90
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/fm/FMPresetAdapter;->mPresetList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 62
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMPresetAdapter;->mPresetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFirstPreset()Lcom/htc/fm/Preset;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/fm/FMPresetAdapter;->mPresetList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fm/FMPresetAdapter;->mPresetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMPresetAdapter;->mPresetList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fm/Preset;

    goto :goto_0
.end method

.method public getFrequencyTitle(I)Ljava/lang/String;
    .locals 5
    .parameter "freq"

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetAdapter;->getCount()I

    move-result v0

    .line 165
    .local v0, count:I
    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object v3

    .line 167
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 168
    iget-object v4, p0, Lcom/htc/fm/FMPresetAdapter;->mPresetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/fm/Preset;

    .line 170
    .local v2, preset:Lcom/htc/fm/Preset;
    iget v4, v2, Lcom/htc/fm/Preset;->freq:I

    if-ne v4, p1, :cond_2

    iget-object v4, v2, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 171
    iget-object v3, v2, Lcom/htc/fm/Preset;->title:Ljava/lang/String;

    goto :goto_0

    .line 167
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getNearPreset(I)Lcom/htc/fm/Preset;
    .locals 7
    .parameter "freq"

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetAdapter;->getCount()I

    move-result v0

    .line 134
    .local v0, count:I
    if-nez v0, :cond_1

    .line 135
    const/4 v5, 0x0

    .line 146
    :cond_0
    return-object v5

    .line 136
    :cond_1
    move v1, p1

    .line 137
    .local v1, diff:I
    const/4 v5, 0x0

    .line 138
    .local v5, retPreset:Lcom/htc/fm/Preset;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 139
    iget-object v6, p0, Lcom/htc/fm/FMPresetAdapter;->mPresetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/fm/Preset;

    .line 140
    .local v4, preset:Lcom/htc/fm/Preset;
    iget v6, v4, Lcom/htc/fm/Preset;->freq:I

    sub-int v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 141
    .local v2, dis:I
    if-ge v2, v1, :cond_2

    .line 142
    move v1, v2

    .line 143
    move-object v5, v4

    .line 138
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getNowpreset()Lcom/htc/fm/Preset;
    .locals 3

    .prologue
    .line 72
    const-string v0, "FMPresetAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMTuner] getNowPreset() - mIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") count("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/fm/FMPresetAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    invoke-virtual {p0}, Lcom/htc/fm/FMPresetAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 74
    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMPresetAdapter;->mPresetList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fm/Preset;

    goto :goto_0
.end method

.method public getPresetsNumber()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/fm/FMPresetAdapter;->mPresetList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMPresetAdapter;->mPresetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public next(I)Lcom/htc/fm/Preset;
    .locals 4
    .parameter "freq"

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-direct {p0, p1}, Lcom/htc/fm/FMPresetAdapter;->moveIndex(I)V

    .line 102
    const-string v0, "[FMPresetAdapter]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMPresetAdapter][FMTuner] freq("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") next mIndex["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget v0, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    .line 104
    const-string v0, "[FMPresetAdapter]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMPresetAdapter][FMTuner] freq("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") next mIndex["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget v0, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    invoke-virtual {p0}, Lcom/htc/fm/FMPresetAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 106
    iput v3, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    .line 107
    :cond_0
    iget v0, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    .line 108
    iput v3, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetAdapter;->getNowpreset()Lcom/htc/fm/Preset;

    move-result-object v0

    return-object v0
.end method

.method public presetExists(I)Z
    .locals 7
    .parameter "freq"

    .prologue
    const/4 v5, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetAdapter;->getCount()I

    move-result v0

    .line 151
    .local v0, count:I
    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v5

    .line 153
    :cond_1
    move v1, p1

    .line 154
    .local v1, diff:I
    const/4 v4, 0x0

    .line 155
    .local v4, retPreset:Lcom/htc/fm/Preset;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 156
    iget-object v6, p0, Lcom/htc/fm/FMPresetAdapter;->mPresetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/fm/Preset;

    .line 157
    .local v3, preset:Lcom/htc/fm/Preset;
    iget v6, v3, Lcom/htc/fm/Preset;->freq:I

    if-ne v6, p1, :cond_2

    .line 158
    const/4 v5, 0x1

    goto :goto_0

    .line 155
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public previous(I)Lcom/htc/fm/Preset;
    .locals 4
    .parameter "freq"

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-direct {p0, p1}, Lcom/htc/fm/FMPresetAdapter;->moveIndex(I)V

    .line 116
    const-string v0, "[FMPresetAdapter]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMPresetAdapter][FMTuner] previous freq("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mIndex["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget v0, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    .line 118
    const-string v0, "[FMPresetAdapter]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMPresetAdapter][FMTuner] previous freq("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mIndex["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget v0, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    invoke-virtual {p0}, Lcom/htc/fm/FMPresetAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 120
    iput v3, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    .line 122
    :cond_0
    iget v0, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 124
    iput v3, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    .line 128
    :cond_1
    :goto_0
    const-string v0, "[FMPresetAdapter]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FMPresetAdapter][FMTuner] previous freq("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mIndex["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetAdapter;->getNowpreset()Lcom/htc/fm/Preset;

    move-result-object v0

    return-object v0

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    .line 57
    return-void
.end method

.method public restore(Z)V
    .locals 2
    .parameter "isreset"

    .prologue
    .line 35
    const-string v0, "FMPresetAdapter"

    const-string v1, "[FMPresetAdapter] restore() - enter"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    if-eqz p1, :cond_0

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fm/FMPresetAdapter;->mIndex:I

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/htc/fm/FMPresetAdapter;->mPresetList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/htc/fm/FMPresetAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/fm/FMUtils;->getPresetList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/FMPresetAdapter;->mPresetList:Ljava/util/ArrayList;

    .line 41
    const-string v0, "FMPresetAdapter"

    const-string v1, "[FMPresetAdapter] restore() - exit - 1"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/htc/fm/FMPresetAdapter;->mPresetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    iget-object v0, p0, Lcom/htc/fm/FMPresetAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/fm/FMUtils;->getPresetList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fm/FMPresetAdapter;->mPresetList:Ljava/util/ArrayList;

    .line 46
    const-string v0, "FMPresetAdapter"

    const-string v1, "[FMPresetAdapter] restore() - exit"

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public searchPreset(I)Lcom/htc/fm/Preset;
    .locals 7
    .parameter "freq"

    .prologue
    const/4 v5, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/htc/fm/FMPresetAdapter;->getCount()I

    move-result v0

    .line 178
    .local v0, count:I
    if-nez v0, :cond_1

    move-object v3, v5

    .line 187
    :cond_0
    :goto_0
    return-object v3

    .line 180
    :cond_1
    move v1, p1

    .line 181
    .local v1, diff:I
    const/4 v4, 0x0

    .line 182
    .local v4, retPreset:Lcom/htc/fm/Preset;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 183
    iget-object v6, p0, Lcom/htc/fm/FMPresetAdapter;->mPresetList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/fm/Preset;

    .line 184
    .local v3, preset:Lcom/htc/fm/Preset;
    iget v6, v3, Lcom/htc/fm/Preset;->freq:I

    if-eq v6, p1, :cond_0

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3           #preset:Lcom/htc/fm/Preset;
    :cond_2
    move-object v3, v5

    .line 187
    goto :goto_0
.end method
