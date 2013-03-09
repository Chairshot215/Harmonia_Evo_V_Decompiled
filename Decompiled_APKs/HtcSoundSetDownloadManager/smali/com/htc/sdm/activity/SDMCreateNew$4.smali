.class Lcom/htc/sdm/activity/SDMCreateNew$4;
.super Ljava/lang/Object;
.source "SDMCreateNew.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SDMCreateNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/activity/SDMCreateNew;


# direct methods
.method constructor <init>(Lcom/htc/sdm/activity/SDMCreateNew;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/htc/sdm/activity/SDMCreateNew$4;->this$0:Lcom/htc/sdm/activity/SDMCreateNew;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v9, 0x1

    .line 247
    const/4 v7, 0x0

    .line 248
    .local v7, InfoCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 249
    .local v6, GUID:Ljava/lang/String;
    const/4 v3, 0x0

    .line 250
    .local v3, where:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew$4;->this$0:Lcom/htc/sdm/activity/SDMCreateNew;

    invoke-virtual {v1}, Lcom/htc/sdm/activity/SDMCreateNew;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 251
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew$4;->this$0:Lcom/htc/sdm/activity/SDMCreateNew;

    #getter for: Lcom/htc/sdm/activity/SDMCreateNew;->mStrNew:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/sdm/activity/SDMCreateNew;->access$100(Lcom/htc/sdm/activity/SDMCreateNew;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    const-string v4, "\'\'"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 254
    .local v8, sEscapeName:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v2}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    sget-object v1, Lcom/htc/sdm/provider/SDMProvider;->SDM_PROVIDER_URI_SOUNDSET_INFO:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->GUID:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name:Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;

    invoke-virtual {v5}, Lcom/htc/sdm/provider/SDMProvider$COLUMN_SOUNDSET_INFO_INDEX;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 263
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt v1, v9, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 276
    :cond_0
    if-eqz v7, :cond_1

    .line 278
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 283
    iget-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew$4;->this$0:Lcom/htc/sdm/activity/SDMCreateNew;

    invoke-static {v1}, Lcom/htc/sdm/util/SDMUtil;->getCurSoundsetGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 285
    iget-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew$4;->this$0:Lcom/htc/sdm/activity/SDMCreateNew;

    invoke-virtual {v1, v6}, Lcom/htc/sdm/activity/SDMCreateNew;->ReplaceSoundsetinDB(Ljava/lang/String;)V

    .line 297
    :cond_2
    :goto_0
    return-void

    .line 276
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    .line 278
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 293
    :cond_4
    iget-object v1, p0, Lcom/htc/sdm/activity/SDMCreateNew$4;->this$0:Lcom/htc/sdm/activity/SDMCreateNew;

    invoke-virtual {v1}, Lcom/htc/sdm/activity/SDMCreateNew;->finish()V

    goto :goto_0
.end method
