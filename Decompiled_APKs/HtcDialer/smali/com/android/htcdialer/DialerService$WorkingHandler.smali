.class Lcom/android/htcdialer/DialerService$WorkingHandler;
.super Landroid/os/Handler;
.source "DialerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/DialerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/DialerService;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/DialerService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    .line 389
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 390
    return-void
.end method

.method private combineSortIndex([Lcom/android/htcdialer/search/SearchableCallLog;[Lcom/android/htcdialer/search/SearchableCallLog;[Lcom/android/htcdialer/search/SearchableContact;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 13
    .parameter "callLogs1"
    .parameter "callLogs2"
    .parameter "contacts"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/htcdialer/search/SearchableCallLog;",
            "[",
            "Lcom/android/htcdialer/search/SearchableCallLog;",
            "[",
            "Lcom/android/htcdialer/search/SearchableContact;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableContact;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;)V"
        }
    .end annotation

    .prologue
    .line 1038
    .local p4, contactsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/htcdialer/search/SearchableContact;>;"
    .local p5, phonesMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[J>;"
    const-wide/16 v7, 0x0

    .line 1040
    .local v7, time:J
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1041
    .local v3, filterId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/htcdialer/DialerService;->access$1202(I)I

    .line 1042
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/htcdialer/DialerService;->access$1502(I)I

    .line 1043
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    array-length v9, p1

    array-length v10, p2

    if-ne v9, v10, :cond_5

    .line 1044
    array-length v6, p1

    .line 1045
    .local v6, length:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_5

    .line 1046
    aget-object v9, p1, v4

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, v9, v0, v1}, Lcom/android/htcdialer/DialerService$WorkingHandler;->isBlackCallLog(Lcom/android/htcdialer/search/SearchableCallLog;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1047
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_0

    .line 1048
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v10

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iput v10, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 1049
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1208()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p1, v4

    iput-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 1051
    :cond_0
    aget-object v9, p1, v4

    iget-wide v9, v9, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    .line 1053
    sget-boolean v9, Lcom/android/htcdialer/DialerApp;->ENABLE_MERGE_CONTACT:Z

    if-eqz v9, :cond_3

    .line 1054
    aget-object v9, p1, v4

    iget-wide v9, v9, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1070
    :cond_1
    :goto_1
    aget-object v9, p2, v4

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, v9, v0, v1}, Lcom/android/htcdialer/DialerService$WorkingHandler;->isBlackCallLog(Lcom/android/htcdialer/search/SearchableCallLog;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1071
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v10

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iput v10, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 1072
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1508()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p2, v4

    iput-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 1045
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1056
    :cond_3
    aget-object v9, p1, v4

    iget-wide v9, v9, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/search/SearchableContact;

    .line 1057
    .local v2, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v2, :cond_1

    iget v9, v2, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v9, :cond_1

    iget-object v9, v2, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    if-eqz v9, :cond_1

    .line 1059
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    iget v9, v2, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-ge v5, v9, :cond_1

    .line 1060
    iget-object v9, v2, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/android/htcdialer/search/SearchablePhone;->number:Ljava/lang/String;

    aget-object v10, p1, v4

    iget-object v10, v10, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1062
    iget-object v9, v2, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v9, v9, v5

    iget-wide v9, v9, Lcom/android/htcdialer/search/SearchablePhone;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1059
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1077
    .end local v2           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v6           #length:I
    :cond_5
    if-eqz p3, :cond_13

    .line 1078
    sget-boolean v9, Lcom/android/htcdialer/DialerApp;->ENABLE_MERGE_CONTACT:Z

    if-eqz v9, :cond_b

    .line 1080
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    move-object/from16 v0, p3

    array-length v9, v0

    if-ge v4, v9, :cond_8

    .line 1081
    aget-object v9, p3, v4

    iget-boolean v9, v9, Lcom/android/htcdialer/search/SearchableContact;->isFavorite:Z

    if-eqz v9, :cond_7

    aget-object v9, p3, v4

    iget v9, v9, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v9, :cond_7

    .line 1082
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_6

    .line 1083
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v10

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 1084
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1208()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iput-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 1086
    :cond_6
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_7

    aget-object v9, p3, v4

    iget-wide v9, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1088
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v10

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 1089
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1508()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iput-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 1080
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1094
    :cond_8
    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p3

    array-length v9, v0

    if-ge v4, v9, :cond_13

    .line 1095
    aget-object v9, p3, v4

    iget v9, v9, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v9, :cond_a

    .line 1096
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_9

    .line 1097
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iget v10, v10, Lcom/android/htcdialer/search/SearchableContact;->sectionIndex:I

    iput v10, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 1098
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1208()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iput-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 1100
    :cond_9
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_a

    aget-object v9, p3, v4

    iget-boolean v9, v9, Lcom/android/htcdialer/search/SearchableContact;->isFavorite:Z

    if-nez v9, :cond_a

    aget-object v9, p3, v4

    iget-wide v9, v9, Lcom/android/htcdialer/search/SearchableContact;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 1103
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iget v10, v10, Lcom/android/htcdialer/search/SearchableContact;->sectionIndex:I

    iput v10, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 1104
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1508()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iput-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 1094
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1110
    .end local v4           #i:I
    :cond_b
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    move-object/from16 v0, p3

    array-length v9, v0

    if-ge v4, v9, :cond_f

    .line 1111
    aget-object v9, p3, v4

    iget-boolean v9, v9, Lcom/android/htcdialer/search/SearchableContact;->isFavorite:Z

    if-eqz v9, :cond_e

    aget-object v9, p3, v4

    iget v9, v9, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v9, :cond_e

    .line 1112
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_6
    aget-object v9, p3, v4

    iget v9, v9, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-ge v5, v9, :cond_e

    .line 1113
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_c

    .line 1114
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v10

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 1115
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v10

    aget-object v9, v9, v10

    iput v5, v9, Lcom/android/htcdialer/search/SearchableObject;->phoneIndex:I

    .line 1116
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1208()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iput-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 1118
    :cond_c
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_d

    aget-object v9, p3, v4

    iget-object v9, v9, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v9, v9, v5

    iget-wide v9, v9, Lcom/android/htcdialer/search/SearchablePhone;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 1120
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v10

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iput v10, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 1121
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v10

    aget-object v9, v9, v10

    iput v5, v9, Lcom/android/htcdialer/search/SearchableObject;->phoneIndex:I

    .line 1122
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1508()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iput-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 1112
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1110
    .end local v5           #j:I
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 1128
    :cond_f
    const/4 v4, 0x0

    :goto_7
    move-object/from16 v0, p3

    array-length v9, v0

    if-ge v4, v9, :cond_13

    .line 1129
    aget-object v9, p3, v4

    iget v9, v9, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-lez v9, :cond_12

    .line 1130
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_8
    aget-object v9, p3, v4

    iget v9, v9, Lcom/android/htcdialer/search/SearchableContact;->phoneCount:I

    if-ge v5, v9, :cond_12

    .line 1131
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_10

    .line 1132
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iget v10, v10, Lcom/android/htcdialer/search/SearchableContact;->sectionIndex:I

    iput v10, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 1133
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v10

    aget-object v9, v9, v10

    iput v5, v9, Lcom/android/htcdialer/search/SearchableObject;->phoneIndex:I

    .line 1134
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1208()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iput-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 1136
    :cond_10
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_11

    aget-object v9, p3, v4

    iget-boolean v9, v9, Lcom/android/htcdialer/search/SearchableContact;->isFavorite:Z

    if-nez v9, :cond_11

    aget-object v9, p3, v4

    iget-object v9, v9, Lcom/android/htcdialer/search/SearchableContact;->phones:[Lcom/android/htcdialer/search/SearchablePhone;

    aget-object v9, v9, v5

    iget-wide v9, v9, Lcom/android/htcdialer/search/SearchablePhone;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 1139
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iget v10, v10, Lcom/android/htcdialer/search/SearchableContact;->sectionIndex:I

    iput v10, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 1140
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v10

    aget-object v9, v9, v10

    iput v5, v9, Lcom/android/htcdialer/search/SearchableObject;->phoneIndex:I

    .line 1141
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v9

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1508()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v10, p3, v4

    iput-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 1130
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 1128
    .end local v5           #j:I
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    .line 1152
    .end local v4           #i:I
    :cond_13
    return-void
.end method

.method private getSortedCallLogs(Ljava/util/HashMap;Z)[Lcom/android/htcdialer/search/SearchableCallLog;
    .locals 6
    .parameter
    .parameter "byCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableCallLog;",
            ">;Z)[",
            "Lcom/android/htcdialer/search/SearchableCallLog;"
        }
    .end annotation

    .prologue
    .line 978
    .local p1, callLogs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/htcdialer/search/SearchableCallLog;>;"
    const-wide/16 v2, 0x0

    .line 980
    .local v2, time:J
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 981
    .local v1, size:I
    if-nez v1, :cond_0

    .line 982
    const/4 v0, 0x0

    .line 992
    :goto_0
    return-object v0

    .line 984
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    new-array v5, v1, [Lcom/android/htcdialer/search/SearchableCallLog;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/htcdialer/search/SearchableCallLog;

    .line 985
    .local v0, array:[Lcom/android/htcdialer/search/SearchableCallLog;
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2900()Ljava/util/Comparator;

    move-result-object v4

    :goto_1
    invoke-static {v0, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$3000()Ljava/util/Comparator;

    move-result-object v4

    goto :goto_1
.end method

.method private getSortedContacts(Ljava/util/HashMap;)[Lcom/android/htcdialer/search/SearchableContact;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableContact;",
            ">;)[",
            "Lcom/android/htcdialer/search/SearchableContact;"
        }
    .end annotation

    .prologue
    .line 996
    .local p1, contacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/htcdialer/search/SearchableContact;>;"
    const-wide/16 v2, 0x0

    .line 998
    .local v2, time:J
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 999
    .local v1, size:I
    if-nez v1, :cond_0

    .line 1000
    const/4 v0, 0x0

    .line 1010
    :goto_0
    return-object v0

    .line 1003
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    new-array v5, v1, [Lcom/android/htcdialer/search/SearchableContact;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/htcdialer/search/SearchableContact;

    .line 1004
    .local v0, array:[Lcom/android/htcdialer/search/SearchableContact;
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$3100()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private getUpdateIdString([[J)Ljava/lang/String;
    .locals 9
    .parameter "updateInfo"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 581
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-object v3

    .line 585
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 586
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_3

    .line 587
    const-wide/16 v4, 0x1

    aget-object v6, p1, v0

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    aget-object v4, p1, v0

    aget-wide v4, v4, v8

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 588
    aget-object v4, p1, v0

    aget-wide v4, v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 589
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 592
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 593
    .local v1, length:I
    if-lez v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v8, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getUpdateInfo()[[J
    .locals 10

    .prologue
    .line 564
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v5

    monitor-enter v5

    .line 565
    const/16 v4, 0x64

    :try_start_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 566
    .local v2, numUpdate:I
    if-nez v2, :cond_0

    .line 567
    const/4 v4, 0x0

    check-cast v4, [[J

    monitor-exit v5

    .line 576
    :goto_0
    return-object v4

    .line 570
    :cond_0
    const/4 v4, 0x2

    filled-new-array {v2, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    .line 571
    .local v3, updateInfo:[[J
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Long;

    invoke-interface {v4, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    .line 572
    .local v1, keys:[Ljava/lang/Long;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_1

    if-ge v0, v2, :cond_1

    .line 573
    aget-object v4, v3, v0

    const/4 v6, 0x0

    aget-object v7, v1, v0

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v4, v6

    .line 574
    aget-object v6, v3, v0

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v4

    aget-object v8, v1, v0

    invoke-virtual {v4, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v8, v4

    aput-wide v8, v6, v7

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 576
    :cond_1
    monitor-exit v5

    move-object v4, v3

    goto :goto_0

    .line 577
    .end local v0           #i:I
    .end local v1           #keys:[Ljava/lang/Long;
    .end local v2           #numUpdate:I
    .end local v3           #updateInfo:[[J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private initDialerCache()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 932
    new-instance v0, Ljava/util/HashMap;

    const/16 v3, 0x1388

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {p0, v0, v4}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadContacts(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$002(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 936
    iget-object v0, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #calls: Lcom/android/htcdialer/DialerService;->loadBlackNumber(Ljava/util/HashMap;)Ljava/util/HashMap;
    invoke-static {v0, v3}, Lcom/android/htcdialer/DialerService;->access$2000(Lcom/android/htcdialer/DialerService;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1602(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 937
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1600()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {p0, v0, v3, v4}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadPhones(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 940
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1802(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 941
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1800()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {p0, v0, v3, v4}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadEmails(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 944
    new-instance v0, Ljava/util/HashMap;

    const/16 v3, 0x1f4

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadCallLogs(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$702(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 946
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v0

    array-length v0, v0

    if-ge v6, v0, :cond_0

    .line 947
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v0

    new-instance v3, Lcom/android/htcdialer/search/SearchableObject;

    invoke-direct {v3}, Lcom/android/htcdialer/search/SearchableObject;-><init>()V

    aput-object v3, v0, v6

    .line 948
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v0

    new-instance v3, Lcom/android/htcdialer/search/SearchableObject;

    invoke-direct {v3}, Lcom/android/htcdialer/search/SearchableObject;-><init>()V

    aput-object v3, v0, v6

    .line 946
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 952
    :cond_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getSortedCallLogs(Ljava/util/HashMap;Z)[Lcom/android/htcdialer/search/SearchableCallLog;

    move-result-object v1

    .line 953
    .local v1, callLogs1:[Lcom/android/htcdialer/search/SearchableCallLog;
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getSortedCallLogs(Ljava/util/HashMap;Z)[Lcom/android/htcdialer/search/SearchableCallLog;

    move-result-object v2

    .line 954
    .local v2, callLogs2:[Lcom/android/htcdialer/search/SearchableCallLog;
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getSortedContacts(Ljava/util/HashMap;)[Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$902([Lcom/android/htcdialer/search/SearchableContact;)[Lcom/android/htcdialer/search/SearchableContact;

    .line 955
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$900()[Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v3

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1600()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/htcdialer/DialerService$WorkingHandler;->combineSortIndex([Lcom/android/htcdialer/search/SearchableCallLog;[Lcom/android/htcdialer/search/SearchableCallLog;[Lcom/android/htcdialer/search/SearchableContact;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 958
    iget-object v0, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    #getter for: Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 959
    :try_start_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1600()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1002(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 960
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1800()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$2102(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 961
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerService;->mCallLogsMap:Ljava/util/HashMap;

    .line 962
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    .line 963
    sget-object v0, Lcom/android/htcdialer/DialerService;->mReference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 964
    const/4 v6, 0x0

    :goto_1
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 965
    sget-object v0, Lcom/android/htcdialer/DialerService;->mReference:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 967
    :cond_1
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerService;->mRefFilter:[Lcom/android/htcdialer/search/SearchableObject;

    .line 968
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v0

    sput v0, Lcom/android/htcdialer/DialerService;->mRefFilterCount:I

    .line 969
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    sput-boolean v7, Lcom/android/htcdialer/DialerService;->isPreloadDone:Z

    .line 973
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->notifyCacheUpdate()V

    .line 974
    return-void

    .line 969
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private insertCallLog(Lcom/android/htcdialer/search/SearchableCallLog;)V
    .locals 16
    .parameter "searchableCallLog"

    .prologue
    .line 461
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/htcdialer/DialerService;->isCacheUpdating:Z

    .line 463
    sget-object v1, Lcom/android/htcdialer/DialerService;->mCallLogsMap:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 464
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lcom/android/htcdialer/DialerService;->access$702(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 468
    :goto_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 469
    .local v10, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htcdialer/search/SearchableCallLog;>;"
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    const-wide/16 v14, 0x0

    cmp-long v1, v4, v14

    if-gtz v1, :cond_8

    .line 470
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 471
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/htcdialer/search/SearchableCallLog;

    .line 472
    .local v13, scl:Lcom/android/htcdialer/search/SearchableCallLog;
    if-eqz p1, :cond_0

    if-eqz v13, :cond_0

    .line 473
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    const-wide/16 v14, 0x0

    cmp-long v1, v4, v14

    if-lez v1, :cond_3

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    iget-wide v14, v13, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    cmp-long v1, v4, v14

    if-nez v1, :cond_3

    .line 475
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/htcdialer/search/SearchableCallLog;->count:I

    iget v4, v13, Lcom/android/htcdialer/search/SearchableCallLog;->count:I

    add-int/2addr v1, v4

    move-object/from16 v0, p1

    iput v1, v0, Lcom/android/htcdialer/search/SearchableCallLog;->count:I

    .line 476
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 492
    .end local v13           #scl:Lcom/android/htcdialer/search/SearchableCallLog;
    :cond_1
    :goto_1
    const-wide/16 v7, 0x0

    .line 493
    .local v7, fakeId:J
    :goto_2
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v1

    const-wide v4, 0x7fffffffffffd8efL

    add-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 494
    const-wide/16 v4, 0x2710

    cmp-long v1, v7, v4

    if-nez v1, :cond_4

    .line 495
    const-wide/16 v7, 0x0

    goto :goto_2

    .line 466
    .end local v7           #fakeId:J
    .end local v10           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htcdialer/search/SearchableCallLog;>;"
    :cond_2
    sget-object v1, Lcom/android/htcdialer/DialerService;->mCallLogsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v1}, Lcom/android/htcdialer/DialerService;->access$702(Ljava/util/HashMap;)Ljava/util/HashMap;

    goto :goto_0

    .line 478
    .restart local v10       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htcdialer/search/SearchableCallLog;>;"
    .restart local v13       #scl:Lcom/android/htcdialer/search/SearchableCallLog;
    :cond_3
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    const-wide/16 v14, 0x0

    cmp-long v1, v4, v14

    if-gtz v1, :cond_0

    iget-wide v4, v13, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    const-wide/16 v14, 0x0

    cmp-long v1, v4, v14

    if-gtz v1, :cond_0

    .line 479
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    #calls: Lcom/android/htcdialer/DialerService;->getNumberKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/htcdialer/DialerService;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 480
    .local v11, key1:Ljava/lang/String;
    iget-object v1, v13, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    #calls: Lcom/android/htcdialer/DialerService;->getNumberKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/htcdialer/DialerService;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 481
    .local v12, key2:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    move-object/from16 v0, p1

    iget v1, v0, Lcom/android/htcdialer/search/SearchableCallLog;->count:I

    iget v4, v13, Lcom/android/htcdialer/search/SearchableCallLog;->count:I

    add-int/2addr v1, v4

    move-object/from16 v0, p1

    iput v1, v0, Lcom/android/htcdialer/search/SearchableCallLog;->count:I

    .line 484
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 497
    .end local v11           #key1:Ljava/lang/String;
    .end local v12           #key2:Ljava/lang/String;
    .end local v13           #scl:Lcom/android/htcdialer/search/SearchableCallLog;
    .restart local v7       #fakeId:J
    :cond_4
    const-wide/16 v4, 0x1

    add-long/2addr v7, v4

    goto :goto_2

    .line 500
    :cond_5
    const-wide v4, 0x7fffffffffffd8efL

    add-long/2addr v4, v7

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    .line 501
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v1

    const-wide v4, 0x7fffffffffffd8efL

    add-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getSortedCallLogs(Ljava/util/HashMap;Z)[Lcom/android/htcdialer/search/SearchableCallLog;

    move-result-object v2

    .line 505
    .local v2, callLogs1:[Lcom/android/htcdialer/search/SearchableCallLog;
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getSortedCallLogs(Ljava/util/HashMap;Z)[Lcom/android/htcdialer/search/SearchableCallLog;

    move-result-object v3

    .line 506
    .local v3, callLogs2:[Lcom/android/htcdialer/search/SearchableCallLog;
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$900()[Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v4

    sget-object v5, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/htcdialer/DialerService$WorkingHandler;->combineSortIndex([Lcom/android/htcdialer/search/SearchableCallLog;[Lcom/android/htcdialer/search/SearchableCallLog;[Lcom/android/htcdialer/search/SearchableContact;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    #getter for: Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/htcdialer/DialerService;->access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 510
    :try_start_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/htcdialer/DialerService;->mCallLogsMap:Ljava/util/HashMap;

    .line 511
    sget-object v1, Lcom/android/htcdialer/DialerService;->mReference:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 512
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v1

    if-ge v9, v1, :cond_6

    .line 513
    sget-object v1, Lcom/android/htcdialer/DialerService;->mReference:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v5

    aget-object v5, v5, v9

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 515
    :cond_6
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v1

    sput-object v1, Lcom/android/htcdialer/DialerService;->mRefFilter:[Lcom/android/htcdialer/search/SearchableObject;

    .line 516
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v1

    sput v1, Lcom/android/htcdialer/DialerService;->mRefFilterCount:I

    .line 517
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    invoke-direct/range {p0 .. p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->notifyCacheUpdate()V

    .line 537
    .end local v2           #callLogs1:[Lcom/android/htcdialer/search/SearchableCallLog;
    .end local v3           #callLogs2:[Lcom/android/htcdialer/search/SearchableCallLog;
    .end local v9           #i:I
    :cond_7
    :goto_4
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/htcdialer/DialerService;->isCacheUpdating:Z

    .line 538
    return-void

    .line 517
    .restart local v2       #callLogs1:[Lcom/android/htcdialer/search/SearchableCallLog;
    .restart local v3       #callLogs2:[Lcom/android/htcdialer/search/SearchableCallLog;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 521
    .end local v2           #callLogs1:[Lcom/android/htcdialer/search/SearchableCallLog;
    .end local v3           #callLogs2:[Lcom/android/htcdialer/search/SearchableCallLog;
    .end local v7           #fakeId:J
    :cond_8
    const-wide/16 v7, 0x0

    .line 522
    .restart local v7       #fakeId:J
    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 523
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/htcdialer/search/SearchableCallLog;

    .line 524
    .restart local v13       #scl:Lcom/android/htcdialer/search/SearchableCallLog;
    iget-wide v4, v13, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    const-wide v14, 0x7fffffffffffd8efL

    cmp-long v1, v4, v14

    if-ltz v1, :cond_9

    iget-object v1, v13, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 525
    iget-wide v7, v13, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    .line 530
    .end local v13           #scl:Lcom/android/htcdialer/search/SearchableCallLog;
    :cond_a
    const-wide/16 v4, 0x0

    cmp-long v1, v7, v4

    if-lez v1, :cond_7

    .line 531
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/htcdialer/search/SearchableCallLog;

    .line 532
    .restart local v13       #scl:Lcom/android/htcdialer/search/SearchableCallLog;
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    iput-wide v4, v13, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    .line 533
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v1

    iget-wide v4, v13, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method private isBlackCallLog(Lcom/android/htcdialer/search/SearchableCallLog;Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .locals 9
    .parameter "callLog"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/htcdialer/search/SearchableCallLog;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableContact;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;)Z"
        }
    .end annotation

    .prologue
    .local p2, contactsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/htcdialer/search/SearchableContact;>;"
    .local p3, phonesMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[J>;"
    const-wide/16 v7, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 1015
    iget-wide v5, p1, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    cmp-long v3, v5, v7

    if-lez v3, :cond_1

    .line 1016
    if-nez p2, :cond_0

    move-object v1, v0

    .line 1018
    .local v1, contact:Lcom/android/htcdialer/search/SearchableContact;
    :goto_0
    if-eqz v1, :cond_5

    iget v3, v1, Lcom/android/htcdialer/search/SearchableContact;->mSendToVoicemail:I

    if-lez v3, :cond_5

    move v3, v4

    .line 1032
    .end local v1           #contact:Lcom/android/htcdialer/search/SearchableContact;
    :goto_1
    return v3

    .line 1016
    :cond_0
    iget-wide v5, p1, Lcom/android/htcdialer/search/SearchableCallLog;->contactId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/search/SearchableContact;

    move-object v1, v3

    goto :goto_0

    .line 1022
    :cond_1
    if-nez p3, :cond_4

    .line 1024
    .local v0, blackIds:[J
    :goto_2
    if-eqz v0, :cond_5

    .line 1025
    const/4 v2, -0x1

    .line 1026
    .local v2, pivot:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget-wide v5, v0, v2

    cmp-long v3, v5, v7

    if-gtz v3, :cond_2

    .line 1027
    :cond_3
    array-length v3, v0

    if-ge v2, v3, :cond_5

    aget-wide v5, v0, v2

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_5

    move v3, v4

    .line 1028
    goto :goto_1

    .line 1022
    .end local v0           #blackIds:[J
    .end local v2           #pivot:I
    :cond_4
    iget-object v3, p1, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    #calls: Lcom/android/htcdialer/DialerService;->getNumberKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Lcom/android/htcdialer/DialerService;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    move-object v0, v3

    goto :goto_2

    .line 1032
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private loadCallLogs(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 18
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableCallLog;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableCallLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 886
    .local p1, callLogs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/htcdialer/search/SearchableCallLog;>;"
    const-wide/16 v15, 0x0

    .line 888
    .local v15, time:J
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$100()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2700()Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2800()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 890
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_2

    .line 891
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 892
    sget-boolean v2, Lcom/htc/util/phone/CityIdInfo;->ENABLED:Z

    if-eqz v2, :cond_3

    .line 894
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 895
    .local v3, callLogId:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    new-instance v2, Lcom/android/htcdialer/search/SearchableCallLog;

    const/4 v5, 0x4

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x2

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    sget v9, Lcom/android/htcdialer/DialerService$CallLogColumnIndex;->CONTACT_TIMES:I

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x3

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x1

    invoke-interface {v14, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v14, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x6

    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v2 .. v13}, Lcom/android/htcdialer/search/SearchableCallLog;-><init>(JJJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 920
    .end local v3           #callLogId:J
    :cond_1
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 927
    :cond_2
    return-object p1

    .line 908
    :cond_3
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 909
    .restart local v3       #callLogId:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    new-instance v2, Lcom/android/htcdialer/search/SearchableCallLog;

    const/4 v5, 0x4

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x2

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    sget v9, Lcom/android/htcdialer/DialerService$CallLogColumnIndex;->CONTACT_TIMES:I

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x3

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x1

    invoke-interface {v14, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v13}, Lcom/android/htcdialer/search/SearchableCallLog;-><init>(JJJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0
.end method

.method private loadContacts(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 19
    .parameter
    .parameter "idString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableContact;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 667
    .local p1, contacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/htcdialer/search/SearchableContact;>;"
    const-wide/16 v15, 0x0

    .line 669
    .local v15, time:J
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$100()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2200()Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2300()[Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 677
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_3

    .line 678
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 680
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 681
    .local v3, contactId:J
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 682
    .local v7, name:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v7, 0x0

    .line 683
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    new-instance v2, Lcom/android/htcdialer/search/SearchableContact;

    const/4 v5, 0x3

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v8, 0x6

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    const/4 v8, 0x1

    :goto_1
    const/4 v9, 0x6

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    const/4 v9, 0x1

    :goto_2
    const/4 v10, 0x2

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v10, 0x1

    :goto_3
    const/4 v11, 0x4

    invoke-interface {v14, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v14, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2300()[Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2400()[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    if-ne v13, v0, :cond_8

    const/4 v13, 0x7

    invoke-interface {v14, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    :goto_4
    invoke-direct/range {v2 .. v13}, Lcom/android/htcdialer/search/SearchableContact;-><init>(JJLjava/lang/String;ZZZLjava/lang/String;II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v5, 0x1388

    if-lt v2, v5, :cond_0

    .line 698
    .end local v3           #contactId:J
    .end local v7           #name:Ljava/lang/String;
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 705
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadNamePattern(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 706
    return-object p1

    .line 669
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 683
    .restart local v3       #contactId:J
    .restart local v7       #name:Ljava/lang/String;
    .restart local v14       #cursor:Landroid/database/Cursor;
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    :cond_8
    const/4 v13, 0x0

    goto :goto_4
.end method

.method private loadEmails(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 14
    .parameter
    .parameter
    .parameter "idString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableContact;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 771
    .local p1, contacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/htcdialer/search/SearchableContact;>;"
    .local p2, emailsBuf:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v12, 0x0

    .line 773
    .local v12, time:J
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$100()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2600()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/htcdialer/DialerService;->EMAIL_PROJECTION:[Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 776
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    .line 777
    const/4 v7, 0x0

    .line 778
    .local v7, contact:Lcom/android/htcdialer/search/SearchableContact;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 780
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 781
    .local v8, contactId:J
    if-eqz v7, :cond_1

    iget-wide v1, v7, Lcom/android/htcdialer/search/SearchableContact;->id:J

    cmp-long v1, v1, v8

    if-eqz v1, :cond_2

    .line 782
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #contact:Lcom/android/htcdialer/search/SearchableContact;
    check-cast v7, Lcom/android/htcdialer/search/SearchableContact;

    .line 784
    .restart local v7       #contact:Lcom/android/htcdialer/search/SearchableContact;
    :cond_2
    if-nez v7, :cond_7

    .line 792
    :cond_3
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 794
    .end local v8           #contactId:J
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 800
    .end local v7           #contact:Lcom/android/htcdialer/search/SearchableContact;
    :cond_5
    return-void

    .line 773
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 787
    .restart local v7       #contact:Lcom/android/htcdialer/search/SearchableContact;
    .restart local v8       #contactId:J
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_7
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 788
    .local v11, email:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 789
    const/4 v1, 0x0

    invoke-virtual {v7, v1, v11}, Lcom/android/htcdialer/search/SearchableContact;->addEmail(ZLjava/lang/String;)V

    .line 790
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private loadNamePattern(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 18
    .parameter
    .parameter "idString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableContact;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 803
    .local p1, contacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/htcdialer/search/SearchableContact;>;"
    const-wide/16 v16, 0x0

    .line 805
    .local v16, time:J
    sget-object v2, Lcom/android/htcdialer/DialerApp;->IME_URI:Landroid/net/Uri;

    .line 806
    .local v2, uri:Landroid/net/Uri;
    sget-object v6, Lcom/android/htcdialer/DialerApp;->IME_PARAMETER:Ljava/lang/String;

    .line 808
    .local v6, param:Ljava/lang/String;
    if-eqz v2, :cond_e

    .line 809
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 810
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v15

    .line 811
    .local v15, size:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-array v3, v15, [Lcom/android/htcdialer/search/SearchableContact;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/htcdialer/search/SearchableContact;

    .line 813
    .local v8, contactArray:[Lcom/android/htcdialer/search/SearchableContact;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v13, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v15, :cond_1

    .line 815
    aget-object v1, v8, v10

    iget-object v1, v1, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 816
    aget-object v1, v8, v10

    iget-object v1, v1, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 819
    :cond_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 820
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 822
    .local v5, nameArray:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-virtual {v1}, Lcom/android/htcdialer/DialerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 825
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_6

    .line 826
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 827
    const/4 v14, -0x1

    .line 830
    .local v14, pivot:I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    if-ge v14, v15, :cond_3

    aget-object v1, v8, v14

    iget-object v1, v1, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 831
    :cond_3
    if-ge v14, v15, :cond_4

    .line 832
    aget-object v1, v8, v14

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/htcdialer/search/SearchableContact;->setNamePattern(Ljava/lang/String;)V

    .line 834
    :cond_4
    if-ge v14, v15, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 836
    .end local v14           #pivot:I
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 882
    .end local v5           #nameArray:[Ljava/lang/String;
    .end local v8           #contactArray:[Lcom/android/htcdialer/search/SearchableContact;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #i:I
    .end local v13           #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #size:I
    :cond_6
    :goto_1
    return-void

    .line 840
    :cond_7
    const-string v1, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 841
    .local v11, idArray:[Ljava/lang/String;
    array-length v15, v11

    .line 842
    .restart local v15       #size:I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .restart local v13       #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_2
    if-ge v10, v15, :cond_9

    .line 844
    aget-object v1, v11, v10

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htcdialer/search/SearchableContact;

    .line 845
    .local v7, contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v7, :cond_8

    iget-object v1, v7, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 846
    iget-object v1, v7, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 849
    .end local v7           #contact:Lcom/android/htcdialer/search/SearchableContact;
    :cond_9
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 850
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 852
    .restart local v5       #nameArray:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-virtual {v1}, Lcom/android/htcdialer/DialerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 855
    .restart local v9       #cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_6

    .line 856
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 857
    const/4 v14, -0x1

    .line 858
    .restart local v14       #pivot:I
    const/4 v7, 0x0

    .line 861
    .restart local v7       #contact:Lcom/android/htcdialer/search/SearchableContact;
    :cond_a
    add-int/lit8 v14, v14, 0x1

    if-ge v14, v15, :cond_b

    aget-object v1, v11, v14

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #contact:Lcom/android/htcdialer/search/SearchableContact;
    check-cast v7, Lcom/android/htcdialer/search/SearchableContact;

    .restart local v7       #contact:Lcom/android/htcdialer/search/SearchableContact;
    if-eqz v7, :cond_a

    iget-object v1, v7, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 862
    :cond_b
    if-ge v14, v15, :cond_c

    .line 863
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/htcdialer/search/SearchableContact;->setNamePattern(Ljava/lang/String;)V

    .line 865
    :cond_c
    if-ge v14, v15, :cond_d

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_a

    .line 867
    .end local v7           #contact:Lcom/android/htcdialer/search/SearchableContact;
    .end local v14           #pivot:I
    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 872
    .end local v5           #nameArray:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #i:I
    .end local v11           #idArray:[Ljava/lang/String;
    .end local v13           #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #size:I
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 873
    .local v12, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/htcdialer/search/SearchableContact;>;"
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 874
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htcdialer/search/SearchableContact;

    .line 875
    .restart local v7       #contact:Lcom/android/htcdialer/search/SearchableContact;
    iget-object v1, v7, Lcom/android/htcdialer/search/SearchableContact;->name:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/android/htcdialer/search/SearchableContact;->setNamePattern(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private loadPhones(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 18
    .parameter
    .parameter
    .parameter "idString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/htcdialer/search/SearchableContact;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[J>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 711
    .local p1, contacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/htcdialer/search/SearchableContact;>;"
    .local p2, phonesBuf:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[J>;"
    const-wide/16 v15, 0x0

    .line 713
    .local v15, time:J
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$100()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$2500()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/htcdialer/DialerService;->PHONE_PROJECTION:[Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 716
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    .line 717
    const/4 v7, 0x0

    .line 718
    .local v7, contact:Lcom/android/htcdialer/search/SearchableContact;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 720
    :cond_0
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 722
    .local v8, contactId:J
    if-eqz v7, :cond_1

    iget-wide v1, v7, Lcom/android/htcdialer/search/SearchableContact;->id:J

    cmp-long v1, v1, v8

    if-eqz v1, :cond_2

    .line 723
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #contact:Lcom/android/htcdialer/search/SearchableContact;
    check-cast v7, Lcom/android/htcdialer/search/SearchableContact;

    .line 725
    .restart local v7       #contact:Lcom/android/htcdialer/search/SearchableContact;
    :cond_2
    if-nez v7, :cond_7

    .line 759
    :cond_3
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 761
    .end local v8           #contactId:J
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 767
    .end local v7           #contact:Lcom/android/htcdialer/search/SearchableContact;
    :cond_5
    return-void

    .line 713
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id IN ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 728
    .restart local v7       #contact:Lcom/android/htcdialer/search/SearchableContact;
    .restart local v8       #contactId:J
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_7
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 729
    .local v5, number:Ljava/lang/String;
    #calls: Lcom/android/htcdialer/DialerService;->getNumberKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5}, Lcom/android/htcdialer/DialerService;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 730
    .local v12, numberKey:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 731
    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    move/from16 v17, v1

    :goto_2
    new-instance v1, Lcom/android/htcdialer/search/SearchablePhone;

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v6, 0x5

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/android/htcdialer/search/SearchablePhone;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    move/from16 v0, v17

    invoke-virtual {v7, v0, v1}, Lcom/android/htcdialer/search/SearchableContact;->addPhone(ZLcom/android/htcdialer/search/SearchablePhone;)V

    .line 738
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 739
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [J

    .line 740
    .local v13, oldInfo:[J
    const/4 v14, 0x0

    .line 742
    .local v14, pivot:I
    :goto_3
    array-length v1, v13

    if-ge v14, v1, :cond_9

    aget-wide v1, v13, v14

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    aget-wide v1, v13, v14

    iget-wide v3, v7, Lcom/android/htcdialer/search/SearchableContact;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    .line 743
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 731
    .end local v13           #oldInfo:[J
    .end local v14           #pivot:I
    :cond_8
    const/4 v1, 0x0

    move/from16 v17, v1

    goto :goto_2

    .line 745
    .restart local v13       #oldInfo:[J
    .restart local v14       #pivot:I
    :cond_9
    array-length v1, v13

    if-lt v14, v1, :cond_a

    .line 746
    array-length v1, v13

    mul-int/lit8 v1, v1, 0x2

    new-array v11, v1, [J

    .line 747
    .local v11, newInfo:[J
    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v13

    invoke-static {v13, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 748
    array-length v1, v13

    iget-wide v2, v7, Lcom/android/htcdialer/search/SearchableContact;->id:J

    aput-wide v2, v11, v1

    .line 749
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 750
    .end local v11           #newInfo:[J
    :cond_a
    aget-wide v1, v13, v14

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 751
    iget-wide v1, v7, Lcom/android/htcdialer/search/SearchableContact;->id:J

    aput-wide v1, v13, v14

    goto/16 :goto_1

    .line 754
    .end local v13           #oldInfo:[J
    .end local v14           #pivot:I
    :cond_b
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v3, v7, Lcom/android/htcdialer/search/SearchableContact;->id:J

    aput-wide v3, v1, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private notifyCacheUpdate()V
    .locals 12

    .prologue
    .line 1170
    :try_start_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$3200()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1171
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$3200()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$3200()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xcd

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$3300()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1177
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1179
    .local v0, am:Landroid/app/IActivityManager;
    new-instance v2, Landroid/content/Intent;

    const-string v1, "com.android.htcdialer.CONTACT_CACHE_CHANGE"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1181
    .local v2, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 1183
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_1
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1197
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 1185
    .restart local v0       #am:Landroid/app/IActivityManager;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v11

    .line 1186
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "DialerService"

    const-string v3, "Contacts.db Corrupt Exception but can not find activity manager to broadcast intent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1192
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v11           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private updateCallLog()V
    .locals 7

    .prologue
    .line 542
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadCallLogs(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$702(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 545
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getSortedCallLogs(Ljava/util/HashMap;Z)[Lcom/android/htcdialer/search/SearchableCallLog;

    move-result-object v1

    .line 546
    .local v1, callLogs1:[Lcom/android/htcdialer/search/SearchableCallLog;
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getSortedCallLogs(Ljava/util/HashMap;Z)[Lcom/android/htcdialer/search/SearchableCallLog;

    move-result-object v2

    .line 547
    .local v2, callLogs2:[Lcom/android/htcdialer/search/SearchableCallLog;
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$900()[Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v3

    sget-object v4, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/htcdialer/DialerService$WorkingHandler;->combineSortIndex([Lcom/android/htcdialer/search/SearchableCallLog;[Lcom/android/htcdialer/search/SearchableCallLog;[Lcom/android/htcdialer/search/SearchableContact;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 550
    iget-object v0, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    #getter for: Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 551
    :try_start_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerService;->mCallLogsMap:Ljava/util/HashMap;

    .line 552
    sget-object v0, Lcom/android/htcdialer/DialerService;->mReference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 553
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 554
    sget-object v0, Lcom/android/htcdialer/DialerService;->mReference:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 556
    :cond_0
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerService;->mRefFilter:[Lcom/android/htcdialer/search/SearchableObject;

    .line 557
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v0

    sput v0, Lcom/android/htcdialer/DialerService;->mRefFilterCount:I

    .line 558
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->notifyCacheUpdate()V

    .line 561
    return-void

    .line 558
    .end local v6           #i:I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateContacts()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 598
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getUpdateInfo()[[J

    move-result-object v8

    .line 600
    .local v8, updateInfo:[[J
    if-nez v8, :cond_0

    .line 663
    :goto_0
    return-void

    .line 604
    :cond_0
    invoke-direct {p0, v8}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getUpdateIdString([[J)Ljava/lang/String;

    move-result-object v7

    .line 607
    .local v7, idString:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    #getter for: Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 608
    :try_start_0
    sget-object v0, Lcom/android/htcdialer/DialerService;->mCallLogsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$702(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 609
    sget-object v0, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$002(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 610
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1602(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 611
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v0, v8

    if-ge v6, v0, :cond_2

    .line 615
    aget-object v0, v8, v6

    aget-wide v3, v0, v11

    const-wide/16 v9, 0x0

    cmp-long v0, v3, v9

    if-lez v0, :cond_1

    .line 616
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    aget-object v3, v8, v6

    aget-wide v3, v3, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    iget-object v0, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1600()Ljava/util/HashMap;

    move-result-object v3

    aget-object v4, v8, v6

    aget-wide v4, v4, v11

    #calls: Lcom/android/htcdialer/DialerService;->deletePhonesBuf(Ljava/util/HashMap;J)Ljava/util/HashMap;
    invoke-static {v0, v3, v4, v5}, Lcom/android/htcdialer/DialerService;->access$1700(Lcom/android/htcdialer/DialerService;Ljava/util/HashMap;J)Ljava/util/HashMap;

    .line 618
    iget-object v0, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1800()Ljava/util/HashMap;

    move-result-object v3

    aget-object v4, v8, v6

    aget-wide v4, v4, v11

    #calls: Lcom/android/htcdialer/DialerService;->deleteEmailsBuf(Ljava/util/HashMap;J)Ljava/util/HashMap;
    invoke-static {v0, v3, v4, v5}, Lcom/android/htcdialer/DialerService;->access$1900(Lcom/android/htcdialer/DialerService;Ljava/util/HashMap;J)Ljava/util/HashMap;

    .line 614
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 611
    .end local v6           #i:I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 622
    .restart local v6       #i:I
    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 623
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadContacts(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$002(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 626
    :cond_3
    iget-object v0, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1600()Ljava/util/HashMap;

    move-result-object v3

    #calls: Lcom/android/htcdialer/DialerService;->loadBlackNumber(Ljava/util/HashMap;)Ljava/util/HashMap;
    invoke-static {v0, v3}, Lcom/android/htcdialer/DialerService;->access$2000(Lcom/android/htcdialer/DialerService;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1602(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 628
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 629
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1600()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {p0, v0, v3, v7}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadPhones(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 633
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 634
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1800()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {p0, v0, v3, v7}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadEmails(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 638
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadCallLogs(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$702(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 641
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0, v11}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getSortedCallLogs(Ljava/util/HashMap;Z)[Lcom/android/htcdialer/search/SearchableCallLog;

    move-result-object v1

    .line 642
    .local v1, callLogs1:[Lcom/android/htcdialer/search/SearchableCallLog;
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0, v12}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getSortedCallLogs(Ljava/util/HashMap;Z)[Lcom/android/htcdialer/search/SearchableCallLog;

    move-result-object v2

    .line 643
    .local v2, callLogs2:[Lcom/android/htcdialer/search/SearchableCallLog;
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->getSortedContacts(Ljava/util/HashMap;)[Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$902([Lcom/android/htcdialer/search/SearchableContact;)[Lcom/android/htcdialer/search/SearchableContact;

    .line 644
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$900()[Lcom/android/htcdialer/search/SearchableContact;

    move-result-object v3

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1600()Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/htcdialer/DialerService$WorkingHandler;->combineSortIndex([Lcom/android/htcdialer/search/SearchableCallLog;[Lcom/android/htcdialer/search/SearchableCallLog;[Lcom/android/htcdialer/search/SearchableContact;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 647
    iget-object v0, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    #getter for: Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 648
    :try_start_2
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1600()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1002(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 649
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1800()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$2102(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 650
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$700()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerService;->mCallLogsMap:Ljava/util/HashMap;

    .line 651
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    .line 652
    sget-object v0, Lcom/android/htcdialer/DialerService;->mReference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 653
    const/4 v6, 0x0

    :goto_2
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1200()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 654
    sget-object v0, Lcom/android/htcdialer/DialerService;->mReference:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1300()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 656
    :cond_6
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1400()[Lcom/android/htcdialer/search/SearchableObject;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerService;->mRefFilter:[Lcom/android/htcdialer/search/SearchableObject;

    .line 657
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$1500()I

    move-result v0

    sput v0, Lcom/android/htcdialer/DialerService;->mRefFilterCount:I

    .line 658
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 660
    sput-boolean v12, Lcom/android/htcdialer/DialerService;->isPreloadDone:Z

    .line 662
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->notifyCacheUpdate()V

    goto/16 :goto_0

    .line 658
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private updateNamePattern()V
    .locals 2

    .prologue
    .line 1156
    sget-boolean v0, Lcom/android/htcdialer/DialerService;->isPreloadDone:Z

    if-nez v0, :cond_0

    .line 1166
    :goto_0
    return-void

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    #getter for: Lcom/android/htcdialer/DialerService;->mCacheUpdateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$1100(Lcom/android/htcdialer/DialerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1161
    :try_start_0
    sget-object v0, Lcom/android/htcdialer/DialerService;->mContactsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->access$002(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 1162
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$000()Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/htcdialer/DialerService$WorkingHandler;->loadNamePattern(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1165
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->notifyCacheUpdate()V

    goto :goto_0

    .line 1162
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 394
    iget v1, p1, Landroid/os/Message;->what:I

    .line 399
    .local v1, msgType:I
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$100()Landroid/content/ContentResolver;

    move-result-object v3

    if-nez v3, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 408
    :pswitch_0
    sput-boolean v5, Lcom/android/htcdialer/DialerService;->isPreloadDone:Z

    .line 409
    iget-object v3, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-virtual {v3}, Lcom/android/htcdialer/DialerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/htcdialer/DialerService;->access$102(Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 410
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$100()Landroid/content/ContentResolver;

    move-result-object v3

    if-nez v3, :cond_2

    .line 411
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v3

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$300()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 413
    :cond_2
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v3

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$400()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 419
    :pswitch_1
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->initDialerCache()V

    goto :goto_0

    .line 424
    :pswitch_2
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->initDialerCache()V

    .line 428
    iget-object v3, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 430
    .local v2, sharedPreference:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 431
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 432
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "corrupt_count"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 433
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 439
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #sharedPreference:Landroid/content/SharedPreferences;
    :pswitch_3
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->updateCallLog()V

    goto :goto_0

    .line 442
    :pswitch_4
    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_3

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$500()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {}, Lcom/android/htcdialer/DialerService;->access$200()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 444
    :cond_3
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->updateContacts()V

    goto/16 :goto_0

    .line 448
    :pswitch_5
    iget-object v3, p0, Lcom/android/htcdialer/DialerService$WorkingHandler;->this$0:Lcom/android/htcdialer/DialerService;

    #calls: Lcom/android/htcdialer/DialerService;->preparePhotoUtility()V
    invoke-static {v3}, Lcom/android/htcdialer/DialerService;->access$600(Lcom/android/htcdialer/DialerService;)V

    goto/16 :goto_0

    .line 451
    :pswitch_6
    invoke-direct {p0}, Lcom/android/htcdialer/DialerService$WorkingHandler;->updateNamePattern()V

    goto/16 :goto_0

    .line 454
    :pswitch_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/htcdialer/search/SearchableCallLog;

    invoke-direct {p0, v3}, Lcom/android/htcdialer/DialerService$WorkingHandler;->insertCallLog(Lcom/android/htcdialer/search/SearchableCallLog;)V

    goto/16 :goto_0

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
