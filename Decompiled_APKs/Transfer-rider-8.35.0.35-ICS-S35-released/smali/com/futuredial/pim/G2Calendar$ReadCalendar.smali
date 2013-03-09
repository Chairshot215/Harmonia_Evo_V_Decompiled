.class Lcom/futuredial/pim/G2Calendar$ReadCalendar;
.super Ljava/lang/Object;
.source "G2Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/pim/G2Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadCalendar"
.end annotation


# instance fields
.field private bNoRecord:Z

.field private cursor:Landroid/database/Cursor;

.field private jsonObject_item:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/futuredial/pim/G2Calendar;


# direct methods
.method private constructor <init>(Lcom/futuredial/pim/G2Calendar;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 908
    iput-object p1, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->this$0:Lcom/futuredial/pim/G2Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 910
    iput-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->jsonObject_item:Lorg/json/JSONObject;

    .line 911
    iput-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    .line 912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->bNoRecord:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/futuredial/pim/G2Calendar;Lcom/futuredial/pim/G2Calendar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 908
    invoke-direct {p0, p1}, Lcom/futuredial/pim/G2Calendar$ReadCalendar;-><init>(Lcom/futuredial/pim/G2Calendar;)V

    return-void
.end method


# virtual methods
.method public InitRead()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 915
    const/4 v7, 0x0

    .line 917
    .local v7, nRet:I
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->this$0:Lcom/futuredial/pim/G2Calendar;

    iget-object v0, v0, Lcom/futuredial/pim/G2Calendar;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/futuredial/pim/FDUri;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'com.htc.pcsc\' and deleted = 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    .line 918
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    :cond_0
    :goto_0
    return v7

    .line 919
    :catch_0
    move-exception v6

    .line 920
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 921
    const/4 v7, 0x1

    .line 922
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 924
    iput-object v8, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method public ReadOneItem(Lorg/json/JSONObject;)I
    .locals 1
    .parameter "job"

    .prologue
    .line 940
    if-eqz p1, :cond_0

    .line 941
    iput-object p1, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->jsonObject_item:Lorg/json/JSONObject;

    .line 942
    invoke-virtual {p0}, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->readOneCalendar()I

    .line 943
    const/4 v0, 0x0

    .line 945
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public UnInitRead()I
    .locals 2

    .prologue
    .line 931
    const/4 v0, 0x0

    .line 932
    .local v0, nRet:I
    iget-object v1, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 933
    iget-object v1, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 934
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    .line 936
    :cond_0
    return v0
.end method

.method public readOneCalendar()I
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 951
    const/4 v10, 0x0

    .line 952
    .local v10, nRet:I
    const-string v13, ""

    .line 953
    .local v13, value:Ljava/lang/String;
    const-string v6, ""

    .line 956
    .local v6, calendarid:Ljava/lang/String;
    :try_start_0
    iget-boolean v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->bNoRecord:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 957
    const/4 v0, 0x0

    .line 1029
    iget-object v1, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1030
    iput-boolean v14, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->bNoRecord:Z

    .line 1033
    :cond_0
    :goto_0
    return v0

    .line 960
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 961
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->jsonObject_item:Lorg/json/JSONObject;

    const-string v1, "_id"

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 963
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    const-string v2, "title"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 964
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->jsonObject_item:Lorg/json/JSONObject;

    const-string v1, "title"

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 966
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    const-string v2, "deleted"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 967
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->jsonObject_item:Lorg/json/JSONObject;

    const-string v1, "deleted"

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 971
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    const-string v2, "eventLocation"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 972
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->jsonObject_item:Lorg/json/JSONObject;

    const-string v1, "eventLocation"

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 974
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    const-string v2, "description"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 975
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->jsonObject_item:Lorg/json/JSONObject;

    const-string v1, "description"

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 977
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    const-string v2, "dtend"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 978
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->jsonObject_item:Lorg/json/JSONObject;

    const-string v1, "dtend"

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 980
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    const-string v2, "dtstart"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 981
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->jsonObject_item:Lorg/json/JSONObject;

    const-string v1, "dtstart"

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 983
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    const-string v2, "duration"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 984
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->jsonObject_item:Lorg/json/JSONObject;

    const-string v1, "duration"

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 986
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    const-string v2, "hasAlarm"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 987
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->jsonObject_item:Lorg/json/JSONObject;

    const-string v1, "hasAlarm"

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 989
    const-string v0, "1"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 993
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->this$0:Lcom/futuredial/pim/G2Calendar;

    iget-object v0, v0, Lcom/futuredial/pim/G2Calendar;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 994
    .local v7, cursorReminders:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 996
    const/4 v11, 0x0

    .local v11, strColumnName:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 998
    .local v12, strValue:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v11

    .line 999
    const/4 v9, 0x0

    .local v9, j:I
    :goto_1
    array-length v0, v11

    if-ge v9, v0, :cond_3

    .line 1000
    aget-object v0, v11, v9

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1001
    if-eqz v12, :cond_2

    aget-object v0, v11, v9

    const-string v1, "minutes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1003
    move-object v13, v12

    .line 1004
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->jsonObject_item:Lorg/json/JSONObject;

    const-string v1, "minutes"

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 999
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1008
    .end local v9           #j:I
    .end local v11           #strColumnName:[Ljava/lang/String;
    .end local v12           #strValue:Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1011
    .end local v3           #selection:Ljava/lang/String;
    .end local v7           #cursorReminders:Landroid/database/Cursor;
    :cond_4
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    const-string v2, "rrule"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1012
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->jsonObject_item:Lorg/json/JSONObject;

    const-string v1, "rrule"

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1014
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    const-string v2, "eventTimezone"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1015
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->jsonObject_item:Lorg/json/JSONObject;

    const-string v1, "eventTimezone"

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1017
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    const-string v2, "allDay"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1018
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->jsonObject_item:Lorg/json/JSONObject;

    const-string v1, "allDay"

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1029
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1030
    iput-boolean v14, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->bNoRecord:Z

    .line 1032
    :cond_5
    :goto_2
    const-string v0, "G2Calendar"

    const-string v1, "Out readOneCalendar()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 1033
    goto/16 :goto_0

    .line 1025
    :catch_0
    move-exception v8

    .line 1026
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1027
    const/4 v10, 0x1

    .line 1029
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1030
    iput-boolean v14, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->bNoRecord:Z

    goto :goto_2

    .line 1029
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1030
    iput-boolean v14, p0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->bNoRecord:Z

    :cond_6
    throw v0
.end method
