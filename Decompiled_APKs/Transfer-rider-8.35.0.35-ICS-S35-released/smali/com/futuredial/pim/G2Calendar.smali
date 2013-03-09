.class public Lcom/futuredial/pim/G2Calendar;
.super Lcom/futuredial/pim/CPim;
.source "G2Calendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/pim/G2Calendar$1;,
        Lcom/futuredial/pim/G2Calendar$ReadCalendar;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "G2Calendar"


# instance fields
.field private bHasCalendarId:Z

.field private ncal_id:I

.field private rdCalendar:Lcom/futuredial/pim/G2Calendar$ReadCalendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/futuredial/pim/CPim;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/futuredial/pim/G2Calendar;->ncal_id:I

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/futuredial/pim/G2Calendar;->bHasCalendarId:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/pim/G2Calendar;->rdCalendar:Lcom/futuredial/pim/G2Calendar$ReadCalendar;

    .line 37
    const-string v0, "com.htc.pcsc"

    iput-object v0, p0, Lcom/futuredial/pim/G2Calendar;->sAccountType:Ljava/lang/String;

    .line 38
    const-string v0, "PC Sync"

    iput-object v0, p0, Lcom/futuredial/pim/G2Calendar;->sAccountName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private GetCalendarID()V
    .locals 11

    .prologue
    const/4 v3, 0x1

    .line 715
    const/4 v10, 0x0

    .line 716
    .local v10, managedCursor:Landroid/database/Cursor;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    invoke-static {}, Lcom/futuredial/pim/FDUri;->getAccountName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-static {}, Lcom/futuredial/pim/FDUri;->getAccountType()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 720
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 723
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    const-string v0, "G2Calendar"

    const-string v1, "Listing Selected Calendars Only"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_0
    invoke-static {}, Lcom/futuredial/pim/FDUri;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 729
    .local v7, calsyncaccount:Ljava/lang/String;
    invoke-static {}, Lcom/futuredial/pim/FDUri;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 730
    .local v8, calsyncaccounttype:Ljava/lang/String;
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 731
    .local v6, calId:Ljava/lang/String;
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar;->sAccountType:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar;->sAccountName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuredial/pim/G2Calendar;->bHasCalendarId:Z

    .line 733
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/futuredial/pim/G2Calendar;->ncal_id:I

    .line 738
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 748
    .end local v6           #calId:Ljava/lang/String;
    .end local v7           #calsyncaccount:Ljava/lang/String;
    .end local v8           #calsyncaccounttype:Ljava/lang/String;
    :goto_1
    return-void

    .line 736
    .restart local v6       #calId:Ljava/lang/String;
    .restart local v7       #calsyncaccount:Ljava/lang/String;
    .restart local v8       #calsyncaccounttype:Ljava/lang/String;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 740
    .end local v6           #calId:Ljava/lang/String;
    .end local v7           #calsyncaccount:Ljava/lang/String;
    .end local v8           #calsyncaccounttype:Ljava/lang/String;
    :cond_2
    const-string v0, "G2Calendar"

    const-string v1, "No Calendars"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 743
    :catch_0
    move-exception v9

    .line 744
    .local v9, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public static IsEvent(Lcom/futuredial/publicobj/Item;)Z
    .locals 7
    .parameter "objItem"

    .prologue
    .line 328
    const/4 v0, 0x1

    .line 331
    .local v0, bs:Z
    :try_start_0
    iget-object v4, p0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 333
    if-eqz v0, :cond_0

    .line 334
    iget-object v4, p0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 336
    .local v3, fldArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 337
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/publicobj/Field;

    .line 338
    .local v2, fld:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v2}, Lcom/futuredial/publicobj/Field;->GetInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 339
    const/4 v0, 0x1

    .line 351
    .end local v2           #fld:Lcom/futuredial/publicobj/Field;
    .end local v3           #fldArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    :cond_0
    :goto_0
    return v0

    .line 341
    .restart local v2       #fld:Lcom/futuredial/publicobj/Field;
    .restart local v3       #fldArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 346
    .end local v2           #fld:Lcom/futuredial/publicobj/Field;
    .end local v3           #fldArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    :catch_0
    move-exception v1

    .line 347
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    const-string v4, "G2Calendar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEvent exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static WeekDay2GenerialWeekDay(I)I
    .locals 4
    .parameter "nWeekDay"

    .prologue
    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, nGWeekDay:I
    packed-switch p0, :pswitch_data_0

    .line 413
    const-string v1, "G2Calendar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad day of week: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_0
    return v0

    .line 392
    :pswitch_0
    const/4 v0, 0x1

    .line 393
    goto :goto_0

    .line 395
    :pswitch_1
    const/4 v0, 0x2

    .line 396
    goto :goto_0

    .line 398
    :pswitch_2
    const/4 v0, 0x4

    .line 399
    goto :goto_0

    .line 401
    :pswitch_3
    const/16 v0, 0x8

    .line 402
    goto :goto_0

    .line 404
    :pswitch_4
    const/16 v0, 0x10

    .line 405
    goto :goto_0

    .line 407
    :pswitch_5
    const/16 v0, 0x20

    .line 408
    goto :goto_0

    .line 410
    :pswitch_6
    const/16 v0, 0x40

    .line 411
    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private computeDuration(Landroid/text/format/Time;Landroid/text/format/Time;)Ljava/lang/String;
    .locals 10
    .parameter "dtstart"
    .parameter "dtEnd"

    .prologue
    const/4 v8, 0x0

    .line 694
    invoke-virtual {p2, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 695
    .local v0, dtEnddate:J
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    move-object p2, p1

    .line 696
    :cond_0
    invoke-virtual {p2, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-virtual {p1, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 698
    .local v2, durationMillis:J
    const-wide/16 v6, 0x3e8

    div-long v4, v2, v6

    .line 699
    .local v4, durationSeconds:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "P"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "S"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static computeReminderTime(Landroid/text/format/Time;Landroid/text/format/Time;)J
    .locals 10
    .parameter "dtStart"
    .parameter "dtReminder"

    .prologue
    const/4 v8, 0x0

    .line 684
    const-wide/16 v4, -0x1

    .line 685
    .local v4, lReminder:J
    invoke-virtual {p0, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-virtual {p1, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 687
    .local v0, durationMillis:J
    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    .line 688
    .local v2, durationSeconds:J
    const-wide/16 v6, 0x3c

    div-long v4, v2, v6

    .line 689
    return-wide v4
.end method

.method public static getRecurrenceRule(Lcom/futuredial/publicobj/Item;Landroid/text/format/Time;ILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "objItem"
    .parameter "dtStart"
    .parameter "nRecurCount"
    .parameter "sRecurUtil"

    .prologue
    .line 650
    const-string v7, ""

    .line 652
    .local v7, strValue:Ljava/lang/String;
    const/4 v1, 0x0

    .line 653
    .local v1, bs:Z
    :try_start_0
    iget-object v8, p0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    const/16 v9, 0xd3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 654
    .local v0, bRecur:Z
    if-eqz v0, :cond_0

    .line 656
    iget-object v8, p0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    const/16 v9, 0xd3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 657
    .local v4, fldarr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    new-instance v5, Lcom/futuredial/publicobj/Field;

    invoke-direct {v5}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 658
    .local v5, reurFld:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 660
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #reurFld:Lcom/futuredial/publicobj/Field;
    check-cast v5, Lcom/futuredial/publicobj/Field;

    .line 661
    .restart local v5       #reurFld:Lcom/futuredial/publicobj/Field;
    new-instance v3, Lcom/futuredial/pim/EventRecurrence;

    invoke-direct {v3}, Lcom/futuredial/pim/EventRecurrence;-><init>()V

    .line 662
    .local v3, evtRecur:Lcom/futuredial/pim/EventRecurrence;
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 663
    .local v6, st:Landroid/text/format/Time;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    iget-object v10, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v10}, Lcom/futuredial/pim/G2Calendar;->TimeZoneOffset(Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 664
    invoke-virtual {v3, v6}, Lcom/futuredial/pim/EventRecurrence;->setStartDate(Landroid/text/format/Time;)V

    .line 665
    invoke-static {v5, v3, p2, p3}, Lcom/futuredial/pim/G2Calendar;->populateEventRecurrence(Lcom/futuredial/publicobj/Field;Lcom/futuredial/pim/EventRecurrence;ILjava/lang/String;)Z

    move-result v1

    .line 666
    if-eqz v1, :cond_0

    .line 668
    invoke-virtual {v3}, Lcom/futuredial/pim/EventRecurrence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 678
    .end local v0           #bRecur:Z
    .end local v3           #evtRecur:Lcom/futuredial/pim/EventRecurrence;
    .end local v4           #fldarr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v5           #reurFld:Lcom/futuredial/publicobj/Field;
    .end local v6           #st:Landroid/text/format/Time;
    :cond_0
    :goto_0
    return-object v7

    .line 672
    :catch_0
    move-exception v2

    .line 673
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "G2Calendar"

    const-string v9, "getRecurrenceRule(),Exception"

    invoke-static {v8, v9}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getTimeZonefromFld(Lcom/futuredial/publicobj/Item;)Ljava/lang/String;
    .locals 9
    .parameter "objItem"

    .prologue
    .line 358
    const/4 v4, 0x0

    .line 359
    .local v4, strTZ:Ljava/lang/String;
    const/4 v0, 0x0

    .line 362
    .local v0, bs:Z
    :try_start_0
    iget-object v5, p0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    const/16 v6, 0xda

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 363
    if-eqz v0, :cond_0

    .line 365
    iget-object v5, p0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    const/16 v6, 0xda

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 366
    .local v3, fldArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 368
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/publicobj/Field;

    .line 369
    .local v2, fld:Lcom/futuredial/publicobj/Field;
    iget-object v4, v2, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 370
    const/4 v5, 0x0

    const-string v6, "GMT"

    const/4 v7, 0x0

    const-string v8, "GMT"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GMT"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 383
    .end local v2           #fld:Lcom/futuredial/publicobj/Field;
    .end local v3           #fldArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    :cond_0
    :goto_0
    return-object v4

    .line 377
    :catch_0
    move-exception v1

    .line 379
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "G2Calendar"

    const-string v6, "Cannot getTimefromFld"

    invoke-static {v5, v6, v1}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private declared-synchronized insertSyncAccount()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 751
    monitor-enter p0

    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 752
    .local v3, values:Landroid/content/ContentValues;
    invoke-static {}, Lcom/futuredial/pim/FDUri;->getAccountName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/futuredial/pim/G2Calendar;->sAccountName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-static {}, Lcom/futuredial/pim/FDUri;->getAccountType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/futuredial/pim/G2Calendar;->sAccountType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v4, "name"

    iget-object v5, p0, Lcom/futuredial/pim/G2Calendar;->sAccountName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-static {}, Lcom/futuredial/pim/FDUri;->getCalDisplayName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/futuredial/pim/G2Calendar;->sAccountName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-static {}, Lcom/futuredial/pim/FDUri;->getVisible()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 757
    const-string v4, "sync_events"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 758
    const-string v4, "ownerAccount"

    iget-object v5, p0, Lcom/futuredial/pim/G2Calendar;->sAccountName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-static {}, Lcom/futuredial/pim/FDUri;->getCalAccesslevel()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2bc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 760
    invoke-static {}, Lcom/futuredial/pim/FDUri;->getCalColor()Ljava/lang/String;

    move-result-object v4

    const v5, -0xedcbaa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 761
    invoke-static {}, Lcom/futuredial/pim/FDUri;->getTimezone()Ljava/lang/String;

    move-result-object v4

    const-string v5, "America/Los_Angeles"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v4, p0, Lcom/futuredial/pim/G2Calendar;->sAccountType:Ljava/lang/String;

    const-string v5, "com.google"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 763
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_1

    .line 764
    const-string v4, "cal_sync1"

    const-string v5, "https://www.google.com/calendar/feeds/%s/private/full"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/futuredial/pim/G2Calendar;->sAccountName:Ljava/lang/String;

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v4, "cal_sync2"

    const-string v5, "https://www.google.com/calendar/feeds/default/allcalendars/full/%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/futuredial/pim/G2Calendar;->sAccountName:Ljava/lang/String;

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v4, "cal_sync3"

    const-string v5, "https://www.google.com/calendar/feeds/default/allcalendars/full/%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/futuredial/pim/G2Calendar;->sAccountName:Ljava/lang/String;

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_0
    :goto_0
    sget-object v4, Lcom/futuredial/pim/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "caller_is_syncadapter"

    const-string v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {}, Lcom/futuredial/pim/FDUri;->getAccountName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/futuredial/pim/G2Calendar;->sAccountName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {}, Lcom/futuredial/pim/FDUri;->getAccountType()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/futuredial/pim/G2Calendar;->sAccountType:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 781
    .local v2, urisync:Landroid/net/Uri;
    iget-object v4, p0, Lcom/futuredial/pim/G2Calendar;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 782
    .local v1, uri_ret:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, id:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/futuredial/pim/G2Calendar;->ncal_id:I

    .line 784
    const-string v4, "G2Calendar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertSyncAccount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    monitor-exit p0

    return v9

    .line 772
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #uri_ret:Landroid/net/Uri;
    .end local v2           #urisync:Landroid/net/Uri;
    :cond_1
    :try_start_1
    const-string v4, "url"

    const-string v5, "https://www.google.com/calendar/feeds/%s/private/full"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/futuredial/pim/G2Calendar;->sAccountName:Ljava/lang/String;

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 751
    .end local v3           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public static populateEventRecurrence(Lcom/futuredial/publicobj/Field;Lcom/futuredial/pim/EventRecurrence;ILjava/lang/String;)Z
    .locals 16
    .parameter "fld"
    .parameter "evtRecur"
    .parameter "nRecurCount"
    .parameter "sRecurUtil"

    .prologue
    .line 420
    const/4 v2, 0x1

    .line 421
    .local v2, bs:Z
    const/4 v8, 0x0

    .local v8, nInstance:I
    const/4 v7, 0x0

    .local v7, nDayOfMonth:I
    const/4 v9, 0x0

    .local v9, nMonthOfYear:I
    const/4 v11, 0x0

    .line 424
    .local v11, nWeekMask:I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v10

    .line 425
    .local v10, nRecurtype:I
    if-eqz v10, :cond_22

    .line 428
    const/4 v5, 0x0

    .local v5, i:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, nCount:I
    :goto_0
    if-ge v5, v6, :cond_6

    .line 430
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/futuredial/publicobj/Field;

    .line 432
    .local v12, proFld:Lcom/futuredial/publicobj/Field;
    iget-object v13, v12, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0xd8

    if-ne v13, v14, :cond_1

    .line 434
    invoke-virtual {v12}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v8

    .line 428
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 435
    :cond_1
    iget-object v13, v12, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0xd1

    if-ne v13, v14, :cond_2

    .line 437
    invoke-virtual {v12}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v7

    goto :goto_1

    .line 438
    :cond_2
    iget-object v13, v12, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0xd2

    if-ne v13, v14, :cond_3

    .line 440
    invoke-virtual {v12}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v9

    goto :goto_1

    .line 441
    :cond_3
    iget-object v13, v12, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0xdf

    if-eq v13, v14, :cond_0

    .line 443
    iget-object v13, v12, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0xd4

    if-ne v13, v14, :cond_4

    .line 445
    invoke-virtual {v12}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v11

    goto :goto_1

    .line 446
    :cond_4
    iget-object v13, v12, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0xd5

    if-ne v13, v14, :cond_0

    .line 448
    invoke-virtual {v12}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v13

    move-object/from16 v0, p1

    iput v13, v0, Lcom/futuredial/pim/EventRecurrence;->interval:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 639
    .end local v5           #i:I
    .end local v6           #nCount:I
    .end local v10           #nRecurtype:I
    .end local v12           #proFld:Lcom/futuredial/publicobj/Field;
    :catch_0
    move-exception v4

    .line 640
    .local v4, e:Ljava/lang/Exception;
    const-string v13, "G2Calendar"

    const-string v14, "populateEventRecurrence(),Exception"

    invoke-static {v13, v14}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 642
    const/4 v2, 0x0

    .line 644
    .end local v4           #e:Ljava/lang/Exception;
    :cond_5
    :goto_2
    return v2

    .line 452
    .restart local v5       #i:I
    .restart local v6       #nCount:I
    .restart local v10       #nRecurtype:I
    :cond_6
    if-eqz p2, :cond_7

    .line 453
    :try_start_1
    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lcom/futuredial/pim/EventRecurrence;->count:I

    .line 455
    :cond_7
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/futuredial/pim/EventRecurrence;->until:Ljava/lang/String;

    .line 457
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->startDate:Landroid/text/format/Time;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/text/format/Time;->normalize(Z)J

    .line 458
    const/high16 v13, 0x1

    move-object/from16 v0, p1

    iput v13, v0, Lcom/futuredial/pim/EventRecurrence;->wkst:I

    .line 459
    const/4 v13, 0x1

    if-ne v10, v13, :cond_10

    .line 461
    const/4 v13, 0x4

    move-object/from16 v0, p1

    iput v13, v0, Lcom/futuredial/pim/EventRecurrence;->freq:I

    .line 465
    if-lez v11, :cond_f

    .line 466
    const/4 v3, 0x0

    .line 467
    .local v3, count:I
    const/4 v13, 0x7

    new-array v13, v13, [I

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    .line 468
    const/4 v13, 0x7

    new-array v13, v13, [I

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    .line 469
    const-string v13, "G2Calendar"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "nWeekMask:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    and-int/lit8 v13, v11, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 473
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    const/4 v14, 0x0

    aput v14, v13, v3

    .line 474
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    const/high16 v14, 0x1

    aput v14, v13, v3

    .line 475
    add-int/lit8 v3, v3, 0x1

    .line 477
    :cond_8
    and-int/lit8 v13, v11, 0x2

    const/4 v14, 0x2

    if-ne v13, v14, :cond_9

    .line 479
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    const/4 v14, 0x0

    aput v14, v13, v3

    .line 480
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    const/high16 v14, 0x2

    aput v14, v13, v3

    .line 481
    add-int/lit8 v3, v3, 0x1

    .line 483
    :cond_9
    and-int/lit8 v13, v11, 0x4

    const/4 v14, 0x4

    if-ne v13, v14, :cond_a

    .line 485
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    const/4 v14, 0x0

    aput v14, v13, v3

    .line 486
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    const/high16 v14, 0x4

    aput v14, v13, v3

    .line 487
    add-int/lit8 v3, v3, 0x1

    .line 489
    :cond_a
    and-int/lit8 v13, v11, 0x8

    const/16 v14, 0x8

    if-ne v13, v14, :cond_b

    .line 491
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    const/4 v14, 0x0

    aput v14, v13, v3

    .line 492
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    const/high16 v14, 0x8

    aput v14, v13, v3

    .line 493
    add-int/lit8 v3, v3, 0x1

    .line 495
    :cond_b
    and-int/lit8 v13, v11, 0x10

    const/16 v14, 0x10

    if-ne v13, v14, :cond_c

    .line 497
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    const/4 v14, 0x0

    aput v14, v13, v3

    .line 498
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    const/high16 v14, 0x10

    aput v14, v13, v3

    .line 499
    add-int/lit8 v3, v3, 0x1

    .line 501
    :cond_c
    and-int/lit8 v13, v11, 0x20

    const/16 v14, 0x20

    if-ne v13, v14, :cond_d

    .line 503
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    const/4 v14, 0x0

    aput v14, v13, v3

    .line 504
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    const/high16 v14, 0x20

    aput v14, v13, v3

    .line 505
    add-int/lit8 v3, v3, 0x1

    .line 507
    :cond_d
    and-int/lit8 v13, v11, 0x40

    const/16 v14, 0x40

    if-ne v13, v14, :cond_e

    .line 509
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    const/4 v14, 0x0

    aput v14, v13, v3

    .line 510
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    const/high16 v14, 0x40

    aput v14, v13, v3

    .line 511
    add-int/lit8 v3, v3, 0x1

    .line 513
    :cond_e
    move-object/from16 v0, p1

    iput v3, v0, Lcom/futuredial/pim/EventRecurrence;->bydayCount:I

    .line 630
    .end local v3           #count:I
    :cond_f
    :goto_3
    move-object/from16 v0, p1

    iget v13, v0, Lcom/futuredial/pim/EventRecurrence;->interval:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 631
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iput v13, v0, Lcom/futuredial/pim/EventRecurrence;->interval:I

    goto/16 :goto_2

    .line 517
    :cond_10
    const/4 v13, 0x2

    if-ne v10, v13, :cond_19

    .line 519
    const/4 v13, 0x5

    move-object/from16 v0, p1

    iput v13, v0, Lcom/futuredial/pim/EventRecurrence;->freq:I

    .line 520
    const/4 v3, 0x0

    .line 521
    .restart local v3       #count:I
    const/4 v13, 0x7

    new-array v13, v13, [I

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    .line 522
    const/4 v13, 0x7

    new-array v13, v13, [I

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    .line 523
    if-nez v11, :cond_11

    .line 524
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->startDate:Landroid/text/format/Time;

    iget v13, v13, Landroid/text/format/Time;->weekDay:I

    invoke-static {v13}, Lcom/futuredial/pim/G2Calendar;->WeekDay2GenerialWeekDay(I)I

    move-result v11

    .line 526
    :cond_11
    const-string v13, "G2Calendar"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "nWeekMask:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    and-int/lit8 v13, v11, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_12

    .line 530
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    const/4 v14, 0x0

    aput v14, v13, v3

    .line 531
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    const/high16 v14, 0x1

    aput v14, v13, v3

    .line 532
    add-int/lit8 v3, v3, 0x1

    .line 534
    :cond_12
    and-int/lit8 v13, v11, 0x2

    const/4 v14, 0x2

    if-ne v13, v14, :cond_13

    .line 536
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    const/4 v14, 0x0

    aput v14, v13, v3

    .line 537
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    const/high16 v14, 0x2

    aput v14, v13, v3

    .line 538
    add-int/lit8 v3, v3, 0x1

    .line 540
    :cond_13
    and-int/lit8 v13, v11, 0x4

    const/4 v14, 0x4

    if-ne v13, v14, :cond_14

    .line 542
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    const/4 v14, 0x0

    aput v14, v13, v3

    .line 543
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    const/high16 v14, 0x4

    aput v14, v13, v3

    .line 544
    add-int/lit8 v3, v3, 0x1

    .line 546
    :cond_14
    and-int/lit8 v13, v11, 0x8

    const/16 v14, 0x8

    if-ne v13, v14, :cond_15

    .line 548
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    const/4 v14, 0x0

    aput v14, v13, v3

    .line 549
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    const/high16 v14, 0x8

    aput v14, v13, v3

    .line 550
    add-int/lit8 v3, v3, 0x1

    .line 552
    :cond_15
    and-int/lit8 v13, v11, 0x10

    const/16 v14, 0x10

    if-ne v13, v14, :cond_16

    .line 554
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    const/4 v14, 0x0

    aput v14, v13, v3

    .line 555
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    const/high16 v14, 0x10

    aput v14, v13, v3

    .line 556
    add-int/lit8 v3, v3, 0x1

    .line 558
    :cond_16
    and-int/lit8 v13, v11, 0x20

    const/16 v14, 0x20

    if-ne v13, v14, :cond_17

    .line 560
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    const/4 v14, 0x0

    aput v14, v13, v3

    .line 561
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    const/high16 v14, 0x20

    aput v14, v13, v3

    .line 562
    add-int/lit8 v3, v3, 0x1

    .line 564
    :cond_17
    and-int/lit8 v13, v11, 0x40

    const/16 v14, 0x40

    if-ne v13, v14, :cond_18

    .line 566
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    const/4 v14, 0x0

    aput v14, v13, v3

    .line 567
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    const/high16 v14, 0x40

    aput v14, v13, v3

    .line 568
    add-int/lit8 v3, v3, 0x1

    .line 570
    :cond_18
    move-object/from16 v0, p1

    iput v3, v0, Lcom/futuredial/pim/EventRecurrence;->bydayCount:I

    .line 571
    const-string v13, "G2Calendar"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "count:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 572
    .end local v3           #count:I
    :cond_19
    const/4 v13, 0x3

    if-ne v10, v13, :cond_1d

    .line 574
    const/4 v13, 0x6

    move-object/from16 v0, p1

    iput v13, v0, Lcom/futuredial/pim/EventRecurrence;->freq:I

    .line 575
    if-nez v7, :cond_1a

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->startDate:Landroid/text/format/Time;

    iget v7, v13, Landroid/text/format/Time;->monthDay:I

    .line 576
    :cond_1a
    if-nez v8, :cond_1b

    .line 578
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iput v13, v0, Lcom/futuredial/pim/EventRecurrence;->bymonthdayCount:I

    .line 579
    const/4 v13, 0x1

    new-array v13, v13, [I

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bymonthday:[I

    .line 580
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bymonthday:[I

    const/4 v14, 0x0

    aput v7, v13, v14

    goto/16 :goto_3

    .line 581
    :cond_1b
    const/4 v13, 0x1

    if-ne v8, v13, :cond_f

    .line 583
    const/4 v13, 0x7

    new-array v13, v13, [I

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    .line 584
    const/4 v13, 0x7

    new-array v13, v13, [I

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    .line 585
    rem-int/lit8 v13, v7, 0x7

    if-nez v13, :cond_1c

    .line 587
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    const/4 v14, 0x0

    div-int/lit8 v15, v7, 0x7

    aput v15, v13, v14

    .line 591
    :goto_4
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/futuredial/pim/EventRecurrence;->startDate:Landroid/text/format/Time;

    iget v15, v15, Landroid/text/format/Time;->weekDay:I

    invoke-static {v15}, Lcom/futuredial/pim/EventRecurrence;->timeDay2Day(I)I

    move-result v15

    aput v15, v13, v14

    .line 592
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iput v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayCount:I

    goto/16 :goto_3

    .line 589
    :cond_1c
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    const/4 v14, 0x0

    div-int/lit8 v15, v7, 0x7

    add-int/lit8 v15, v15, 0x1

    aput v15, v13, v14

    goto :goto_4

    .line 595
    :cond_1d
    const/4 v13, 0x4

    if-ne v10, v13, :cond_f

    .line 597
    const/4 v13, 0x7

    move-object/from16 v0, p1

    iput v13, v0, Lcom/futuredial/pim/EventRecurrence;->freq:I

    .line 598
    if-nez v7, :cond_1e

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->startDate:Landroid/text/format/Time;

    iget v7, v13, Landroid/text/format/Time;->monthDay:I

    .line 599
    :cond_1e
    if-nez v9, :cond_1f

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->startDate:Landroid/text/format/Time;

    iget v13, v13, Landroid/text/format/Time;->month:I

    add-int/lit8 v9, v13, 0x1

    .line 600
    :cond_1f
    if-nez v8, :cond_20

    .line 602
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iput v13, v0, Lcom/futuredial/pim/EventRecurrence;->bymonthdayCount:I

    .line 603
    const/4 v13, 0x1

    new-array v13, v13, [I

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bymonthday:[I

    .line 604
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bymonthday:[I

    const/4 v14, 0x0

    aput v7, v13, v14

    .line 606
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iput v13, v0, Lcom/futuredial/pim/EventRecurrence;->bymonthCount:I

    .line 607
    const/4 v13, 0x1

    new-array v13, v13, [I

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bymonth:[I

    .line 608
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bymonth:[I

    const/4 v14, 0x0

    aput v9, v13, v14

    goto/16 :goto_3

    .line 610
    :cond_20
    const/4 v13, 0x1

    if-ne v8, v13, :cond_f

    .line 612
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iput v13, v0, Lcom/futuredial/pim/EventRecurrence;->bymonthCount:I

    .line 613
    const/4 v13, 0x1

    new-array v13, v13, [I

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bymonth:[I

    .line 614
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bymonth:[I

    const/4 v14, 0x0

    aput v9, v13, v14

    .line 616
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iput v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayCount:I

    .line 617
    const/4 v13, 0x1

    new-array v13, v13, [I

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    .line 618
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->byday:[I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/futuredial/pim/EventRecurrence;->startDate:Landroid/text/format/Time;

    iget v15, v15, Landroid/text/format/Time;->weekDay:I

    invoke-static {v15}, Lcom/futuredial/pim/EventRecurrence;->timeDay2Day(I)I

    move-result v15

    aput v15, v13, v14

    .line 620
    const/4 v13, 0x1

    new-array v13, v13, [I

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    .line 621
    rem-int/lit8 v13, v7, 0x7

    if-nez v13, :cond_21

    .line 623
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    const/4 v14, 0x0

    div-int/lit8 v15, v7, 0x7

    aput v15, v13, v14

    goto/16 :goto_3

    .line 625
    :cond_21
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/futuredial/pim/EventRecurrence;->bydayNum:[I

    const/4 v14, 0x0

    div-int/lit8 v15, v7, 0x7

    add-int/lit8 v15, v15, 0x1

    aput v15, v13, v14

    goto/16 :goto_3

    .line 636
    .end local v5           #i:I
    .end local v6           #nCount:I
    :cond_22
    const-string v13, "G2Calendar"

    const-string v14, "populateEventRecurrence,no recurrence type !"

    invoke-static {v13, v14}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 637
    const/4 v2, 0x0

    goto/16 :goto_2
.end method


# virtual methods
.method public DeleteAll()I
    .locals 13

    .prologue
    .line 98
    const/4 v11, 0x0

    .line 99
    .local v11, nRet:I
    const/4 v7, 0x0

    .line 102
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "calendar_id=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 103
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 104
    .local v6, count:I
    if-lez v6, :cond_2

    .line 106
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 108
    :cond_0
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 109
    .local v9, eventID:Ljava/lang/String;
    const-string v0, "hasAlarm"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 110
    .local v10, hasAlarm:Ljava/lang/String;
    if-eqz v10, :cond_1

    const-string v0, "1"

    if-ne v10, v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 114
    :cond_1
    sget-object v0, Lcom/futuredial/pim/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 115
    .local v12, uriEvent:Landroid/net/Uri;
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar;->cr:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 116
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    .end local v9           #eventID:Ljava/lang/String;
    .end local v10           #hasAlarm:Ljava/lang/String;
    .end local v12           #uriEvent:Landroid/net/Uri;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v6           #count:I
    :cond_3
    :goto_0
    return v11

    .line 120
    :catch_0
    move-exception v8

    .line 121
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "G2Calendar"

    const-string v1, "DeleteAllEvents Exception."

    invoke-static {v0, v1, v8}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    const/4 v11, 0x1

    .line 123
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public InitRead()I
    .locals 2

    .prologue
    .line 1039
    new-instance v0, Lcom/futuredial/pim/G2Calendar$ReadCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/futuredial/pim/G2Calendar$ReadCalendar;-><init>(Lcom/futuredial/pim/G2Calendar;Lcom/futuredial/pim/G2Calendar$1;)V

    iput-object v0, p0, Lcom/futuredial/pim/G2Calendar;->rdCalendar:Lcom/futuredial/pim/G2Calendar$ReadCalendar;

    .line 1040
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar;->rdCalendar:Lcom/futuredial/pim/G2Calendar$ReadCalendar;

    invoke-virtual {v0}, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->InitRead()I

    move-result v0

    return v0
.end method

.method public ReadItem(Lorg/json/JSONObject;)I
    .locals 1
    .parameter "job"

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar;->rdCalendar:Lcom/futuredial/pim/G2Calendar$ReadCalendar;

    invoke-virtual {v0, p1}, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->ReadOneItem(Lorg/json/JSONObject;)I

    move-result v0

    return v0
.end method

.method public SetAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sType"
    .parameter "sName"

    .prologue
    .line 705
    invoke-super {p0, p1, p2}, Lcom/futuredial/pim/CPim;->SetAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/futuredial/pim/G2Calendar;->bHasCalendarId:Z

    .line 707
    invoke-direct {p0}, Lcom/futuredial/pim/G2Calendar;->GetCalendarID()V

    .line 708
    iget-boolean v0, p0, Lcom/futuredial/pim/G2Calendar;->bHasCalendarId:Z

    if-nez v0, :cond_0

    .line 709
    invoke-direct {p0}, Lcom/futuredial/pim/G2Calendar;->insertSyncAccount()I

    .line 711
    :cond_0
    return-void
.end method

.method public UnInitRead()I
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar;->rdCalendar:Lcom/futuredial/pim/G2Calendar$ReadCalendar;

    invoke-virtual {v0}, Lcom/futuredial/pim/G2Calendar$ReadCalendar;->UnInitRead()I

    move-result v0

    return v0
.end method

.method public addNewItemFromAndroid(Lcom/futuredial/publicobj/Item;Z)I
    .locals 13
    .parameter "objItem"
    .parameter "bLast"

    .prologue
    .line 789
    const/4 v5, 0x0

    .line 791
    .local v5, nRet:I
    if-nez p1, :cond_0

    .line 792
    const/4 v10, 0x1

    .line 905
    :goto_0
    return v10

    .line 794
    :cond_0
    :try_start_0
    iget-object v10, p1, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    const/16 v11, 0x2710

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 795
    .local v0, arrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    if-eqz v0, :cond_c

    .line 796
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/futuredial/publicobj/Field;

    iget-object v4, v10, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    .line 797
    .local v4, json_pb:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 798
    .local v3, jsonObject:Lorg/json/JSONObject;
    const-string v7, ""

    .line 799
    .local v7, value:Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 800
    .local v8, values_event:Landroid/content/ContentValues;
    const-string v10, "eventTimezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v10, "title"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 803
    const-string v10, "title"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 804
    .restart local v7       #value:Ljava/lang/String;
    const-string v10, "title"

    invoke-virtual {v8, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    :cond_1
    const-string v10, "deleted"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 808
    const-string v10, "deleted"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 809
    .restart local v7       #value:Ljava/lang/String;
    const-string v10, "deleted"

    invoke-virtual {v8, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    :cond_2
    const-string v10, "eventLocation"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 813
    const-string v10, "eventLocation"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 814
    .restart local v7       #value:Ljava/lang/String;
    const-string v10, "eventLocation"

    invoke-virtual {v8, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :cond_3
    const-string v10, "description"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 818
    const-string v10, "description"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 819
    .restart local v7       #value:Ljava/lang/String;
    const-string v10, "description"

    invoke-virtual {v8, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :cond_4
    const-string v10, "dtend"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 823
    const-string v10, "dtend"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 824
    .restart local v7       #value:Ljava/lang/String;
    const-string v10, "dtend"

    invoke-virtual {v8, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    :cond_5
    const-string v10, "dtstart"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 828
    const-string v10, "dtstart"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 829
    .restart local v7       #value:Ljava/lang/String;
    const-string v10, "dtstart"

    invoke-virtual {v8, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    :cond_6
    const-string v10, "duration"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 833
    const-string v10, "duration"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 834
    .restart local v7       #value:Ljava/lang/String;
    const-string v10, "duration"

    invoke-virtual {v8, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    :cond_7
    const-string v10, "hasAlarm"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 838
    const-string v10, "hasAlarm"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 839
    .restart local v7       #value:Ljava/lang/String;
    const-string v10, "hasAlarm"

    invoke-virtual {v8, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    :cond_8
    const-string v10, "rrule"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 843
    const-string v10, "rrule"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 844
    .restart local v7       #value:Ljava/lang/String;
    const-string v10, "rrule"

    invoke-virtual {v8, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_9
    const-string v10, "eventTimezone"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 848
    const-string v10, "eventTimezone"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 849
    .restart local v7       #value:Ljava/lang/String;
    const-string v10, "eventTimezone"

    invoke-virtual {v8, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_a
    const-string v10, "allDay"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 853
    const-string v10, "allDay"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 854
    .restart local v7       #value:Ljava/lang/String;
    const-string v10, "allDay"

    invoke-virtual {v8, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    :cond_b
    const-string v10, "calendar_id"

    iget v11, p0, Lcom/futuredial/pim/G2Calendar;->ncal_id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 871
    const-string v10, "hasExtendedProperties"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 872
    iget-object v10, p0, Lcom/futuredial/pim/G2Calendar;->cr:Landroid/content/ContentResolver;

    sget-object v11, Lcom/futuredial/pim/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 873
    .local v2, eventUri:Landroid/net/Uri;
    const-string v10, "G2Calendar"

    invoke-virtual {v8}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    if-eqz v2, :cond_d

    .line 877
    iget-object v10, p0, Lcom/futuredial/pim/G2Calendar;->WrittenUri:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    const-string v10, "minutes"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 880
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 881
    .local v9, values_reminder:Landroid/content/ContentValues;
    const-string v10, "minutes"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #value:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 882
    .restart local v7       #value:Ljava/lang/String;
    const-string v10, "event_id"

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v10, "minutes"

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-object v10, p0, Lcom/futuredial/pim/G2Calendar;->cr:Landroid/content/ContentResolver;

    sget-object v11, Lcom/futuredial/pim/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 885
    .local v6, reminderUri:Landroid/net/Uri;
    const-string v10, "G2Calendar"

    invoke-virtual {v9}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    if-nez v6, :cond_c

    .line 888
    iget-object v10, p0, Lcom/futuredial/pim/G2Calendar;->WrittenUri:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    const-string v10, "G2Calendar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "INSERT Event  Reminder failed ,Event id :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const/16 v5, 0x4e33

    .end local v0           #arrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v2           #eventUri:Landroid/net/Uri;
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #json_pb:Ljava/lang/String;
    .end local v6           #reminderUri:Landroid/net/Uri;
    .end local v7           #value:Ljava/lang/String;
    .end local v8           #values_event:Landroid/content/ContentValues;
    .end local v9           #values_reminder:Landroid/content/ContentValues;
    :cond_c
    :goto_1
    move v10, v5

    .line 905
    goto/16 :goto_0

    .line 894
    .restart local v0       #arrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .restart local v2       #eventUri:Landroid/net/Uri;
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    .restart local v4       #json_pb:Ljava/lang/String;
    .restart local v7       #value:Ljava/lang/String;
    .restart local v8       #values_event:Landroid/content/ContentValues;
    :cond_d
    const-string v10, "G2Calendar"

    const-string v11, "INSERT ENVETN FAILED!"

    invoke-static {v10, v11}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    const/16 v5, 0x4e33

    goto :goto_1

    .line 900
    .end local v0           #arrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v2           #eventUri:Landroid/net/Uri;
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #json_pb:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    .end local v8           #values_event:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 901
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "G2Calendar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addNewOneEvent Exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 903
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public addnewItem(Lcom/futuredial/publicobj/Item;Z)I
    .locals 35
    .parameter "objItem"
    .parameter "bLast"

    .prologue
    .line 133
    const/16 v17, 0x0

    .line 134
    .local v17, nRet:I
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v31, v0

    const/16 v32, 0x2710

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 136
    invoke-virtual/range {p0 .. p2}, Lcom/futuredial/pim/G2Calendar;->addNewItemFromAndroid(Lcom/futuredial/publicobj/Item;Z)I

    move/from16 v31, v17

    .line 323
    :goto_0
    return v31

    .line 140
    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/futuredial/pim/G2Calendar;->IsEvent(Lcom/futuredial/publicobj/Item;)Z

    move-result v5

    .line 141
    .local v5, bs:Z
    if-nez v5, :cond_1

    .line 143
    const/16 v17, 0x4e24

    move/from16 v31, v17

    .line 144
    goto :goto_0

    .line 147
    :cond_1
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 148
    .local v30, values:Landroid/content/ContentValues;
    const/4 v9, 0x0

    .local v9, dtStart:Landroid/text/format/Time;
    const/4 v7, 0x0

    .local v7, dtEnd:Landroid/text/format/Time;
    const/4 v8, 0x0

    .line 149
    .local v8, dtReminder:Landroid/text/format/Time;
    const/16 v16, 0x0

    .line 150
    .local v16, nRecurCount:I
    const/16 v22, 0x0

    .local v22, sRecurUtil:Ljava/lang/String;
    const/16 v24, 0x0

    .line 151
    .local v24, strTZone:Ljava/lang/String;
    const/4 v3, 0x0

    .line 152
    .local v3, bHasAlarms:Z
    const-wide/16 v27, -0x1

    .line 153
    .local v27, tmReminder:J
    const/4 v4, 0x0

    .line 155
    .local v4, bReminderTime:Z
    invoke-static/range {p1 .. p1}, Lcom/futuredial/pim/G2Calendar;->getTimeZonefromFld(Lcom/futuredial/publicobj/Item;)Ljava/lang/String;

    move-result-object v24

    .line 156
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v12

    .line 157
    .local v12, enmkeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v31

    if-eqz v31, :cond_12

    .line 158
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 159
    .local v19, nfldID:Ljava/lang/Integer;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/publicobj/Item;->m_objFieldArray:Ljava/util/Hashtable;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 161
    .local v15, fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    new-instance v14, Lcom/futuredial/publicobj/Field;

    invoke-direct {v14}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 162
    .local v14, fld:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_5

    .line 164
    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #fld:Lcom/futuredial/publicobj/Field;
    check-cast v14, Lcom/futuredial/publicobj/Field;

    .line 170
    .restart local v14       #fld:Lcom/futuredial/publicobj/Field;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_2

    .line 173
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v32, 0xb

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v32, 0x10

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 175
    :cond_3
    const-string v31, "title"

    iget-object v0, v14, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "\r\n"

    const-string v34, "\n"

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 318
    .end local v3           #bHasAlarms:Z
    .end local v4           #bReminderTime:Z
    .end local v5           #bs:Z
    .end local v7           #dtEnd:Landroid/text/format/Time;
    .end local v8           #dtReminder:Landroid/text/format/Time;
    .end local v9           #dtStart:Landroid/text/format/Time;
    .end local v12           #enmkeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .end local v14           #fld:Lcom/futuredial/publicobj/Field;
    .end local v15           #fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v16           #nRecurCount:I
    .end local v19           #nfldID:Ljava/lang/Integer;
    .end local v22           #sRecurUtil:Ljava/lang/String;
    .end local v24           #strTZone:Ljava/lang/String;
    .end local v27           #tmReminder:J
    .end local v30           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v11

    .line 319
    .local v11, e:Ljava/lang/Exception;
    const-string v31, "G2Calendar"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "addNewOneEvent Exception"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 321
    const/16 v17, 0x1

    .end local v11           #e:Ljava/lang/Exception;
    :cond_4
    :goto_2
    move/from16 v31, v17

    .line 323
    goto/16 :goto_0

    .line 166
    .restart local v3       #bHasAlarms:Z
    .restart local v4       #bReminderTime:Z
    .restart local v5       #bs:Z
    .restart local v7       #dtEnd:Landroid/text/format/Time;
    .restart local v8       #dtReminder:Landroid/text/format/Time;
    .restart local v9       #dtStart:Landroid/text/format/Time;
    .restart local v12       #enmkeys:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/Integer;>;"
    .restart local v14       #fld:Lcom/futuredial/publicobj/Field;
    .restart local v15       #fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .restart local v16       #nRecurCount:I
    .restart local v19       #nfldID:Ljava/lang/Integer;
    .restart local v22       #sRecurUtil:Ljava/lang/String;
    .restart local v24       #strTZone:Ljava/lang/String;
    .restart local v27       #tmReminder:J
    .restart local v30       #values:Landroid/content/ContentValues;
    :cond_5
    :try_start_1
    const-string v31, "G2Calendar"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "ITEM NO DATA ,FIELDID :"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/16 v31, 0x4e33

    goto/16 :goto_0

    .line 176
    :cond_6
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v32, 0xd

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 178
    const-string v31, "eventLocation"

    iget-object v0, v14, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "\r\n"

    const-string v34, "\n"

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 179
    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v32, 0xc

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    .line 181
    const-string v31, "description"

    iget-object v0, v14, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "\r\n"

    const-string v34, "\n"

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 182
    :cond_8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v32, 0x65

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 184
    iget-object v0, v14, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 186
    .local v26, strdtime:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/pim/G2Calendar;->String2Time(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v9

    .line 187
    if-nez v9, :cond_9

    .line 189
    const/16 v17, 0x4e33

    move/from16 v31, v17

    .line 190
    goto/16 :goto_0

    .line 192
    :cond_9
    const-string v31, "dtstart"

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    const-string v31, "eventTimezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 194
    .end local v26           #strdtime:Ljava/lang/String;
    :cond_a
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v32, 0x66

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    .line 196
    iget-object v0, v14, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 197
    .restart local v26       #strdtime:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/pim/G2Calendar;->String2Time(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v7

    .line 198
    if-nez v7, :cond_b

    .line 200
    const/16 v17, 0x4e33

    move/from16 v31, v17

    .line 201
    goto/16 :goto_0

    .line 203
    :cond_b
    const-string v31, "dtend"

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    .line 204
    .end local v26           #strdtime:Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v32, 0xcc

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    .line 206
    iget-object v0, v14, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "P.*"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_d

    .line 207
    const-string v31, "duration"

    iget-object v0, v14, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 209
    :cond_d
    invoke-virtual {v14}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v18

    .line 210
    .local v18, nduration:I
    if-eqz v18, :cond_2

    .line 211
    mul-int/lit8 v18, v18, 0x3c

    .line 212
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, data:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "P"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "S"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 214
    .local v25, strValue:Ljava/lang/String;
    const-string v31, "duration"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 218
    .end local v6           #data:Ljava/lang/String;
    .end local v18           #nduration:I
    .end local v25           #strValue:Ljava/lang/String;
    :cond_e
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v32, 0xd0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    .line 220
    invoke-virtual {v14}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v16

    goto/16 :goto_1

    .line 221
    :cond_f
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v32, 0x67

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_2

    .line 225
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v32, 0x68

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    .line 227
    iget-object v0, v14, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v22, v0

    goto/16 :goto_1

    .line 229
    :cond_10
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v32, 0xc9

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 231
    invoke-virtual {v14}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v31

    if-lez v31, :cond_2

    .line 233
    const/4 v3, 0x1

    .line 234
    iget-object v0, v14, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_2

    .line 236
    iget-object v0, v14, Lcom/futuredial/publicobj/Field;->m_property:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/futuredial/publicobj/Field;

    .line 237
    .local v20, proFld:Lcom/futuredial/publicobj/Field;
    invoke-virtual/range {v20 .. v20}, Lcom/futuredial/publicobj/Field;->GetID()Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v32, 0x69

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 239
    const-string v31, "hasAlarm"

    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 241
    .restart local v26       #strdtime:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/pim/G2Calendar;->String2Time(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v8

    .line 242
    const/4 v4, 0x1

    .line 243
    goto/16 :goto_1

    .line 244
    .end local v26           #strdtime:Ljava/lang/String;
    :cond_11
    invoke-virtual/range {v20 .. v20}, Lcom/futuredial/publicobj/Field;->GetID()Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v32, 0xe6

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 246
    const-string v31, "hasAlarm"

    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/futuredial/publicobj/Field;->m_strBuffer:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 248
    .restart local v26       #strdtime:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    goto/16 :goto_1

    .line 255
    .end local v14           #fld:Lcom/futuredial/publicobj/Field;
    .end local v15           #fldArrVal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v19           #nfldID:Ljava/lang/Integer;
    .end local v20           #proFld:Lcom/futuredial/publicobj/Field;
    .end local v26           #strdtime:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v22

    invoke-static {v0, v9, v1, v2}, Lcom/futuredial/pim/G2Calendar;->getRecurrenceRule(Lcom/futuredial/publicobj/Item;Landroid/text/format/Time;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 256
    .local v23, strData:Ljava/lang/String;
    if-eqz v23, :cond_13

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_13

    .line 258
    const-string v31, "rrule"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_13
    if-eqz v7, :cond_14

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v31

    const-wide/16 v33, -0x1

    cmp-long v31, v31, v33

    if-eqz v31, :cond_14

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v31

    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v33

    cmp-long v31, v31, v33

    if-lez v31, :cond_15

    .line 263
    :cond_14
    move-object v7, v9

    .line 264
    const-string v31, "dtend"

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 267
    :cond_15
    if-eqz v9, :cond_16

    if-eqz v7, :cond_16

    .line 269
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7}, Lcom/futuredial/pim/G2Calendar;->computeDuration(Landroid/text/format/Time;Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v10

    .line 270
    .local v10, duration:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_16

    .line 271
    const-string v31, "duration"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .end local v10           #duration:Ljava/lang/String;
    :cond_16
    const-string v31, "calendar_id"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/futuredial/pim/G2Calendar;->ncal_id:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    invoke-static {}, Lcom/futuredial/pim/FDUri;->getCalVISIBILITY()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    const-string v31, "hasExtendedProperties"

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    sget-object v29, Lcom/futuredial/pim/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 278
    .local v29, uriins:Landroid/net/Uri;
    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0xe

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_17

    .line 280
    invoke-static {}, Lcom/futuredial/pim/FDUri;->getDirty()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    sget-object v31, Lcom/futuredial/pim/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v31

    const-string v32, "caller_is_syncadapter"

    const-string v33, "true"

    invoke-virtual/range {v31 .. v33}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v31

    invoke-static {}, Lcom/futuredial/pim/FDUri;->getAccountName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Calendar;->sAccountName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v31

    invoke-static {}, Lcom/futuredial/pim/FDUri;->getAccountType()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Calendar;->sAccountType:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v29

    .line 287
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Calendar;->cr:Landroid/content/ContentResolver;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 288
    .local v13, eventUri:Landroid/net/Uri;
    const-string v31, "G2Calendar"

    invoke-virtual/range {v30 .. v30}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    if-eqz v13, :cond_1a

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Calendar;->WrittenUri:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    if-eqz v3, :cond_4

    .line 295
    invoke-virtual/range {v30 .. v30}, Landroid/content/ContentValues;->clear()V

    .line 296
    const-string v31, "event_id"

    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    if-eqz v4, :cond_18

    .line 298
    invoke-static {v9, v8}, Lcom/futuredial/pim/G2Calendar;->computeReminderTime(Landroid/text/format/Time;Landroid/text/format/Time;)J

    move-result-wide v27

    .line 299
    :cond_18
    const-wide/16 v31, 0x2760

    cmp-long v31, v27, v31

    if-lez v31, :cond_19

    const-wide/16 v27, 0x2760

    .line 300
    :cond_19
    const-wide/16 v31, -0x1

    cmp-long v31, v27, v31

    if-eqz v31, :cond_4

    .line 302
    const-string v31, "minutes"

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Calendar;->cr:Landroid/content/ContentResolver;

    move-object/from16 v31, v0

    sget-object v32, Lcom/futuredial/pim/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v21

    .line 304
    .local v21, reminderUri:Landroid/net/Uri;
    const-string v31, "G2Calendar"

    invoke-virtual/range {v30 .. v30}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    if-nez v21, :cond_4

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/pim/G2Calendar;->WrittenUri:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    const-string v31, "G2Calendar"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "INSERT Event  Reminder failed ,Event id :"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/futuredial/config/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const/16 v17, 0x4e33

    goto/16 :goto_2

    .line 314
    .end local v21           #reminderUri:Landroid/net/Uri;
    :cond_1a
    const-string v31, "G2Calendar"

    const-string v32, "INSERT ENVETN FAILED!"

    invoke-static/range {v31 .. v32}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 315
    const/16 v17, 0x4e33

    goto/16 :goto_2
.end method

.method public getCounts()I
    .locals 9

    .prologue
    .line 52
    const/4 v6, 0x0

    .line 53
    .local v6, count:I
    const/4 v7, 0x0

    .line 56
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/futuredial/pim/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "deleted= 0 "

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 57
    if-eqz v7, :cond_0

    .line 59
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 60
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    const-string v0, "[calendar query]"

    const-string v1, "calendar count:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return v6

    .line 62
    :catch_0
    move-exception v8

    .line 64
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "G2Calendar"

    const-string v1, "Event Counts Exception."

    invoke-static {v0, v1, v8}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getInstance(Landroid/content/Context;)Lcom/futuredial/pim/G2Calendar;
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar;->m_pim:Lcom/futuredial/pim/CPim;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar;->m_pim:Lcom/futuredial/pim/CPim;

    check-cast v0, Lcom/futuredial/pim/G2Calendar;

    .line 46
    :goto_0
    return-object v0

    .line 45
    :cond_0
    new-instance v0, Lcom/futuredial/pim/G2Calendar;

    invoke-direct {v0, p1}, Lcom/futuredial/pim/G2Calendar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/pim/G2Calendar;->m_pim:Lcom/futuredial/pim/CPim;

    .line 46
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar;->m_pim:Lcom/futuredial/pim/CPim;

    check-cast v0, Lcom/futuredial/pim/G2Calendar;

    goto :goto_0
.end method

.method public getPhoneMemCounts()I
    .locals 9

    .prologue
    .line 77
    const/4 v6, 0x0

    .line 78
    .local v6, Count:I
    const/4 v7, 0x0

    .line 81
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/futuredial/pim/G2Calendar;->cr:Landroid/content/ContentResolver;

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

    move-result-object v7

    .line 82
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 83
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    const-string v0, "[calendar query]"

    const-string v1, "calendar count in phonememory:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return v6

    .line 86
    :catch_0
    move-exception v8

    .line 88
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "G2Calendar"

    const-string v1, "InquireCalendarNumbers Exception."

    invoke-static {v0, v1, v8}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
