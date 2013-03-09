.class public Lcom/htc/sdm/provider/SoundSettingDAO;
.super Ljava/lang/Object;
.source "SoundSettingDAO.java"


# instance fields
.field public GUID:Ljava/lang/String;

.field public _id:J

.field public refType:Ljava/lang/String;

.field public soundUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sdm/provider/SoundSettingDAO;->_id:J

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/provider/SoundSettingDAO;->GUID:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/provider/SoundSettingDAO;->soundUri:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sdm/provider/SoundSettingDAO;->refType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 12
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 13
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sdm/provider/SoundSettingDAO;->GUID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->refType:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sdm/provider/SoundSettingDAO;->refType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->soundUri:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;

    invoke-virtual {v1}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sdm/provider/SoundSettingDAO;->soundUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-object v0
.end method
