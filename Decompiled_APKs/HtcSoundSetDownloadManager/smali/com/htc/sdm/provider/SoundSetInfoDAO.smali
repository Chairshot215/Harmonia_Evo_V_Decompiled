.class public Lcom/htc/sdm/provider/SoundSetInfoDAO;
.super Ljava/lang/Object;
.source "SoundSetInfoDAO.java"


# instance fields
.field public GUID:Ljava/lang/String;

.field public _id:J

.field public author:Ljava/lang/String;

.field public corp:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public lang:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public refType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->_id:J

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->refType:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->GUID:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->lang:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->name:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->author:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->corp:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 18
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 19
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->GUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->lang:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->author:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->author:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->corp:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->corp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->description:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sdm/provider/SoundSetInfoDAO;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-object v0
.end method
