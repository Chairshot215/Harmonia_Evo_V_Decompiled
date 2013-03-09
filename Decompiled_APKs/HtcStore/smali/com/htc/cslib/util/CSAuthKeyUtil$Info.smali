.class Lcom/htc/cslib/util/CSAuthKeyUtil$Info;
.super Ljava/lang/Object;
.source "CSAuthKeyUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cslib/util/CSAuthKeyUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Info"
.end annotation


# static fields
.field private static final DEVICEID_COLUMN:I = 0xe

.field private static final EMAIL_COLUMN:I = 0xd

.field private static final HASHPW_COLUMN:I = 0xf


# instance fields
.field public deviceID:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public hashpw:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-direct {p0, p1}, Lcom/htc/cslib/util/CSAuthKeyUtil$Info;->getAccountInfo(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method private getAccountInfo(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 120
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v8, ""

    .line 122
    .local v8, temp:Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/htc/cslib/util/CSAuthKeyUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 123
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const/16 v1, 0xd

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/cslib/util/CSAuthKeyUtil$Info;->email:Ljava/lang/String;

    .line 125
    const/16 v1, 0xe

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/cslib/util/CSAuthKeyUtil$Info;->deviceID:Ljava/lang/String;

    .line 126
    const/16 v1, 0xf

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/cslib/util/CSAuthKeyUtil$Info;->hashpw:Ljava/lang/String;

    .line 132
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v7

    .line 135
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "cslib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getAccountInfo Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
