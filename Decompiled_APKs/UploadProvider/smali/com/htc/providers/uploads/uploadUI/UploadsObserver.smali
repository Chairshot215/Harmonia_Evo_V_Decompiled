.class public Lcom/htc/providers/uploads/uploadUI/UploadsObserver;
.super Landroid/app/Activity;
.source "UploadsObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/providers/uploads/uploadUI/UploadsObserver$StatusReceiver;,
        Lcom/htc/providers/uploads/uploadUI/UploadsObserver$TimeStatus;
    }
.end annotation


# static fields
.field private static final ADD_VIEW:I = 0x3e9

.field public static CountTotalSize:I = 0x0

.field public static final MENU_CANCEL_ALL:I = 0x1

.field public static final MENU_CANCEL_ALL_TITLE:I = 0x7f04000c

.field public static final MENU_TRY_AGAIN:I = 0x2

.field public static final MENU_TRY_AGAIN_TITLE:I = 0x7f04000a

.field static batchUploadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static fileUploadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field FileTimeStamp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/providers/uploads/uploadUI/UploadsObserver$TimeStatus;",
            ">;"
        }
    .end annotation
.end field

.field private LOG_TAG:Ljava/lang/String;

.field private batchId:I

.field mFilter:Landroid/content/IntentFilter;

.field mService:Ljava/lang/String;

.field public mutex:Ljava/lang/Object;

.field sReceiver:Lcom/htc/providers/uploads/uploadUI/UploadsObserver$StatusReceiver;

.field private statusHelper:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

.field uDialog:Lcom/htc/providers/uploads/uploadUI/UploadDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->batchUploadList:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->fileUploadList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const-string v0, "UploadsObserver"

    iput-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->LOG_TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->mutex:Ljava/lang/Object;

    .line 297
    return-void
.end method

.method static synthetic access$000(Lcom/htc/providers/uploads/uploadUI/UploadsObserver;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/providers/uploads/uploadUI/UploadsObserver;)Lcom/htc/providers/uploads/uploadUI/StatusHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->statusHelper:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    return-object v0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, mDateFormat:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const-string v0, "EE, MMM dd, yyyy"

    .line 139
    invoke-virtual {p0}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 142
    :cond_0
    return-object v0
.end method

.method private getPhtoDetail()V
    .locals 11

    .prologue
    .line 103
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 104
    .local v0, batch:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    iget v6, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->batchId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 105
    iget v6, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->batchId:I

    invoke-static {p0, v6}, Lcom/htc/providers/uploads/UploadHelper;->queryBatchUploadStatus(Landroid/content/Context;I)Lcom/htc/providers/uploads/UploadItem;

    move-result-object v1

    .line 108
    .local v1, batchItem:Lcom/htc/providers/uploads/UploadItem;
    if-eqz v1, :cond_2

    .line 109
    invoke-interface {v1}, Lcom/htc/providers/uploads/UploadItem;->getServiceProvider()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->mService:Ljava/lang/String;

    .line 110
    new-instance v6, Lcom/htc/providers/uploads/uploadUI/UploadDialog;

    invoke-direct {v6, p0}, Lcom/htc/providers/uploads/uploadUI/UploadDialog;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->uDialog:Lcom/htc/providers/uploads/uploadUI/UploadDialog;

    .line 111
    invoke-interface {v1}, Lcom/htc/providers/uploads/UploadItem;->getInsertDateTime()Ljava/util/Date;

    move-result-object v6

    invoke-interface {v1}, Lcom/htc/providers/uploads/UploadItem;->getTotalNum()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->initView(Ljava/util/Date;I)V

    .line 113
    iget v6, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->batchId:I

    invoke-static {p0, v6}, Lcom/htc/providers/uploads/UploadHelper;->queryUploadStatusByBatchId(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v3

    .line 115
    .local v3, fileMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/providers/uploads/UploadItem;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 116
    .local v4, listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    sput v6, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->CountTotalSize:I

    .line 117
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 118
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/providers/uploads/UploadItem;

    .line 119
    .local v2, fileItem:Lcom/htc/providers/uploads/UploadItem;
    new-instance v5, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$TimeStatus;

    invoke-interface {v2}, Lcom/htc/providers/uploads/UploadItem;->getStatusChangeTime()J

    move-result-wide v6

    invoke-interface {v2}, Lcom/htc/providers/uploads/UploadItem;->getStatus()I

    move-result v8

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$TimeStatus;-><init>(Lcom/htc/providers/uploads/uploadUI/UploadsObserver;JI)V

    .line 121
    .local v5, tstatus:Lcom/htc/providers/uploads/uploadUI/UploadsObserver$TimeStatus;
    iget-object v6, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->FileTimeStamp:Ljava/util/HashMap;

    invoke-interface {v2}, Lcom/htc/providers/uploads/UploadItem;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 122
    iget-object v6, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->FileTimeStamp:Ljava/util/HashMap;

    invoke-interface {v2}, Lcom/htc/providers/uploads/UploadItem;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v6, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->statusHelper:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    invoke-virtual {v6, v2}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->addNewItem(Lcom/htc/providers/uploads/UploadItem;)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-interface {v2}, Lcom/htc/providers/uploads/UploadItem;->getStatusChangeTime()J

    move-result-wide v7

    iget-object v6, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->FileTimeStamp:Ljava/util/HashMap;

    invoke-interface {v2}, Lcom/htc/providers/uploads/UploadItem;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$TimeStatus;

    iget-wide v9, v6, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$TimeStatus;->time:J

    cmp-long v6, v7, v9

    if-lez v6, :cond_0

    .line 126
    iget-object v6, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->FileTimeStamp:Ljava/util/HashMap;

    invoke-interface {v2}, Lcom/htc/providers/uploads/UploadItem;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v6, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->statusHelper:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    invoke-virtual {v6, v2}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->addNewItem(Lcom/htc/providers/uploads/UploadItem;)V

    goto :goto_0

    .line 132
    .end local v2           #fileItem:Lcom/htc/providers/uploads/UploadItem;
    .end local v3           #fileMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/htc/providers/uploads/UploadItem;>;"
    .end local v4           #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v5           #tstatus:Lcom/htc/providers/uploads/uploadUI/UploadsObserver$TimeStatus;
    :cond_2
    return-void
.end method

.method private initView(Ljava/util/Date;I)V
    .locals 12
    .parameter "date"
    .parameter "total"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 145
    iget-object v3, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->mService:Ljava/lang/String;

    .line 146
    .local v3, serviceName:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->mService:Ljava/lang/String;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, serviceTokens:[Ljava/lang/String;
    array-length v7, v4

    if-lez v7, :cond_0

    .line 149
    aget-object v3, v4, v10

    .line 151
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f040017

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v3, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, serverTitle:Ljava/lang/String;
    const v7, 0x7f080017

    invoke-virtual {p0, v7}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 154
    const v7, 0x7f080018

    invoke-virtual {p0, v7}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 173
    .local v0, longDate:J
    invoke-direct {p0}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->getDateFormat()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, uploadDate:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0, v1, v11}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, uploadTime:Ljava/lang/String;
    const v7, 0x7f080019

    invoke-virtual {p0, v7}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    const v7, 0x7f08001a

    invoke-virtual {p0, v7}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method

.method private updateUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->statusHelper:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iput-boolean v2, v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->complete:Z

    .line 95
    invoke-virtual {p0}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.htc.providers.uploads.intent_batch_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->batchId:I

    .line 96
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get batchId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->batchId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->statusHelper:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget v1, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->batchId:I

    iput v1, v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->batchId:I

    .line 98
    invoke-direct {p0}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->getPhtoDetail()V

    .line 99
    return-void
.end method


# virtual methods
.method public ResumeUpload()V
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->batchUploadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 242
    sget-object v0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->batchUploadList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/htc/providers/uploads/UploadHelper;->resumeBatchUpload(Landroid/content/Context;Ljava/util/List;)Z

    .line 243
    :cond_0
    sget-object v0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->fileUploadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 244
    sget-object v0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->fileUploadList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/htc/providers/uploads/UploadHelper;->resumeFileUpload(Landroid/content/Context;Ljava/util/List;)Z

    .line 246
    :cond_1
    sget-object v0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->batchUploadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 247
    sget-object v0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->fileUploadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 249
    return-void
.end method

.method public getStatus(I)I
    .locals 2
    .parameter "status"

    .prologue
    const/16 v0, 0xc8

    .line 269
    invoke-static {p1}, Lcom/htc/opensense/upload/Uploads;->isStatusRunning(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    const/16 p1, 0xc0

    .line 279
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 271
    .restart local p1
    :cond_1
    invoke-static {p1}, Lcom/htc/opensense/upload/Uploads;->isStatusPending(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/htc/opensense/upload/Uploads;->isStatusSuspended(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    :cond_2
    const/16 p1, 0xbe

    goto :goto_0

    .line 274
    :cond_3
    invoke-static {p1}, Lcom/htc/opensense/upload/Uploads;->isStatusError(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 275
    const/16 p1, 0x1eb

    goto :goto_0

    .line 276
    :cond_4
    if-ne p1, v0, :cond_0

    move p1, v0

    .line 277
    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 254
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->statusHelper:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget-object v0, v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->setContentView(Landroid/view/View;)V

    .line 255
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    new-instance v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    invoke-direct {v0, p0}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->statusHelper:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->FileTimeStamp:Ljava/util/HashMap;

    .line 82
    new-instance v0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$StatusReceiver;

    invoke-direct {v0, p0}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$StatusReceiver;-><init>(Lcom/htc/providers/uploads/uploadUI/UploadsObserver;)V

    iput-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->sReceiver:Lcom/htc/providers/uploads/uploadUI/UploadsObserver$StatusReceiver;

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->mFilter:Landroid/content/IntentFilter;

    .line 84
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.providers.uploads.INTENT_STATUS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 86
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->statusHelper:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget-object v0, v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->setContentView(Landroid/view/View;)V

    .line 88
    invoke-virtual {p0}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.htc.providers.uploads.intent_batch_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->updateUI()V

    .line 91
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 294
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 295
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v0, bIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v1, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->batchId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 198
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 189
    :pswitch_0
    iget v1, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->batchId:I

    invoke-static {p0, v1}, Lcom/htc/providers/uploads/UploadHelper;->clearBatchUpload(Landroid/content/Context;I)V

    .line 190
    iget-object v1, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "cancel all"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->statusHelper:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget v2, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->batchId:I

    invoke-virtual {v1, v2}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->cancelStatus(I)V

    goto :goto_0

    .line 194
    :pswitch_1
    iget-object v1, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bIdList size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {p0, v0}, Lcom/htc/providers/uploads/UploadHelper;->resumeBatchUpload(Landroid/content/Context;Ljava/util/List;)Z

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 217
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0, p1}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->setIntent(Landroid/content/Intent;)V

    .line 223
    iget-object v1, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->statusHelper:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    invoke-virtual {v0}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->clearAll()V

    .line 225
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->FileTimeStamp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 226
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {p0}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.htc.providers.uploads.intent_batch_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->updateUI()V

    .line 230
    :cond_0
    return-void

    .line 226
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->sReceiver:Lcom/htc/providers/uploads/uploadUI/UploadsObserver$StatusReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 285
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->statusHelper:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget-object v0, v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->showingDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->statusHelper:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    iget-object v0, v0, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->showingDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 289
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 290
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 204
    const v0, 0x7f04000c

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 207
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->statusHelper:Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    invoke-virtual {v0}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->showTryAgain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x2

    const v1, 0x7f04000a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020001

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 210
    :cond_0
    return v3
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 235
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->sReceiver:Lcom/htc/providers/uploads/uploadUI/UploadsObserver$StatusReceiver;

    iget-object v1, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->ResumeUpload()V

    .line 238
    return-void
.end method
