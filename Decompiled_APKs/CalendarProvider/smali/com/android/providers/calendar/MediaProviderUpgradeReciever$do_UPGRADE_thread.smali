.class Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPGRADE_thread;
.super Ljava/lang/Thread;
.source "MediaProviderUpgradeReciever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/MediaProviderUpgradeReciever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "do_UPGRADE_thread"
.end annotation


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/providers/calendar/MediaProviderUpgradeReciever;


# direct methods
.method public constructor <init>(Lcom/android/providers/calendar/MediaProviderUpgradeReciever;Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "cr"
    .parameter "Context"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPGRADE_thread;->this$0:Lcom/android/providers/calendar/MediaProviderUpgradeReciever;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPGRADE_thread;->mContentResolver:Landroid/content/ContentResolver;

    .line 101
    iput-object p3, p0, Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPGRADE_thread;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 105
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "alerts_ringtone"

    aput-object v0, v2, v10

    .line 111
    .local v2, projectArys:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPGRADE_thread;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "alerts_ringtone IS NOT NULL  and alerts_ringtone like \'content://media%\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 113
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 114
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 115
    .local v9, nCnt:I
    const-string v0, "MediaProviderUpgradeReciever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "total have "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " calendars IS NOT NULL"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    if-lez v9, :cond_3

    .line 118
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 135
    const-string v0, "MediaProviderUpgradeReciever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "total have "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " calendars has ring tones"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "com.htc.providers.media.ID_UPDATE_REQUEST"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v0, "media_type"

    const/4 v1, 0x2

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string v0, "media_ids_req"

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 144
    const-string v0, "category"

    const-string v1, "com.android.providers.calendar"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Lcom/android/providers/calendar/MediaProviderUpgradeReciever$do_UPGRADE_thread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v9           #nCnt:I
    :cond_3
    return-void
.end method
