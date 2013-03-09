.class public Lcom/htc/sdm/provider/SoundSetChildDAO;
.super Ljava/lang/Object;
.source "SoundSetChildDAO.java"


# instance fields
.field public GUID:Ljava/lang/String;

.field public PARENT_GUID:Ljava/lang/String;

.field public _id:J

.field public refType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sdm/provider/SoundSetChildDAO;->_id:J

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/provider/SoundSetChildDAO;->GUID:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/provider/SoundSetChildDAO;->PARENT_GUID:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 10
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 11
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sdm/provider/SoundSetChildDAO;->GUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->PARENT_GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sdm/provider/SoundSetChildDAO;->PARENT_GUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_CHILD_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sdm/provider/SoundSetChildDAO;->refType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-object v0
.end method
