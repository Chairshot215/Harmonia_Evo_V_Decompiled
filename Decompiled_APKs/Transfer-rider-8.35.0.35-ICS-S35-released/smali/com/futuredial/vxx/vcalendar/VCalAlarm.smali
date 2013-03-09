.class public Lcom/futuredial/vxx/vcalendar/VCalAlarm;
.super Ljava/lang/Object;
.source "VCalAlarm.java"


# instance fields
.field private iAlarmType:I

.field private strAlarmTime:Ljava/lang/String;

.field private strAudioContent:Ljava/lang/String;

.field private strRepeatCount:Ljava/lang/String;

.field private strSnoozeTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcom/futuredial/vxx/vcalendar/VCalAlarm;->ResetVCalAlarm()V

    .line 13
    return-void
.end method


# virtual methods
.method public AddVCalAlarmToItem(Ljava/lang/String;Ljava/util/HashMap;Lcom/futuredial/publicobj/Item;)V
    .locals 6
    .parameter "strAlarmTag"
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/futuredial/publicobj/Item;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, hmVCalTagToID:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 71
    .local v0, alarmID:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 73
    new-instance v2, Lcom/futuredial/publicobj/Field;

    invoke-direct {v2}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 74
    .local v2, fieldAlarm:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v5}, Lcom/futuredial/publicobj/Field;->SetInt(II)Z

    .line 77
    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalAlarm;->strAlarmTime:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";TIME"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 80
    .local v1, alarmTimeID:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 82
    new-instance v3, Lcom/futuredial/publicobj/Field;

    invoke-direct {v3}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 83
    .local v3, fieldAlarmTime:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/futuredial/vxx/vcalendar/VCalAlarm;->strAlarmTime:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 84
    invoke-virtual {v2, v3}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 87
    .end local v1           #alarmTimeID:Ljava/lang/Integer;
    .end local v3           #fieldAlarmTime:Lcom/futuredial/publicobj/Field;
    :cond_0
    invoke-virtual {p3, v2}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    .line 89
    .end local v2           #fieldAlarm:Lcom/futuredial/publicobj/Field;
    :cond_1
    return-void
.end method

.method public InitVCalAlarm(Ljava/lang/String;)Z
    .locals 5
    .parameter "strVCalAlarm"

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 35
    .local v0, bRet:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    move v1, v0

    .line 64
    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_0
    return v1

    .line 40
    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_0
    const-string v4, ";"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, strFieldArray:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 43
    packed-switch v2, :pswitch_data_0

    .line 41
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 46
    :pswitch_0
    aget-object v4, v3, v2

    iput-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalAlarm;->strAlarmTime:Ljava/lang/String;

    goto :goto_2

    .line 49
    :pswitch_1
    aget-object v4, v3, v2

    iput-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalAlarm;->strSnoozeTime:Ljava/lang/String;

    goto :goto_2

    .line 52
    :pswitch_2
    aget-object v4, v3, v2

    iput-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalAlarm;->strRepeatCount:Ljava/lang/String;

    goto :goto_2

    .line 55
    :pswitch_3
    aget-object v4, v3, v2

    iput-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalAlarm;->strAudioContent:Ljava/lang/String;

    goto :goto_2

    .line 62
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    .line 64
    .restart local v1       #bRet:I
    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public ResetVCalAlarm()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/vxx/vcalendar/VCalAlarm;->iAlarmType:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/vxx/vcalendar/VCalAlarm;->strAlarmTime:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/vxx/vcalendar/VCalAlarm;->strSnoozeTime:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/vxx/vcalendar/VCalAlarm;->strRepeatCount:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/vxx/vcalendar/VCalAlarm;->strAudioContent:Ljava/lang/String;

    .line 22
    return-void
.end method
