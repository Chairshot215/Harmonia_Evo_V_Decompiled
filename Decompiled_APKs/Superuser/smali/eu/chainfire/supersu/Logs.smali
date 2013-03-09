.class public Leu/chainfire/supersu/Logs;
.super Ljava/lang/Object;


# static fields
.field public static a:Leu/chainfire/supersu/Logs;


# instance fields
.field public b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/supersu/Logs;->a:Leu/chainfire/supersu/Logs;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 20

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-wide/16 v1, 0x0

    :try_start_0
    const-string v4, "config_%s_logage"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "default"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x18

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    move-wide v8, v1

    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    :try_start_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/eu.chainfire.supersu/logs/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v16

    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v1, 0x0

    move v10, v1

    :goto_1
    move/from16 v0, v17

    if-lt v10, v0, :cond_2

    :cond_0
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v2}, Leu/chainfire/supersu/SuperUser;->a(Ljava/util/List;)Ljava/util/List;

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    new-instance v2, Leu/chainfire/supersu/Logs$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Leu/chainfire/supersu/Logs$1;-><init>(Leu/chainfire/supersu/Logs;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_3
    return-void

    :catch_0
    move-exception v3

    move-wide v8, v1

    goto :goto_0

    :cond_2
    aget-object v18, v16, v10
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v19, Leu/chainfire/supersu/Logs$Log;

    invoke-direct/range {v19 .. v20}, Leu/chainfire/supersu/Logs$Log;-><init>(Leu/chainfire/supersu/Logs;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Leu/chainfire/supersu/Logs$Log;->a:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Leu/chainfire/supersu/Logs$Log;->b:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v1, v0, Leu/chainfire/supersu/Logs$Log;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    iput v1, v0, Leu/chainfire/supersu/Logs$Log;->c:I

    move-object/from16 v0, v19

    iget-object v1, v0, Leu/chainfire/supersu/Logs$Log;->a:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    iput v1, v0, Leu/chainfire/supersu/Logs$Log;->d:I

    move-object/from16 v0, v19

    iget-object v1, v0, Leu/chainfire/supersu/Logs$Log;->a:Ljava/lang/String;

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    iput v1, v0, Leu/chainfire/supersu/Logs$Log;->e:I

    move-object/from16 v0, v19

    iget-object v1, v0, Leu/chainfire/supersu/Logs$Log;->a:Ljava/lang/String;

    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    iput v1, v0, Leu/chainfire/supersu/Logs$Log;->f:I

    move-object/from16 v0, v19

    iget-object v1, v0, Leu/chainfire/supersu/Logs$Log;->a:Ljava/lang/String;

    const/16 v2, 0xa

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    iput v1, v0, Leu/chainfire/supersu/Logs$Log;->g:I

    move-object/from16 v0, v19

    iget-object v1, v0, Leu/chainfire/supersu/Logs$Log;->a:Ljava/lang/String;

    const/16 v2, 0xc

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    iput v1, v0, Leu/chainfire/supersu/Logs$Log;->h:I

    move-object/from16 v0, v19

    iget-object v1, v0, Leu/chainfire/supersu/Logs$Log;->a:Ljava/lang/String;

    const/16 v2, 0xe

    const/16 v3, 0x12

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    iput v1, v0, Leu/chainfire/supersu/Logs$Log;->i:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Leu/chainfire/supersu/Logs$Log;->k:Ljava/util/Calendar;

    move-object/from16 v0, v19

    iget-object v1, v0, Leu/chainfire/supersu/Logs$Log;->k:Ljava/util/Calendar;

    move-object/from16 v0, v19

    iget v2, v0, Leu/chainfire/supersu/Logs$Log;->c:I

    move-object/from16 v0, v19

    iget v3, v0, Leu/chainfire/supersu/Logs$Log;->d:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v19

    iget v4, v0, Leu/chainfire/supersu/Logs$Log;->e:I

    move-object/from16 v0, v19

    iget v5, v0, Leu/chainfire/supersu/Logs$Log;->f:I

    move-object/from16 v0, v19

    iget v6, v0, Leu/chainfire/supersu/Logs$Log;->g:I

    move-object/from16 v0, v19

    iget v7, v0, Leu/chainfire/supersu/Logs$Log;->h:I

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    move-object/from16 v0, v19

    iput v1, v0, Leu/chainfire/supersu/Logs$Log;->j:I

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_3

    move-object/from16 v0, v19

    iget-object v2, v0, Leu/chainfire/supersu/Logs$Log;->k:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long v4, v12, v8

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v1, :cond_6

    move-object/from16 v0, v19

    iget-object v1, v0, Leu/chainfire/supersu/Logs$Log;->a:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_6

    move-object/from16 v0, v19

    iget-object v2, v0, Leu/chainfire/supersu/Logs$Log;->a:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GRANTED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, v19

    iput v2, v0, Leu/chainfire/supersu/Logs$Log;->l:I

    :cond_4
    :goto_4
    move-object/from16 v0, v19

    iput-object v1, v0, Leu/chainfire/supersu/Logs$Log;->m:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v1, v0, Leu/chainfire/supersu/Logs$Log;->m:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, v19

    iget-object v1, v0, Leu/chainfire/supersu/Logs$Log;->m:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v1, v0, Leu/chainfire/supersu/Logs$Log;->n:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v1, v0, Leu/chainfire/supersu/Logs$Log;->n:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v1, v0, Leu/chainfire/supersu/Logs$Log;->m:Ljava/lang/String;

    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_6
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_1

    :cond_7
    const-string v2, "DENIED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput v2, v0, Leu/chainfire/supersu/Logs$Log;->l:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v1

    move-object/from16 v0, p0

    iget-object v1, v0, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const-string v1, "rm /data/data/eu.chainfire.supersu/logs/*"

    invoke-static {v1}, Leu/chainfire/supersu/SuperUser;->b(Ljava/lang/String;)Ljava/util/List;

    goto/16 :goto_3

    :cond_8
    :try_start_4
    move-object/from16 v0, v19

    iget-object v1, v0, Leu/chainfire/supersu/Logs$Log;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object/from16 v0, v19

    iget-object v2, v0, Leu/chainfire/supersu/Logs$Log;->m:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v2, v0, Leu/chainfire/supersu/Logs$Log;->n:Ljava/lang/String;

    invoke-virtual {v1, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v1, v0, Leu/chainfire/supersu/Logs$Log;->m:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v1, v0, Leu/chainfire/supersu/Logs$Log;->n:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v2, v0, Leu/chainfire/supersu/Logs$Log;->m:Ljava/lang/String;

    invoke-virtual {v15, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_5

    :cond_9
    :try_start_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rm \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2
.end method
