.class synthetic Lcom/google/android/finsky/download/DownloadQueueImpl$8;
.super Ljava/lang/Object;
.source "DownloadQueueImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/download/DownloadQueueImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$finsky$download$Download$DownloadState:[I

.field static final synthetic $SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 399
    invoke-static {}, Lcom/google/android/finsky/download/Download$DownloadState;->values()[Lcom/google/android/finsky/download/Download$DownloadState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->$SwitchMap$com$google$android$finsky$download$Download$DownloadState:[I

    :try_start_0
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->$SwitchMap$com$google$android$finsky$download$Download$DownloadState:[I

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->DOWNLOADING:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/Download$DownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->$SwitchMap$com$google$android$finsky$download$Download$DownloadState:[I

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->CANCELLED:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/Download$DownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->$SwitchMap$com$google$android$finsky$download$Download$DownloadState:[I

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->ERROR:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/Download$DownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->$SwitchMap$com$google$android$finsky$download$Download$DownloadState:[I

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->SUCCESS:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/Download$DownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->$SwitchMap$com$google$android$finsky$download$Download$DownloadState:[I

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->QUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/Download$DownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->$SwitchMap$com$google$android$finsky$download$Download$DownloadState:[I

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->UNQUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/Download$DownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    .line 209
    :goto_5
    invoke-static {}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->values()[Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->$SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I

    :try_start_6
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->$SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I

    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->NOTIFICATION_CLICKED:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->$SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I

    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->COMPLETE:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    :try_start_8
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->$SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I

    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->PROGRESS:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->$SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I

    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->CANCEL:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->$SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I

    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ERROR:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->$SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I

    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->START:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {v1}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    return-void

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    .line 399
    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    goto :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_1

    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method
