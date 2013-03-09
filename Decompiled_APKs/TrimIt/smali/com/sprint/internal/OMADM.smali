.class public Lcom/sprint/internal/OMADM;
.super Ljava/lang/Object;
.source "OMADM.java"


# static fields
.field public static final ACTION_SMSI_CI_TRIGGER:Ljava/lang/String; = "com.smithmicro.DM.intent.action.CI_DM"

.field public static final ACTION_SMSI_DM_TRIGGER:Ljava/lang/String; = "com.smithmicro.DM.trigger"

.field private static CONTENT_URI_NOTES:Landroid/net/Uri; = null

#the value of this static final field might be set in the static constructor
.field public static final IS_Red_Bend:Z = false

.field public static final SUC_USER_INIT_DEVICE_CONFIG:I = 0x1

.field public static final SUC_USER_INIT_FIRMWARE_UPDATE:I = 0x2

.field public static final SUC_USER_INIT_PRL_UPGRADE:I = 0x3

.field public static TAG:Ljava/lang/String; = null

.field private static final USER_INIT_DEVICE_CONFIG:I = 0x1

.field private static final USER_INIT_FIRMWARE_UPDATE:I = 0x2

.field private static final USER_INIT_PRL_UPGRADE:I = 0x3

.field private static mCursor:Landroid/database/Cursor;


# instance fields
.field private Msg:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private m_bPermissionAllow:Z

.field private omcRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-string v0, "DSA_OMADM"

    sput-object v0, Lcom/sprint/internal/OMADM;->TAG:Ljava/lang/String;

    .line 34
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x50

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sprint/internal/OMADM;->IS_Red_Bend:Z

    .line 216
    const-string v0, "content://com.htc.android.provider.omadmlib/commondata"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sprint/internal/OMADM;->CONTENT_URI_NOTES:Landroid/net/Uri;

    .line 217
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/internal/OMADM;->mCursor:Landroid/database/Cursor;

    return-void

    .line 34
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "mContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/OMADMException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "DM session is running in background please try it later."

    iput-object v0, p0, Lcom/sprint/internal/OMADM;->Msg:Ljava/lang/String;

    .line 58
    iput-boolean v2, p0, Lcom/sprint/internal/OMADM;->m_bPermissionAllow:Z

    .line 209
    iput-boolean v2, p0, Lcom/sprint/internal/OMADM;->omcRunning:Z

    .line 39
    iput-object p1, p0, Lcom/sprint/internal/OMADM;->mContext:Landroid/content/Context;

    .line 42
    const-string v0, "com.sprint.internal.permission.OMADM"

    invoke-static {v0}, Lcom/sprint/internal/SecurityManager;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/sprint/internal/OMADM;->TAG:Ljava/lang/String;

    const-string v1, "****** Pass the permission checking(OMADM)!!!!****** "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/internal/OMADM;->m_bPermissionAllow:Z

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    sget-object v0, Lcom/sprint/internal/OMADM;->TAG:Ljava/lang/String;

    const-string v1, "****** require OMADM permission!!****** "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iput-boolean v2, p0, Lcom/sprint/internal/OMADM;->m_bPermissionAllow:Z

    goto :goto_0
.end method

.method private checkOmcRunning()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 213
    iget-object v1, p0, Lcom/sprint/internal/OMADM;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/sprint/internal/OMADM;->getOmcRunning(Landroid/content/ContentResolver;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sprint/internal/OMADM;->omcRunning:Z

    .line 214
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static closeCursor()V
    .locals 2

    .prologue
    .line 288
    :try_start_0
    sget-object v1, Lcom/sprint/internal/OMADM;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 289
    sget-object v1, Lcom/sprint/internal/OMADM;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deactivate()V

    .line 290
    sget-object v1, Lcom/sprint/internal/OMADM;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 293
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 294
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAIRPlane(Landroid/content/ContentResolver;)I
    .locals 1
    .parameter "contentResolver"

    .prologue
    .line 257
    invoke-static {p0}, Lcom/sprint/internal/OMADM;->initCommonProvider(Landroid/content/ContentResolver;)V

    .line 258
    const-string v0, "AIRPLANE_MODE"

    invoke-static {p0, v0}, Lcom/sprint/internal/OMADM;->getIntkey(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getColumnInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 3
    .parameter "cur"
    .parameter "columnName"

    .prologue
    .line 246
    const/4 v0, -0x1

    .line 247
    .local v0, ColumnValue:I
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 250
    .local v1, t_nColumnIndex:I
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 252
    .end local v1           #t_nColumnIndex:I
    :cond_0
    invoke-static {}, Lcom/sprint/internal/OMADM;->closeCursor()V

    .line 253
    return v0
.end method

.method public static getIntkey(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 6
    .parameter "contentResolver"
    .parameter "columnName"

    .prologue
    const/4 v4, 0x0

    .line 240
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    .line 241
    .local v2, project:[Ljava/lang/String;
    sget-object v1, Lcom/sprint/internal/OMADM;->CONTENT_URI_NOTES:Landroid/net/Uri;

    const-string v3, "_id=1"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    sput-object v0, Lcom/sprint/internal/OMADM;->mCursor:Landroid/database/Cursor;

    .line 242
    sget-object v0, Lcom/sprint/internal/OMADM;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/sprint/internal/OMADM;->getColumnInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getOmcRunning(Landroid/content/ContentResolver;)I
    .locals 1
    .parameter "contentResolver"

    .prologue
    .line 263
    invoke-static {p0}, Lcom/sprint/internal/OMADM;->initCommonProvider(Landroid/content/ContentResolver;)V

    .line 264
    const-string v0, "OMC_RUNNING"

    invoke-static {p0, v0}, Lcom/sprint/internal/OMADM;->getIntkey(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static initCommonProvider(Landroid/content/ContentResolver;)V
    .locals 7
    .parameter "contentResolver"

    .prologue
    const/4 v4, 0x0

    .line 220
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 221
    .local v2, project:[Ljava/lang/String;
    sget-object v1, Lcom/sprint/internal/OMADM;->CONTENT_URI_NOTES:Landroid/net/Uri;

    const-string v3, "_id=1"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    sput-object v0, Lcom/sprint/internal/OMADM;->mCursor:Landroid/database/Cursor;

    .line 222
    sget-object v0, Lcom/sprint/internal/OMADM;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 224
    sget-object v0, Lcom/sprint/internal/OMADM;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    .line 225
    .local v6, tIsEntryFound:Z
    if-nez v6, :cond_0

    .line 227
    sget-object v0, Lcom/sprint/internal/OMADM;->TAG:Ljava/lang/String;

    const-string v1, "No command data"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    invoke-static {}, Lcom/sprint/internal/OMADM;->closeCursor()V

    .line 236
    .end local v6           #tIsEntryFound:Z
    :cond_1
    return-void
.end method

.method public static setIntkey(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 6
    .parameter "contentResolver"
    .parameter "columnName"
    .parameter "value"

    .prologue
    const/4 v5, -0x1

    .line 273
    :try_start_0
    invoke-static {p0}, Lcom/sprint/internal/OMADM;->initCommonProvider(Landroid/content/ContentResolver;)V

    .line 275
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 276
    .local v1, values:Landroid/content/ContentValues;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    sget-object v2, Lcom/sprint/internal/OMADM;->CONTENT_URI_NOTES:Landroid/net/Uri;

    const-string v3, "_id=1"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return v5

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 282
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public startCIDC()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/OMADMException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 62
    iget-boolean v2, p0, Lcom/sprint/internal/OMADM;->m_bPermissionAllow:Z

    if-nez v2, :cond_0

    .line 98
    :goto_0
    return-void

    .line 65
    :cond_0
    sget-object v2, Lcom/sprint/internal/OMADM;->TAG:Ljava/lang/String;

    const-string v3, "startCIDC()-permission granted....."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v2, Lcom/sprint/internal/OMADM;->TAG:Ljava/lang/String;

    const-string v3, "startCIDC()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-boolean v2, Lcom/sprint/internal/OMADM;->IS_Red_Bend:Z

    if-eqz v2, :cond_1

    .line 70
    sget-object v2, Lcom/sprint/internal/OMADM;->TAG:Ljava/lang/String;

    const-string v3, "rb DM..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.omadm.trigger"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, throwIntent:Landroid/content/Intent;
    const-string v2, "SESSION_TYPE"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    iget-object v2, p0, Lcom/sprint/internal/OMADM;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 77
    .end local v1           #throwIntent:Landroid/content/Intent;
    :cond_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_2

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.smithmicro.DM.intent.action.CI_DM"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, suc_throwIntent:Landroid/content/Intent;
    const-string v2, "com.smithmicro.DM.trigger"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    iget-object v2, p0, Lcom/sprint/internal/OMADM;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 85
    .end local v0           #suc_throwIntent:Landroid/content/Intent;
    :cond_2
    invoke-direct {p0}, Lcom/sprint/internal/OMADM;->checkOmcRunning()V

    .line 86
    iget-boolean v2, p0, Lcom/sprint/internal/OMADM;->omcRunning:Z

    if-eqz v2, :cond_3

    .line 87
    sget-object v2, Lcom/sprint/internal/OMADM;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "omcRunning:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sprint/internal/OMADM;->omcRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v2, p0, Lcom/sprint/internal/OMADM;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sprint/internal/OMADM;->Msg:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 91
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.smithmicro.DM.intent.action.CI_DM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .restart local v1       #throwIntent:Landroid/content/Intent;
    const-string v2, "com.smithmicro.DM.trigger"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    iget-object v2, p0, Lcom/sprint/internal/OMADM;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 96
    iget-object v2, p0, Lcom/sprint/internal/OMADM;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "OMC_RUNNING"

    invoke-static {v2, v3, v4}, Lcom/sprint/internal/OMADM;->setIntkey(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    goto/16 :goto_0
.end method

.method public startCIFUMO()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/OMADMException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 101
    iget-boolean v2, p0, Lcom/sprint/internal/OMADM;->m_bPermissionAllow:Z

    if-nez v2, :cond_0

    .line 138
    :goto_0
    return-void

    .line 104
    :cond_0
    sget-object v2, Lcom/sprint/internal/OMADM;->TAG:Ljava/lang/String;

    const-string v3, "startCIFUMO()-permission granted....."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v2, Lcom/sprint/internal/OMADM;->TAG:Ljava/lang/String;

    const-string v3, "startCIFUMO()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-boolean v2, Lcom/sprint/internal/OMADM;->IS_Red_Bend:Z

    if-eqz v2, :cond_1

    .line 109
    sget-object v2, Lcom/sprint/internal/OMADM;->TAG:Ljava/lang/String;

    const-string v3, "rb DM..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.omadm.trigger"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, throwIntent:Landroid/content/Intent;
    const-string v2, "SESSION_TYPE"

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    iget-object v2, p0, Lcom/sprint/internal/OMADM;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 117
    .end local v1           #throwIntent:Landroid/content/Intent;
    :cond_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_2

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.smithmicro.DM.intent.action.CI_DM"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, suc_throwIntent:Landroid/content/Intent;
    const-string v2, "com.smithmicro.DM.trigger"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    iget-object v2, p0, Lcom/sprint/internal/OMADM;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 125
    .end local v0           #suc_throwIntent:Landroid/content/Intent;
    :cond_2
    invoke-direct {p0}, Lcom/sprint/internal/OMADM;->checkOmcRunning()V

    .line 126
    iget-boolean v2, p0, Lcom/sprint/internal/OMADM;->omcRunning:Z

    if-eqz v2, :cond_3

    .line 127
    sget-object v2, Lcom/sprint/internal/OMADM;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "omcRunning:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sprint/internal/OMADM;->omcRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v2, p0, Lcom/sprint/internal/OMADM;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sprint/internal/OMADM;->Msg:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 131
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.smithmicro.DM.intent.action.CI_DM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .restart local v1       #throwIntent:Landroid/content/Intent;
    const-string v2, "com.smithmicro.DM.trigger"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    iget-object v2, p0, Lcom/sprint/internal/OMADM;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 136
    iget-object v2, p0, Lcom/sprint/internal/OMADM;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "OMC_RUNNING"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sprint/internal/OMADM;->setIntkey(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    goto/16 :goto_0
.end method

.method public startCIPRL()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/OMADMException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 141
    iget-boolean v2, p0, Lcom/sprint/internal/OMADM;->m_bPermissionAllow:Z

    if-nez v2, :cond_0

    .line 180
    :goto_0
    return-void

    .line 145
    :cond_0
    sget-object v2, Lcom/sprint/internal/OMADM;->TAG:Ljava/lang/String;

    const-string v3, "startCIPRL()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-boolean v2, Lcom/sprint/internal/OMADM;->IS_Red_Bend:Z

    if-eqz v2, :cond_1

    .line 149
    sget-object v2, Lcom/sprint/internal/OMADM;->TAG:Ljava/lang/String;

    const-string v3, "rb DM..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.omadm.trigger"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, throwIntent:Landroid/content/Intent;
    const-string v2, "SESSION_TYPE"

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    iget-object v2, p0, Lcom/sprint/internal/OMADM;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 157
    .end local v1           #throwIntent:Landroid/content/Intent;
    :cond_1
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_2

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.smithmicro.DM.intent.action.CI_DM"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, suc_throwIntent:Landroid/content/Intent;
    const-string v2, "com.smithmicro.DM.trigger"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    iget-object v2, p0, Lcom/sprint/internal/OMADM;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 167
    .end local v0           #suc_throwIntent:Landroid/content/Intent;
    :cond_2
    invoke-direct {p0}, Lcom/sprint/internal/OMADM;->checkOmcRunning()V

    .line 168
    iget-boolean v2, p0, Lcom/sprint/internal/OMADM;->omcRunning:Z

    if-eqz v2, :cond_3

    .line 169
    sget-object v2, Lcom/sprint/internal/OMADM;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "omcRunning:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sprint/internal/OMADM;->omcRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v2, p0, Lcom/sprint/internal/OMADM;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sprint/internal/OMADM;->Msg:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 173
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.smithmicro.DM.intent.action.CI_DM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .restart local v1       #throwIntent:Landroid/content/Intent;
    const-string v2, "com.smithmicro.DM.trigger"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    iget-object v2, p0, Lcom/sprint/internal/OMADM;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 178
    iget-object v2, p0, Lcom/sprint/internal/OMADM;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "OMC_RUNNING"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sprint/internal/OMADM;->setIntkey(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    goto/16 :goto_0
.end method

.method public startHFA()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sprint/internal/OMADMException;
        }
    .end annotation

    .prologue
    .line 183
    iget-boolean v1, p0, Lcom/sprint/internal/OMADM;->m_bPermissionAllow:Z

    if-nez v1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 186
    :cond_0
    sget-object v1, Lcom/sprint/internal/OMADM;->TAG:Ljava/lang/String;

    const-string v2, "startHFA()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0}, Lcom/sprint/internal/OMADM;->checkOmcRunning()V

    .line 188
    iget-boolean v1, p0, Lcom/sprint/internal/OMADM;->omcRunning:Z

    if-eqz v1, :cond_1

    .line 189
    sget-object v1, Lcom/sprint/internal/OMADM;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "omcRunning:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sprint/internal/OMADM;->omcRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/sprint/internal/OMADM;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sprint/internal/OMADM;->Msg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 194
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.smithmicro.DM.intent.action.POWERUP_DM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, throwIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sprint/internal/OMADM;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 197
    iget-object v1, p0, Lcom/sprint/internal/OMADM;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "OMC_RUNNING"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sprint/internal/OMADM;->setIntkey(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    goto :goto_0
.end method
