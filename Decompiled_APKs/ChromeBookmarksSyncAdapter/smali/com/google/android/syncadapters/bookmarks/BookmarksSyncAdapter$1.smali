.class synthetic Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;
.super Ljava/lang/Object;
.source "BookmarksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$syncadapters$bookmarks$BookmarksSyncAdapter$Reader$ServerEntryType:[I

.field static final synthetic $SwitchMap$com$google$android$syncadapters$bookmarks$BookmarksSyncAdapter$ThreadStatusReporter$Status:[I

.field static final synthetic $SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$ClientToServerResponse$ErrorType:[I

.field static final synthetic $SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$CommitResponse$ResponseType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1996
    invoke-static {}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;->values()[Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$android$syncadapters$bookmarks$BookmarksSyncAdapter$Reader$ServerEntryType:[I

    :try_start_0
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$android$syncadapters$bookmarks$BookmarksSyncAdapter$Reader$ServerEntryType:[I

    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;->MATCH_BY_SERVER_UNIQUE_TAG:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;

    invoke-virtual {v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_15

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$android$syncadapters$bookmarks$BookmarksSyncAdapter$Reader$ServerEntryType:[I

    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;->MATCH_BY_CLIENT_UNIQUE_TAG:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;

    invoke-virtual {v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_14

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$android$syncadapters$bookmarks$BookmarksSyncAdapter$Reader$ServerEntryType:[I

    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;->MATCH_BY_IDS:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;

    invoke-virtual {v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$Reader$ServerEntryType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_13

    .line 1334
    :goto_2
    invoke-static {}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->values()[Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$android$syncadapters$bookmarks$BookmarksSyncAdapter$ThreadStatusReporter$Status:[I

    :try_start_3
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$android$syncadapters$bookmarks$BookmarksSyncAdapter$ThreadStatusReporter$Status:[I

    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PARSE:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    invoke-virtual {v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_12

    :goto_3
    :try_start_4
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$android$syncadapters$bookmarks$BookmarksSyncAdapter$ThreadStatusReporter$Status:[I

    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_DB:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    invoke-virtual {v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_11

    :goto_4
    :try_start_5
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$android$syncadapters$bookmarks$BookmarksSyncAdapter$ThreadStatusReporter$Status:[I

    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PROTOCOL_HOSED:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    invoke-virtual {v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_10

    :goto_5
    :try_start_6
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$android$syncadapters$bookmarks$BookmarksSyncAdapter$ThreadStatusReporter$Status:[I

    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_NETWORK:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    invoke-virtual {v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_f

    :goto_6
    :try_start_7
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$android$syncadapters$bookmarks$BookmarksSyncAdapter$ThreadStatusReporter$Status:[I

    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_PROTOCOL_RECOVERABLE:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    invoke-virtual {v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_e

    :goto_7
    :try_start_8
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$android$syncadapters$bookmarks$BookmarksSyncAdapter$ThreadStatusReporter$Status:[I

    sget-object v1, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ERROR_AUTH:Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;

    invoke-virtual {v1}, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$ThreadStatusReporter$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_d

    .line 939
    :goto_8
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->values()[Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$ClientToServerResponse$ErrorType:[I

    :try_start_9
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$ClientToServerResponse$ErrorType:[I

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->SUCCESS:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_c

    :goto_9
    :try_start_a
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$ClientToServerResponse$ErrorType:[I

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->AUTH_EXPIRED:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_b

    :goto_a
    :try_start_b
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$ClientToServerResponse$ErrorType:[I

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->AUTH_INVALID:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_a

    :goto_b
    :try_start_c
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$ClientToServerResponse$ErrorType:[I

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->ACCESS_DENIED:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_9

    :goto_c
    :try_start_d
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$ClientToServerResponse$ErrorType:[I

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->NOT_MY_BIRTHDAY:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_8

    :goto_d
    :try_start_e
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$ClientToServerResponse$ErrorType:[I

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->THROTTLED:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_7

    :goto_e
    :try_start_f
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$ClientToServerResponse$ErrorType:[I

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->USER_NOT_ACTIVATED:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_6

    .line 750
    :goto_f
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->values()[Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$CommitResponse$ResponseType:[I

    :try_start_10
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$CommitResponse$ResponseType:[I

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->SUCCESS:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_5

    :goto_10
    :try_start_11
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$CommitResponse$ResponseType:[I

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->CONFLICT:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_4

    :goto_11
    :try_start_12
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$CommitResponse$ResponseType:[I

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->RETRY:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_3

    :goto_12
    :try_start_13
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$CommitResponse$ResponseType:[I

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->INVALID_MESSAGE:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_2

    :goto_13
    :try_start_14
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$CommitResponse$ResponseType:[I

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->OVER_QUOTA:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_1

    :goto_14
    :try_start_15
    sget-object v0, Lcom/google/android/syncadapters/bookmarks/BookmarksSyncAdapter$1;->$SwitchMap$com$google$personalization$chrome$cosmosync$server$syncproto$Sync$CommitResponse$ResponseType:[I

    sget-object v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->TRANSIENT_ERROR:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$ResponseType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_0

    :goto_15
    return-void

    :catch_0
    move-exception v0

    goto :goto_15

    :catch_1
    move-exception v0

    goto :goto_14

    :catch_2
    move-exception v0

    goto :goto_13

    :catch_3
    move-exception v0

    goto :goto_12

    :catch_4
    move-exception v0

    goto :goto_11

    :catch_5
    move-exception v0

    goto :goto_10

    .line 939
    :catch_6
    move-exception v0

    goto :goto_f

    :catch_7
    move-exception v0

    goto :goto_e

    :catch_8
    move-exception v0

    goto :goto_d

    :catch_9
    move-exception v0

    goto :goto_c

    :catch_a
    move-exception v0

    goto/16 :goto_b

    :catch_b
    move-exception v0

    goto/16 :goto_a

    :catch_c
    move-exception v0

    goto/16 :goto_9

    .line 1334
    :catch_d
    move-exception v0

    goto/16 :goto_8

    :catch_e
    move-exception v0

    goto/16 :goto_7

    :catch_f
    move-exception v0

    goto/16 :goto_6

    :catch_10
    move-exception v0

    goto/16 :goto_5

    :catch_11
    move-exception v0

    goto/16 :goto_4

    :catch_12
    move-exception v0

    goto/16 :goto_3

    .line 1996
    :catch_13
    move-exception v0

    goto/16 :goto_2

    :catch_14
    move-exception v0

    goto/16 :goto_1

    :catch_15
    move-exception v0

    goto/16 :goto_0
.end method
